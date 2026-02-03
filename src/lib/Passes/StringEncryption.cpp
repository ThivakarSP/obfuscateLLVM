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

     
    for (GlobalVariable &GV : M.globals()) {
        if (!GV.hasInitializer()) continue;
        if (!GV.isConstant()) continue;
        
        Constant *Init = GV.getInitializer();
        ConstantDataSequential *CDS = dyn_cast<ConstantDataSequential>(Init);
        if (!CDS || !CDS->isString()) continue;
        
         
        if (CDS->getNumElements() < 2) continue;
        
        StringRef StrData = CDS->getAsString();
        size_t Len = StrData.size();
        
         
        uint8_t Key = Utils::randomByte();
        if (Key == 0) Key = 0x42;  
        
        std::vector<uint8_t> Encrypted;
        for (size_t i = 0; i < Len; ++i) {
            Encrypted.push_back(static_cast<uint8_t>(StrData[i]) ^ Key);
        }
        
         
        Constant *NewInit = ConstantDataArray::get(Ctx, Encrypted);
        GlobalVariable *NewGV = new GlobalVariable(
            M, NewInit->getType(), false,  
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

     
    for (auto &ES : EncryptedStrings) {
         
        Constant *Cast = ConstantExpr::getBitCast(ES.NewGV, ES.OrigGV->getType());
        ES.OrigGV->replaceAllUsesWith(Cast);
        ES.OrigGV->eraseFromParent();
    }

     
    FunctionType *FuncType = FunctionType::get(Type::getVoidTy(Ctx), false);
    Function *DecryptFunc = Function::Create(
        FuncType, GlobalValue::InternalLinkage, "decrypt_strings", &M);
    
    BasicBlock *EntryBB = BasicBlock::Create(Ctx, "entry", DecryptFunc);
    IRBuilder<> Builder(EntryBB);

     
    for (auto &ES : EncryptedStrings) {
        Value *BasePtr = ES.NewGV;
        
         
        BasicBlock *LoopHeader = BasicBlock::Create(Ctx, "loop_header", DecryptFunc);
        BasicBlock *LoopBody = BasicBlock::Create(Ctx, "loop_body", DecryptFunc);
        BasicBlock *LoopExit = BasicBlock::Create(Ctx, "loop_exit", DecryptFunc);
        
         
        AllocaInst *Counter = Builder.CreateAlloca(Type::getInt32Ty(Ctx), nullptr, "i");
        Builder.CreateStore(ConstantInt::get(Type::getInt32Ty(Ctx), 0), Counter);
        Builder.CreateBr(LoopHeader);
        
         
        Builder.SetInsertPoint(LoopHeader);
        Value *Idx = Builder.CreateLoad(Type::getInt32Ty(Ctx), Counter);
        Value *Cond = Builder.CreateICmpSLT(
            Idx, ConstantInt::get(Type::getInt32Ty(Ctx), ES.Length));
        Builder.CreateCondBr(Cond, LoopBody, LoopExit);
        
         
        Builder.SetInsertPoint(LoopBody);
        Value *Ptr = Builder.CreateInBoundsGEP(
            Type::getInt8Ty(Ctx), BasePtr, Idx);
        Value *Val = Builder.CreateLoad(Type::getInt8Ty(Ctx), Ptr);
        Value *Decrypted = Builder.CreateXor(
            Val, ConstantInt::get(Type::getInt8Ty(Ctx), ES.Key));
        Builder.CreateStore(Decrypted, Ptr);
        
         
        Value *Inc = Builder.CreateAdd(
            Idx, ConstantInt::get(Type::getInt32Ty(Ctx), 1));
        Builder.CreateStore(Inc, Counter);
        Builder.CreateBr(LoopHeader);
        
         
        Builder.SetInsertPoint(LoopExit);
    }
    
     
    Builder.CreateRetVoid();

     
    appendToGlobalCtors(M, DecryptFunc, 0);

    return PreservedAnalyses::none();
}

}  
