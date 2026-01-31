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
    
    // 1. Collect candidates
    for (Function &F : M) {
        // Don't obfuscate our own injected functions or decls unless careful
        if (F.getName().startswith("decrypt")) continue;
        
        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
                if (CallInst *CI = dyn_cast<CallInst>(&I)) {
                    Function *CalledF = CI->getCalledFunction();
                    // Only indirect direct calls to known functions
                    // Skip intrinsics
                    if (CalledF && !CalledF->isIntrinsic()) {
                        Targets.push_back(CI);
                    }
                }
            }
        }
    }

    if (Targets.empty()) return PreservedAnalyses::all();

    // 2. Transform
    for (CallInst *CI : Targets) {
        Function *CalledF = CI->getCalledFunction();
        IRBuilder<> builder(CI);
        
        // Strategy: 
        // 1. Store function pointer to a stack variable (alloca) or global?
        //    Simple: Cast Function* to generic pointer, store, load, cast back, call.
        //    Even better: Just BitCast to the right pointer type and call through a register.
        //    Code: %fn_ptr = bitcast @func to void()*
        //          call %fn_ptr()
        //    This is weak indirection (static analysis sees the constant).
        
        // Better:
        // Use a global array of function pointers (not implemented here for scope simplicity).
        // Or: Xor the pointer with a constant, then Xor back before call. 
        
        // Impl: Xor Obfusction of Pointer
        // %mask = 0x12345678
        // %enc_ptr = ptrtoint @func ^ %mask
        // ...
        // %dec_msg = %enc_ptr ^ %mask
        // %real_ptr = inttoptr %dec_msg
        // call %real_ptr
        
        uint64_t Key = Utils::randomRange(1000000, 9999999);
        
        // 1. Ptr -> Int
        Value *FuncInt = builder.CreatePtrToInt(CalledF, Type::getInt64Ty(M.getContext()));
        
        // 2. Encrypt constant (Runtime constant, but obfuscated in constant folding?)
        // Actually, we want the constant to be computed.
        // For simple indirection: Just casting through volatile or messing with data flow.
        
        // Simple Indirection for MVP:
        // %p = alloca func_type*
        // store @func, %p
        // %v = load %p
        // call %v(...)
        
        AllocaInst *PtrStorage = builder.CreateAlloca(CalledF->getType(), nullptr, "fn_ptr");
        builder.CreateStore(CalledF, PtrStorage);
        
        // Add a dummy volatile load/store or similar to prevent optimization (simple optimization barrier)
        Value *LoadedPtr = builder.CreateLoad(CalledF->getType(), PtrStorage);
        
        CI->setCalledOperand(LoadedPtr);
        
        if (Options.Stats) Options.Stats->IndirectCalls++;
    }

    return PreservedAnalyses::none();
}

} // namespace obfuscator
