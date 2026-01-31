#include "Obfuscation/Passes.h"
#include "Obfuscation/Utils.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <vector>

using namespace llvm;

namespace obfuscator {

// Create an opaque predicate that always evaluates to true: (x * (x + 1) % 2 == 0)
// This is mathematically always true since one of x or x+1 is always even
Value* createOpaquePredicate(IRBuilder<> &Builder, Module *M) {
    LLVMContext &Ctx = M->getContext();
    
    // Find or create a global variable "opaque_x" 
    GlobalVariable *GX = M->getGlobalVariable("opaque_x");
    if (!GX) {
        GX = new GlobalVariable(*M, Type::getInt32Ty(Ctx), false, 
            GlobalValue::PrivateLinkage, 
            ConstantInt::get(Type::getInt32Ty(Ctx), Utils::randomRange(1, 100)), 
            "opaque_x");
    }
    
    // Load x
    Value *X = Builder.CreateLoad(Type::getInt32Ty(Ctx), GX);
    
    // x + 1
    Value *XPlus1 = Builder.CreateAdd(X, ConstantInt::get(Type::getInt32Ty(Ctx), 1));
    
    // x * (x + 1)
    Value *Prod = Builder.CreateMul(X, XPlus1);
    
    // Prod % 2
    Value *Mod = Builder.CreateSRem(Prod, ConstantInt::get(Type::getInt32Ty(Ctx), 2));
    
    // Check == 0 (always true)
    return Builder.CreateICmpEQ(Mod, ConstantInt::get(Type::getInt32Ty(Ctx), 0));
}

// Find a valid split point in a basic block (after PHIs, allocas, etc.)
Instruction* findSplitPoint(BasicBlock *BB) {
    for (Instruction &I : *BB) {
        // Skip PHI nodes
        if (isa<PHINode>(&I)) continue;
        // Skip allocas (should stay at function entry)
        if (isa<AllocaInst>(&I)) continue;
        // Skip landing pads
        if (isa<LandingPadInst>(&I)) continue;
        // Don't split at terminator
        if (I.isTerminator()) return nullptr;
        // Found valid split point
        return &I;
    }
    return nullptr;
}

void addBogusFlow(BasicBlock *BB, Function &F, ObfuscationStats *Stats) {
    // Find valid split point
    Instruction *SplitPoint = findSplitPoint(BB);
    if (!SplitPoint) return;
    
    // Split the block at the split point
    BasicBlock *OriginalPart2 = BB->splitBasicBlock(SplitPoint, "real_path");
    
    // Create a bogus block with junk code
    BasicBlock *BogusBB = BasicBlock::Create(F.getContext(), "bogus_path", &F);
    
    // Add junk instructions to bogus block
    IRBuilder<> JunkBuilder(BogusBB);
    Value *X = ConstantInt::get(Type::getInt32Ty(F.getContext()), Utils::randomRange(1, 100));
    Value *Y = ConstantInt::get(Type::getInt32Ty(F.getContext()), Utils::randomRange(1, 100));
    JunkBuilder.CreateAdd(X, Y, "junk");
    JunkBuilder.CreateMul(X, Y, "junk2");
    // Bogus block jumps to real path (will never actually execute due to opaque predicate)
    JunkBuilder.CreateBr(OriginalPart2);
    
    // Remove the unconditional branch that splitBasicBlock created
    Instruction *Term = BB->getTerminator();
    Term->eraseFromParent();
    
    // Create opaque predicate and conditional branch
    IRBuilder<> Builder(BB);
    Value *Pred = createOpaquePredicate(Builder, F.getParent());
    
    // Opaque predicate is always true, so true branch goes to real code
    Builder.CreateCondBr(Pred, OriginalPart2, BogusBB);

    if (Stats) {
        Stats->BogusBlocks++;
        Stats->OpaquePredicates++;
    }
}

PreservedAnalyses BogusControlFlowPass::run(Module &M, ModuleAnalysisManager &AM) {
    if (!Options.EnableBcf) return PreservedAnalyses::all();

    bool Changed = false;
    
    for (Function &F : M) {
        if (F.isDeclaration()) continue;
        if (F.size() < 2) continue; // Skip trivial functions
        
        // Skip functions added by string encryption
        if (F.getName().starts_with("decrypt_")) continue;
        if (F.hasFnAttribute(Attribute::OptimizeNone)) continue;

        // Collect candidate blocks (exclude entry block!)
        std::vector<BasicBlock*> Candidates;
        BasicBlock *EntryBB = &F.getEntryBlock();
        
        for (BasicBlock &BB : F) {
            // Skip entry block - has allocas that shouldn't be split
            if (&BB == EntryBB) continue;
            // Skip exception handling blocks
            if (BB.isEHPad()) continue;
            // Skip blocks with their address taken
            if (BB.hasAddressTaken()) continue;
            // Skip very small blocks
            if (BB.size() < 3) continue;
            
            Candidates.push_back(&BB);
        }

        // Apply bogus control flow based on probability
        for (BasicBlock *BB : Candidates) {
            if (Utils::roll(Options.BcfProb)) {
                addBogusFlow(BB, F, Options.Stats);
                Changed = true;
            }
        }
    }

    return Changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
}

} // namespace obfuscator
