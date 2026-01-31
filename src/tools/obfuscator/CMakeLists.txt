# Monolithic Build: Compile all sources directly to avoid ABI mismatch
add_executable(obfuscator 
    main.cpp
    # ../../lib/Core/ObfuscationEngine.cpp # Removed: Legacy wrapper unused in monolithic build
    ../../lib/Passes/Substitution.cpp
    ../../lib/Passes/StringEncryption.cpp
    ../../lib/Passes/IndirectCall.cpp
    ../../lib/Passes/Flattening.cpp
    ../../lib/Passes/BogusControlFlow.cpp
)

# Allow including headers from the library directory
target_include_directories(obfuscator PRIVATE ../../include)

# Add DIA SDK path for diaguids.lib (required by LLVM PDB support)
link_directories("C:/Program Files/Microsoft Visual Studio/18/Community/DIA SDK/lib/amd64")
link_directories("C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/DIA SDK/lib/amd64")

target_link_libraries(obfuscator PRIVATE
    LLVMSupport
    LLVMCore
    LLVMIRReader
    LLVMBitWriter
    LLVMPasses
    LLVMTransformUtils
)
