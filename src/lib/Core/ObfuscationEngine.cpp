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

        if (Options.Stats) {
            for(auto &F : M) {
                Options.Stats->OrgFunctions++;
                if (!F.isDeclaration()) {
                    Options.Stats->OrgBlocks += F.size();
                    for(auto &BB : F) Options.Stats->OrgInstrs += BB.size();
                }
            }
        }

        if (Options.EnableStr) {
            MPM.addPass(StringEncryptionPass(Options));
        }

        if (Options.EnableInd) {
            MPM.addPass(IndirectCallPass(Options));
        }

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

        MPM.run(M, MAM);
    }

private:
    ObfuscationOptions Options;
};

}  
