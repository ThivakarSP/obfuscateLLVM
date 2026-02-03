#ifndef OBFUSCATOR_PASSES_H
#define OBFUSCATOR_PASSES_H

#include "llvm/IR/PassManager.h"
#include "Obfuscation/Config.h"

namespace obfuscator {

class SubstitutionPass : public llvm::PassInfoMixin<SubstitutionPass> {
public:
    explicit SubstitutionPass(ObfuscationOptions Options) : Options(Options) {}
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);
    static bool isRequired() { return true; }
private:
    ObfuscationOptions Options;
};

class StringEncryptionPass : public llvm::PassInfoMixin<StringEncryptionPass> {
public:
    explicit StringEncryptionPass(ObfuscationOptions Options) : Options(Options) {}
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);
    static bool isRequired() { return true; }
private:
    ObfuscationOptions Options;
};

class IndirectCallPass : public llvm::PassInfoMixin<IndirectCallPass> {
public:
    explicit IndirectCallPass(ObfuscationOptions Options) : Options(Options) {}
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);
    static bool isRequired() { return true; }
private:
    ObfuscationOptions Options;
};

class FlatteningPass : public llvm::PassInfoMixin<FlatteningPass> {
public:
    explicit FlatteningPass(ObfuscationOptions Options) : Options(Options) {}
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);
    static bool isRequired() { return true; }
private:
    ObfuscationOptions Options;
};

class BogusControlFlowPass : public llvm::PassInfoMixin<BogusControlFlowPass> {
public:
    explicit BogusControlFlowPass(ObfuscationOptions Options) : Options(Options) {}
    llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);
    static bool isRequired() { return true; }
private:
    ObfuscationOptions Options;
};

}  

#endif  
