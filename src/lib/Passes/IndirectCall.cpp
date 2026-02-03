#include "Obfuscation/Passes.h"
#include "Obfuscation/Utils.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include <vector>

using namespace llvm;

namespace obfuscator {

PreservedAnalyses IndirectCallPass::run(Module &M, ModuleAnalysisManager &AM) {
    if (!Options.EnableInd) return PreservedAnalyses::all();
    
    std::vector<CallInst*> Targets;
    
     
    for (Function &F : M) {
         
        if (F.getName().startswith("decrypt")) continue;
        
        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
                if (CallInst *CI = dyn_cast<CallInst>(&I)) {
                    Function *CalledF = CI->getCalledFunction();
                     
                     
                    if (CalledF && !CalledF->isIntrinsic()) {
                        Targets.push_back(CI);
                    }
                }
            }
        }
    }

    if (Targets.empty()) return PreservedAnalyses::all();

     
    for (CallInst *CI : Targets) {
        Function *CalledF = CI->getCalledFunction();
        IRBuilder<> builder(CI);
        
         
         
         
         
         
         
         
        
         
         
         
        
         
         
         
         
         
         
         
        
        uint64_t Key = Utils::randomRange(1000000, 9999999);
        
         
        Value *FuncInt = builder.CreatePtrToInt(CalledF, Type::getInt64Ty(M.getContext()));
        
         
         
         
        
         
         
         
         
         
        
        AllocaInst *PtrStorage = builder.CreateAlloca(CalledF->getType(), nullptr, "fn_ptr");
        builder.CreateStore(CalledF, PtrStorage);
        
         
        Value *LoadedPtr = builder.CreateLoad(CalledF->getType(), PtrStorage);
        
        CI->setCalledOperand(LoadedPtr);
        
        if (Options.Stats) Options.Stats->IndirectCalls++;
    }

    return PreservedAnalyses::none();
}

}  
