#include "Obfuscation/Config.h"
#include "Obfuscation/Passes.h"
#include "Obfuscation/Utils.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/CGSCCPassManager.h"
#include "llvm/Analysis/LoopAnalysisManager.h"
#include <fstream>
#include <iostream>
#include <cstdlib>

using namespace llvm;
using namespace obfuscator;

static cl::opt<std::string> InputFilename(cl::Positional, cl::desc("<input file>"), cl::Required);
static cl::opt<std::string> OutputFilename("o", cl::desc("Output filename"), cl::value_desc("filename"));

static cl::opt<bool> EnableFla("fla", cl::desc("Enable Control Flow Flattening"));
static cl::opt<bool> EnableBcf("bcf", cl::desc("Enable Bogus Control Flow"));
static cl::opt<bool> EnableSub("sub", cl::desc("Enable Instruction Substitution"));
static cl::opt<bool> EnableStr("str", cl::desc("Enable String Encryption"));
static cl::opt<bool> EnableInd("ind", cl::desc("Enable Indirect Calls"));

static cl::opt<int> FlaSplit("fla-split", cl::desc("Flattening Split Number"), cl::init(3));
static cl::opt<int> BcfProb("bcf-prob", cl::desc("Bogus Control Flow Probability"), cl::init(50));
static cl::opt<uint64_t> Seed("seed", cl::desc("Random Seed"), cl::init(0));
static cl::opt<bool> GenReport("report", cl::desc("Generate obfuscation report"));

void generateReport(const std::string &path, const ObfuscationStats &stats) {
    std::ofstream out(path);
    out << "{\n";
    out << "  \"obfuscation_metrics\": {\n";
    out << "    \"flattened_functions\": " << stats.FlattenedFunctions << ",\n";
    out << "    \"bogus_blocks\": " << stats.BogusBlocks << ",\n";
    out << "    \"opaque_predicates\": " << stats.OpaquePredicates << ",\n";
    out << "    \"encrypted_strings\": " << stats.EncryptedStrings << ",\n";
    out << "    \"substituted_instructions\": " << stats.SubstitutedInstrs << ",\n";
    out << "    \"indirect_calls\": " << stats.IndirectCalls << "\n";
    out << "  }\n";
    out << "}\n";
    out.close();
}

int main(int argc, char **argv) {
    cl::ParseCommandLineOptions(argc, argv, "LLVM Obfuscator\n");
    
    std::string currentInput = InputFilename;
    bool isSource = (currentInput.find(".c") != std::string::npos || currentInput.find(".cpp") != std::string::npos);
    
    if (isSource) {
        std::string irFile = currentInput + ".ll";
        std::string cmd = "clang -S -emit-llvm \"" + currentInput + "\" -o \"" + irFile + "\"";
        int ret = std::system(cmd.c_str());
        if (ret != 0) {
            errs() << "Error: Failed to compile source file to IR.\n";
            return 1;
        }
        currentInput = irFile;
    }

    LLVMContext Context;
    SMDiagnostic Err;
    std::unique_ptr<Module> M = parseIRFile(currentInput, Err, Context);

    if (!M) {
        Err.print(argv[0], errs());
        return 1;
    }

    ObfuscationStats Stats;
    ObfuscationOptions Opts;
    Opts.EnableFla = EnableFla.getValue();
    Opts.EnableBcf = EnableBcf.getValue();
    Opts.EnableSub = EnableSub.getValue();
    Opts.EnableStr = EnableStr.getValue();
    Opts.EnableInd = EnableInd.getValue();
    Opts.FlaSplitNum = FlaSplit.getValue();
    Opts.BcfProb = BcfProb.getValue();
    Opts.Seed = Seed.getValue();
    Opts.GenReport = GenReport.getValue();
    Opts.Stats = &Stats;

    Utils::seedRandom(Opts.Seed);

    LoopAnalysisManager LAM;
    CGSCCAnalysisManager CGAM;
    ModuleAnalysisManager MAM;
    FunctionAnalysisManager FAM;
    ModulePassManager MPM;
    FunctionPassManager FPM;
    
    PassBuilder PB;
    PB.registerLoopAnalyses(LAM);
    PB.registerCGSCCAnalyses(CGAM);
    PB.registerModuleAnalyses(MAM);
    PB.registerFunctionAnalyses(FAM);
    PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

    if (Opts.EnableStr) MPM.addPass(StringEncryptionPass(Opts));
    if (Opts.EnableInd) MPM.addPass(IndirectCallPass(Opts));
    if (Opts.EnableSub) MPM.addPass(SubstitutionPass(Opts));
    if (Opts.EnableBcf) MPM.addPass(BogusControlFlowPass(Opts));
    if (Opts.EnableFla) MPM.addPass(FlatteningPass(Opts));

    MPM.run(*M, MAM);

    if (verifyModule(*M, &errs())) {
        errs() << "Error: Module verification failed after obfuscation!\n";
        return 1;
    }

    std::string outName = OutputFilename.getNumOccurrences() == 0 ? "out.bc" : std::string(OutputFilename);
    
    std::error_code EC;
    raw_fd_ostream OS(outName, EC, sys::fs::OF_None);
    if(EC) {
        errs() << "Error opening output file: " << EC.message() << "\n";
        return 1;
    }
    WriteBitcodeToFile(*M, OS);
    OS.close();

    if (Opts.GenReport) {
        generateReport("obfuscation_report.json", Stats);
    }

    return 0;
}
