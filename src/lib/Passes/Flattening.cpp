#include "Obfuscation/Passes.h"
#include "Obfuscation/Utils.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Constants.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <vector>
#include <algorithm>
#include <map>

using namespace llvm;

namespace obfuscator {

// Find key for a basic block, returns 0 if not found
static uint32_t getKeyForBlock(BasicBlock *BB, 
                                const std::vector<BasicBlock*> &Blocks,
                                const std::vector<uint32_t> &Keys) {
    for (size_t i = 0; i < Blocks.size(); ++i) {
        if (Blocks[i] == BB) return Keys[i];
    }
    return 0;
}

PreservedAnalyses FlatteningPass::run(Module &M, ModuleAnalysisManager &AM) {
    if (!Options.EnableFla) return PreservedAnalyses::all();

    bool Changed = false;

    for (Function &F : M) {
        if (F.isDeclaration()) continue;
        
        // Skip functions with optnone attribute (e.g., our decrypt_strings function)
        if (F.hasFnAttribute(Attribute::OptimizeNone)) continue;
        
        // Skip functions added by string encryption
        if (F.getName().starts_with("decrypt_")) continue;
        
        // Skip very small functions (need at least entry + 1 block)
        if (F.size() < 2) continue;

        // 1. Collect all Basic Blocks (except entry)
        std::vector<BasicBlock*> OriginalBBs;
        BasicBlock *EntryBB = &F.getEntryBlock();
        
        for (BasicBlock &BB : F) {
            // Skip entry block, EH pads, and blocks with address taken
            if (&BB == EntryBB) continue;
            if (BB.isEHPad()) continue;
            if (BB.hasAddressTaken()) continue;
            OriginalBBs.push_back(&BB);
        }

        if (OriginalBBs.size() < 2) continue;

        // 2. Create random switch keys for each block
        std::vector<uint32_t> Keys;
        for (size_t i = 0; i < OriginalBBs.size(); ++i) {
            Keys.push_back(Utils::randomRange(1, 1000000));
        }

        // 3. Find first successor of entry (the initial target)
        Instruction *EntryTerm = EntryBB->getTerminator();
        BranchInst *EntryBI = dyn_cast<BranchInst>(EntryTerm);
        if (!EntryBI || !EntryBI->isUnconditional()) continue;
        
        BasicBlock *FirstSucc = EntryBI->getSuccessor(0);
        uint32_t StartKey = getKeyForBlock(FirstSucc, OriginalBBs, Keys);
        if (StartKey == 0) continue; // First successor not in our list

        // 4. Create dispatch and end blocks
        LLVMContext &Ctx = F.getContext();
        BasicBlock *DispatchBB = BasicBlock::Create(Ctx, "dispatch", &F);
        BasicBlock *DefaultBB = BasicBlock::Create(Ctx, "switch_default", &F);
        
        // Default block just returns or loops (should never be reached)
        IRBuilder<> defaultBuilder(DefaultBB);
        if (F.getReturnType()->isVoidTy()) {
            defaultBuilder.CreateRetVoid();
        } else {
            defaultBuilder.CreateRet(Constant::getNullValue(F.getReturnType()));
        }

        // 5. Create state variable in entry block
        IRBuilder<> entryBuilder(EntryBB->getFirstNonPHI());
        AllocaInst *StateVar = entryBuilder.CreateAlloca(
            Type::getInt32Ty(Ctx), nullptr, "switch_state");
        entryBuilder.CreateStore(
            ConstantInt::get(Type::getInt32Ty(Ctx), StartKey), StateVar);

        // 6. Modify entry terminator to jump to dispatch
        EntryBI->setSuccessor(0, DispatchBB);

        // 7. Create switch in dispatch block
        IRBuilder<> dispatchBuilder(DispatchBB);
        LoadInst *LoadState = dispatchBuilder.CreateLoad(
            Type::getInt32Ty(Ctx), StateVar, "state_val");
        SwitchInst *Switch = dispatchBuilder.CreateSwitch(
            LoadState, DefaultBB, OriginalBBs.size());

        // 8. Add cases for each block
        for (size_t i = 0; i < OriginalBBs.size(); ++i) {
            Switch->addCase(
                ConstantInt::get(Type::getInt32Ty(Ctx), Keys[i]), 
                OriginalBBs[i]);
        }

        // 9. Update terminators of each original block
        for (size_t i = 0; i < OriginalBBs.size(); ++i) {
            BasicBlock *BB = OriginalBBs[i];
            Instruction *Term = BB->getTerminator();
            
            if (!Term) continue;
            
            // Handle return instructions - leave them alone
            if (isa<ReturnInst>(Term)) {
                continue;
            }
            
            if (BranchInst *BI = dyn_cast<BranchInst>(Term)) {
                IRBuilder<> bbBuilder(Term);
                
                if (BI->isUnconditional()) {
                    BasicBlock *Succ = BI->getSuccessor(0);
                    uint32_t NextKey = getKeyForBlock(Succ, OriginalBBs, Keys);
                    
                    if (NextKey != 0) {
                        // Successor is in our flattened set
                        bbBuilder.CreateStore(
                            ConstantInt::get(Type::getInt32Ty(Ctx), NextKey), 
                            StateVar);
                        bbBuilder.CreateBr(DispatchBB);
                        Term->eraseFromParent();
                    }
                    // If successor not in set (e.g., it's an exit), leave branch alone
                    
                } else { // Conditional branch
                    BasicBlock *TrueSucc = BI->getSuccessor(0);
                    BasicBlock *FalseSucc = BI->getSuccessor(1);
                    
                    uint32_t TrueKey = getKeyForBlock(TrueSucc, OriginalBBs, Keys);
                    uint32_t FalseKey = getKeyForBlock(FalseSucc, OriginalBBs, Keys);
                    
                    // Only flatten if BOTH successors are in our set
                    if (TrueKey != 0 && FalseKey != 0) {
                        Value *Cond = BI->getCondition();
                        Value *Select = bbBuilder.CreateSelect(
                            Cond,
                            ConstantInt::get(Type::getInt32Ty(Ctx), TrueKey),
                            ConstantInt::get(Type::getInt32Ty(Ctx), FalseKey));
                        bbBuilder.CreateStore(Select, StateVar);
                        bbBuilder.CreateBr(DispatchBB);
                        Term->eraseFromParent();
                    }
                    // Otherwise leave conditional branch intact
                }
            }
            // For other terminators (invoke, switch, etc.), leave them alone
        }

        if (Options.Stats) Options.Stats->FlattenedFunctions++;
        Changed = true;
    }
    
    return Changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
}

} // namespace obfuscator
