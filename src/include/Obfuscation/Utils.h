#ifndef OBFUSCATOR_UTILS_H
#define OBFUSCATOR_UTILS_H

#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include <random>

namespace obfuscator {

class Utils {
public:
    static void seedRandom(uint64_t seed) {
        if (seed == 0) srand(time(NULL));
        else srand((unsigned int)seed);
    }

    static bool roll(int percentage) {
        return (rand() % 100) < percentage;
    }

    static int randomRange(int min, int max) {
        return min + (rand() % (max - min + 1));
    }
    
    static uint8_t randomByte() {
        return (uint8_t)(rand() % 256);
    }

    static void fixStack(llvm::Function *f) {
    }
};

}  

#endif  
