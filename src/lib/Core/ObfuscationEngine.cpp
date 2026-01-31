#include "Obfuscation/Config.h"
#include "Obfuscation/Passes.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

using namespace llvm;

namespace obfuscator {

class ObfuscationEngine {
public:
    explicit ObfuscationEngine(ObfuscationOptions Opts) : Options(Opts) {}

    void run(Module &M) {
        // Initialize Pass Managers
        LoopAnalysisManager LAM;
        FunctionAnalysisManager FAM;
        CGSCCAnalysisManager CGAM;
        ModuleAnalysisManager MAM;

        PassBuilder PB;
        PB.registerModuleAnalyses(MAM);
        PB.registerCGSCCAnalyses(CGAM);
        PB.registerFunctionAnalyses(FAM);
        PB.registerLoopAnalyses(LAM);
        PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

        ModulePassManager MPM;

        // --- Metrics Collection (Before) ---
        if (Options.Stats) {
            for(auto &F : M) {
                Options.Stats->OrgFunctions++;
                if (!F.isDeclaration()) {
                    Options.Stats->OrgBlocks += F.size();
                    for(auto &BB : F) Options.Stats->OrgInstrs += BB.size();
                }
            }
        }

        // Add Passes based on Config
        // Note: Order matters! 
        // 1. String Encryption (Global)
        if (Options.EnableStr) {
            MPM.addPass(StringEncryptionPass(Options));
        }

        // 1.5 Indirect Calls (Global/Module level usually or Func?)
        // Implementing as Module pass for broader scope
        if (Options.EnableInd) {
            MPM.addPass(IndirectCallPass(Options));
        }

        // 2. Control Flow & Instruction Level (Function)
        FunctionPassManager FPM;
        
        if (Options.EnableSub) {
            FPM.addPass(SubstitutionPass(Options));
        }
        
        if (Options.EnableBcf) {
            FPM.addPass(BogusControlFlowPass(Options));
        }
        
        if (Options.EnableFla) {
            FPM.addPass(FlatteningPass(Options));
        }

        if (!FPM.isEmpty()) {
            MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
        }

        // Execute Pipeline
        MPM.run(M, MAM);
    }

private:
    ObfuscationOptions Options;
};

} // namespace obfuscator
