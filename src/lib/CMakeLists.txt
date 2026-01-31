add_library(ObfuscationLib STATIC
    Passes/Substitution.cpp
    Passes/StringEncryption.cpp
    Passes/IndirectCall.cpp
    Passes/Flattening.cpp
    Passes/BogusControlFlow.cpp
    Core/ObfuscationEngine.cpp
)

target_link_libraries(ObfuscationLib PUBLIC
    LLVMCore
    LLVMSupport
    LLVMTransformUtils
    LLVMIRReader
    LLVMBitWriter
)
