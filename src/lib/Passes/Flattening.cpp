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
        
         
        if (F.hasFnAttribute(Attribute::OptimizeNone)) continue;
        
         
        if (F.getName().starts_with("decrypt_")) continue;
        
         
        if (F.size() < 2) continue;

         
        std::vector<BasicBlock*> OriginalBBs;
        BasicBlock *EntryBB = &F.getEntryBlock();
        
        for (BasicBlock &BB : F) {
             
            if (&BB == EntryBB) continue;
            if (BB.isEHPad()) continue;
            if (BB.hasAddressTaken()) continue;
            OriginalBBs.push_back(&BB);
        }

        if (OriginalBBs.size() < 2) continue;

         
        std::vector<uint32_t> Keys;
        for (size_t i = 0; i < OriginalBBs.size(); ++i) {
            Keys.push_back(Utils::randomRange(1, 1000000));
        }

         
        Instruction *EntryTerm = EntryBB->getTerminator();
        BranchInst *EntryBI = dyn_cast<BranchInst>(EntryTerm);
        if (!EntryBI || !EntryBI->isUnconditional()) continue;
        
        BasicBlock *FirstSucc = EntryBI->getSuccessor(0);
        uint32_t StartKey = getKeyForBlock(FirstSucc, OriginalBBs, Keys);
        if (StartKey == 0) continue;  

         
        LLVMContext &Ctx = F.getContext();
        BasicBlock *DispatchBB = BasicBlock::Create(Ctx, "dispatch", &F);
        BasicBlock *DefaultBB = BasicBlock::Create(Ctx, "switch_default", &F);
        
         
        IRBuilder<> defaultBuilder(DefaultBB);
        if (F.getReturnType()->isVoidTy()) {
            defaultBuilder.CreateRetVoid();
        } else {
            defaultBuilder.CreateRet(Constant::getNullValue(F.getReturnType()));
        }

         
        IRBuilder<> entryBuilder(EntryBB->getFirstNonPHI());
        AllocaInst *StateVar = entryBuilder.CreateAlloca(
            Type::getInt32Ty(Ctx), nullptr, "switch_state");
        entryBuilder.CreateStore(
            ConstantInt::get(Type::getInt32Ty(Ctx), StartKey), StateVar);

         
        EntryBI->setSuccessor(0, DispatchBB);

         
        IRBuilder<> dispatchBuilder(DispatchBB);
        LoadInst *LoadState = dispatchBuilder.CreateLoad(
            Type::getInt32Ty(Ctx), StateVar, "state_val");
        SwitchInst *Switch = dispatchBuilder.CreateSwitch(
            LoadState, DefaultBB, OriginalBBs.size());

         
        for (size_t i = 0; i < OriginalBBs.size(); ++i) {
            Switch->addCase(
                ConstantInt::get(Type::getInt32Ty(Ctx), Keys[i]), 
                OriginalBBs[i]);
        }

         
        for (size_t i = 0; i < OriginalBBs.size(); ++i) {
            BasicBlock *BB = OriginalBBs[i];
            Instruction *Term = BB->getTerminator();
            
            if (!Term) continue;
            
             
            if (isa<ReturnInst>(Term)) {
                continue;
            }
            
            if (BranchInst *BI = dyn_cast<BranchInst>(Term)) {
                IRBuilder<> bbBuilder(Term);
                
                if (BI->isUnconditional()) {
                    BasicBlock *Succ = BI->getSuccessor(0);
                    uint32_t NextKey = getKeyForBlock(Succ, OriginalBBs, Keys);
                    
                    if (NextKey != 0) {
                         
                        bbBuilder.CreateStore(
                            ConstantInt::get(Type::getInt32Ty(Ctx), NextKey), 
                            StateVar);
                        bbBuilder.CreateBr(DispatchBB);
                        Term->eraseFromParent();
                    }
                     
                    
                } else {  
                    BasicBlock *TrueSucc = BI->getSuccessor(0);
                    BasicBlock *FalseSucc = BI->getSuccessor(1);
                    
                    uint32_t TrueKey = getKeyForBlock(TrueSucc, OriginalBBs, Keys);
                    uint32_t FalseKey = getKeyForBlock(FalseSucc, OriginalBBs, Keys);
                    
                     
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
                     
                }
            }
             
        }

        if (Options.Stats) Options.Stats->FlattenedFunctions++;
        Changed = true;
    }
    
    return Changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
}

}  
