#ifndef OBFUSCATOR_CONFIG_H
#define OBFUSCATOR_CONFIG_H

#include <string>
#include <cstdint>

namespace obfuscator {

enum class ObfuscationLevel {
    None = 0,
    Low = 1,
    Medium = 2,
    High = 3,
    Aggressive = 4,
    Insane = 5
};

struct ObfuscationOptions {
    ObfuscationLevel Level = ObfuscationLevel::None;

    // Feature Flags
    bool EnableFla = false; // Control Flow Flattening
    bool EnableBcf = false; // Bogus Control Flow
    bool EnableSub = false; // Instruction Substitution
    bool EnableStr = false; // String Encryption
    bool EnableInd = false; // Indirect Calls

    // Parameters
    int FlaSplitNum = 3;     // Number of times to split blocks for FLA
    int BcfProb = 50;        // Probability (0-100) of adding bogus flow to a block
    int BcfLoop = 1;         // Number of times to apply BCF (Not fully used in MVP code yet)
    uint64_t Seed = 0;       // Random Seed (0 for random)

    // Reporting
    bool GenReport = false;
    std::string ReportPath = "obfuscation_report.json";
    
    struct ObfuscationStats *Stats = nullptr;
};

struct ObfuscationStats {
    // Methods Applied
    int Cycles = 0;
    int BogusBlocks = 0;
    int OpaquePredicates = 0;
    int FlattenedFunctions = 0;
    int EncryptedStrings = 0;
    int SubstitutedInstrs = 0;
    int IndirectCalls = 0;
    
    // Detailed Metrics (Before/After)
    int OrgBlocks = 0;
    int NewBlocks = 0;
    int OrgInstrs = 0;
    int NewInstrs = 0;
    int OrgFunctions = 0;
    int NewFunctions = 0;
};

} // namespace obfuscator

#endif // OBFUSCATOR_CONFIG_H
