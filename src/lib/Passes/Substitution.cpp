#include "Obfuscation/Passes.h"
#include "Obfuscation/Utils.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"

using namespace llvm;

namespace obfuscator {

 
void substituteAdd(BinaryOperator *BO) {
    if (!BO) return;
    IRBuilder<> builder(BO);
    Value *op1 = BO->getOperand(0);
    Value *op2 = BO->getOperand(1);
    
     
    Value *negOp2 = builder.CreateNeg(op2);
    Value *result = builder.CreateSub(op1, negOp2);

    BO->replaceAllUsesWith(result);
}

void substituteSub(BinaryOperator *BO) {
    if (!BO) return;
    IRBuilder<> builder(BO);
    Value *op1 = BO->getOperand(0);
    Value *op2 = BO->getOperand(1);
    
     
    Value *negOp2 = builder.CreateNeg(op2);
    Value *result = builder.CreateAdd(op1, negOp2);

    BO->replaceAllUsesWith(result);
}

void substituteXor(BinaryOperator *BO) {
    if (!BO) return;
    IRBuilder<> builder(BO);
    Value *op1 = BO->getOperand(0);
    Value *op2 = BO->getOperand(1);

     
    Value *v1 = builder.CreateOr(op1, op2);
    Value *v2 = builder.CreateAnd(op1, op2);
    Value *result = builder.CreateSub(v1, v2);

    BO->replaceAllUsesWith(result);
}


PreservedAnalyses SubstitutionPass::run(Module &M, ModuleAnalysisManager &AM) {
    if (!Options.EnableSub) return PreservedAnalyses::all();

    bool Changed = false;

    for (Function &F : M) {
        if (F.isDeclaration()) continue;

         
        std::vector<BinaryOperator*> candidates;
        std::vector<Instruction*> toErase;

        for (auto &BB : F) {
            for (auto &I : BB) {
                if (auto *BO = dyn_cast<BinaryOperator>(&I)) {
                    if (BO->getOpcode() == Instruction::Add ||
                        BO->getOpcode() == Instruction::Sub ||
                        BO->getOpcode() == Instruction::Xor) {
                        candidates.push_back(BO);
                    }
                }
            }
        }

        for (auto *BO : candidates) {
             
            if (!Utils::roll(50)) continue;
            
            switch(BO->getOpcode()) {
                case Instruction::Add: substituteAdd(BO); break;
                case Instruction::Sub: substituteSub(BO); break;
                case Instruction::Xor: substituteXor(BO); break;
                default: continue;
            }
            toErase.push_back(BO);
            if (Options.Stats) Options.Stats->SubstitutedInstrs++;
            Changed = true;
        }

         
        for (auto *I : toErase) {
            I->eraseFromParent();
        }
    }

    return Changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
}

}  
