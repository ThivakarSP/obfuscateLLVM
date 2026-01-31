#include "Obfuscation/Passes.h"
#include "Obfuscation/Utils.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/ModuleUtils.h"
#include <vector>

using namespace llvm;

namespace obfuscator {

struct EncryptedString {
    GlobalVariable *OrigGV;
    GlobalVariable *NewGV;
    uint8_t Key;
    size_t Length;
};

PreservedAnalyses StringEncryptionPass::run(Module &M, ModuleAnalysisManager &AM) {
    if (!Options.EnableStr) return PreservedAnalyses::all();

    std::vector<EncryptedString> EncryptedStrings;
    LLVMContext &Ctx = M.getContext();

    // 1. Identification Phase - Find all string constants
    for (GlobalVariable &GV : M.globals()) {
        if (!GV.hasInitializer()) continue;
        if (!GV.isConstant()) continue;
        
        Constant *Init = GV.getInitializer();
        ConstantDataSequential *CDS = dyn_cast<ConstantDataSequential>(Init);
        if (!CDS || !CDS->isString()) continue;
        
        // Skip very short strings (like single char or empty)
        if (CDS->getNumElements() < 2) continue;
        
        StringRef StrData = CDS->getAsString();
        size_t Len = StrData.size();
        
        // Encrypt with XOR
        uint8_t Key = Utils::randomByte();
        if (Key == 0) Key = 0x42; // Avoid null key
        
        std::vector<uint8_t> Encrypted;
        for (size_t i = 0; i < Len; ++i) {
            Encrypted.push_back(static_cast<uint8_t>(StrData[i]) ^ Key);
        }
        
        // Create new mutable global with encrypted data
        Constant *NewInit = ConstantDataArray::get(Ctx, Encrypted);
        GlobalVariable *NewGV = new GlobalVariable(
            M, NewInit->getType(), false, // NOT constant - needs to be decrypted
            GlobalValue::PrivateLinkage, NewInit, 
            "enc_" + GV.getName());
        
        EncryptedString ES;
        ES.OrigGV = &GV;
        ES.NewGV = NewGV;
        ES.Key = Key;
        ES.Length = Len;
        EncryptedStrings.push_back(ES);
        
        if (Options.Stats) Options.Stats->EncryptedStrings++;
    }

    if (EncryptedStrings.empty()) return PreservedAnalyses::all();

    // 2. Replace all uses
    for (auto &ES : EncryptedStrings) {
        // Cast new GV to match the original's type  
        Constant *Cast = ConstantExpr::getBitCast(ES.NewGV, ES.OrigGV->getType());
        ES.OrigGV->replaceAllUsesWith(Cast);
        ES.OrigGV->eraseFromParent();
    }

    // 3. Create single decryption constructor function
    FunctionType *FuncType = FunctionType::get(Type::getVoidTy(Ctx), false);
    Function *DecryptFunc = Function::Create(
        FuncType, GlobalValue::InternalLinkage, "decrypt_strings", &M);
    
    BasicBlock *EntryBB = BasicBlock::Create(Ctx, "entry", DecryptFunc);
    IRBuilder<> Builder(EntryBB);

    // Decrypt each string sequentially (no separate loops needed for small strings)
    for (auto &ES : EncryptedStrings) {
        Value *BasePtr = ES.NewGV;
        
        // Create decryption loop
        BasicBlock *LoopHeader = BasicBlock::Create(Ctx, "loop_header", DecryptFunc);
        BasicBlock *LoopBody = BasicBlock::Create(Ctx, "loop_body", DecryptFunc);
        BasicBlock *LoopExit = BasicBlock::Create(Ctx, "loop_exit", DecryptFunc);
        
        // Entry: initialize counter
        AllocaInst *Counter = Builder.CreateAlloca(Type::getInt32Ty(Ctx), nullptr, "i");
        Builder.CreateStore(ConstantInt::get(Type::getInt32Ty(Ctx), 0), Counter);
        Builder.CreateBr(LoopHeader);
        
        // Loop header: check condition
        Builder.SetInsertPoint(LoopHeader);
        Value *Idx = Builder.CreateLoad(Type::getInt32Ty(Ctx), Counter);
        Value *Cond = Builder.CreateICmpSLT(
            Idx, ConstantInt::get(Type::getInt32Ty(Ctx), ES.Length));
        Builder.CreateCondBr(Cond, LoopBody, LoopExit);
        
        // Loop body: decrypt byte
        Builder.SetInsertPoint(LoopBody);
        Value *Ptr = Builder.CreateInBoundsGEP(
            Type::getInt8Ty(Ctx), BasePtr, Idx);
        Value *Val = Builder.CreateLoad(Type::getInt8Ty(Ctx), Ptr);
        Value *Decrypted = Builder.CreateXor(
            Val, ConstantInt::get(Type::getInt8Ty(Ctx), ES.Key));
        Builder.CreateStore(Decrypted, Ptr);
        
        // Increment counter
        Value *Inc = Builder.CreateAdd(
            Idx, ConstantInt::get(Type::getInt32Ty(Ctx), 1));
        Builder.CreateStore(Inc, Counter);
        Builder.CreateBr(LoopHeader);
        
        // Loop exit: continue to next string (or return)
        Builder.SetInsertPoint(LoopExit);
    }
    
    // Final return
    Builder.CreateRetVoid();

    // Register as global constructor (priority 0 = run first)
    appendToGlobalCtors(M, DecryptFunc, 0);

    return PreservedAnalyses::none();
}

} // namespace obfuscator
