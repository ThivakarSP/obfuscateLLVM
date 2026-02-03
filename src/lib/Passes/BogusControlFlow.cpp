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

 
 
Value* createOpaquePredicate(IRBuilder<> &Builder, Module *M) {
    LLVMContext &Ctx = M->getContext();
    
     
    GlobalVariable *GX = M->getGlobalVariable("opaque_x");
    if (!GX) {
        GX = new GlobalVariable(*M, Type::getInt32Ty(Ctx), false, 
            GlobalValue::PrivateLinkage, 
            ConstantInt::get(Type::getInt32Ty(Ctx), Utils::randomRange(1, 100)), 
            "opaque_x");
    }
    
     
    Value *X = Builder.CreateLoad(Type::getInt32Ty(Ctx), GX);
    
     
    Value *XPlus1 = Builder.CreateAdd(X, ConstantInt::get(Type::getInt32Ty(Ctx), 1));
    
     
    Value *Prod = Builder.CreateMul(X, XPlus1);
    
     
    Value *Mod = Builder.CreateSRem(Prod, ConstantInt::get(Type::getInt32Ty(Ctx), 2));
    
     
    return Builder.CreateICmpEQ(Mod, ConstantInt::get(Type::getInt32Ty(Ctx), 0));
}

 
Instruction* findSplitPoint(BasicBlock *BB) {
    for (Instruction &I : *BB) {
         
        if (isa<PHINode>(&I)) continue;
         
        if (isa<AllocaInst>(&I)) continue;
         
        if (isa<LandingPadInst>(&I)) continue;
         
        if (I.isTerminator()) return nullptr;
         
        return &I;
    }
    return nullptr;
}

void addBogusFlow(BasicBlock *BB, Function &F, ObfuscationStats *Stats) {
     
    Instruction *SplitPoint = findSplitPoint(BB);
    if (!SplitPoint) return;
    
     
    BasicBlock *OriginalPart2 = BB->splitBasicBlock(SplitPoint, "real_path");
    
     
    BasicBlock *BogusBB = BasicBlock::Create(F.getContext(), "bogus_path", &F);
    
     
    IRBuilder<> JunkBuilder(BogusBB);
    Value *X = ConstantInt::get(Type::getInt32Ty(F.getContext()), Utils::randomRange(1, 100));
    Value *Y = ConstantInt::get(Type::getInt32Ty(F.getContext()), Utils::randomRange(1, 100));
    JunkBuilder.CreateAdd(X, Y, "junk");
    JunkBuilder.CreateMul(X, Y, "junk2");
     
    JunkBuilder.CreateBr(OriginalPart2);
    
     
    Instruction *Term = BB->getTerminator();
    Term->eraseFromParent();
    
     
    IRBuilder<> Builder(BB);
    Value *Pred = createOpaquePredicate(Builder, F.getParent());
    
     
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
        if (F.size() < 2) continue;  
        
         
        if (F.getName().starts_with("decrypt_")) continue;
        if (F.hasFnAttribute(Attribute::OptimizeNone)) continue;

         
        std::vector<BasicBlock*> Candidates;
        BasicBlock *EntryBB = &F.getEntryBlock();
        
        for (BasicBlock &BB : F) {
             
            if (&BB == EntryBB) continue;
             
            if (BB.isEHPad()) continue;
             
            if (BB.hasAddressTaken()) continue;
             
            if (BB.size() < 3) continue;
            
            Candidates.push_back(&BB);
        }

         
        for (BasicBlock *BB : Candidates) {
            if (Utils::roll(Options.BcfProb)) {
                addBogusFlow(BB, F, Options.Stats);
                Changed = true;
            }
        }
    }

    return Changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
}

}  
