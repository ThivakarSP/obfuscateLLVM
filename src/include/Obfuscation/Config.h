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

    bool EnableFla = false;
    bool EnableBcf = false;
    bool EnableSub = false;
    bool EnableStr = false;
    bool EnableInd = false;

    int FlaSplitNum = 3;
    int BcfProb = 50;
    int BcfLoop = 1;
    uint64_t Seed = 0;

    bool GenReport = false;
    std::string ReportPath = "obfuscation_report.json";
    
    struct ObfuscationStats *Stats = nullptr;
};

struct ObfuscationStats {
    int Cycles = 0;
    int BogusBlocks = 0;
    int OpaquePredicates = 0;
    int FlattenedFunctions = 0;
    int EncryptedStrings = 0;
    int SubstitutedInstrs = 0;
    int IndirectCalls = 0;
    
    int OrgBlocks = 0;
    int NewBlocks = 0;
    int OrgInstrs = 0;
    int NewInstrs = 0;
    int OrgFunctions = 0;
    int NewFunctions = 0;
};

}  

#endif  
