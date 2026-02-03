
add_executable(obfuscator 
    main.cpp
    
    ../../lib/Passes/Substitution.cpp
    ../../lib/Passes/StringEncryption.cpp
    ../../lib/Passes/IndirectCall.cpp
    ../../lib/Passes/Flattening.cpp
    ../../lib/Passes/BogusControlFlow.cpp
)


target_include_directories(obfuscator PRIVATE ../../include)


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
