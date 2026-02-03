# LLVM Obfuscator

A powerful code obfuscation tool built on LLVM that transforms programs to protect them from reverse engineering while maintaining full functionality.

![LLVM](https://img.shields.io/badge/LLVM-18.x-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)

## Features

| Pass | Description |
|------|-------------|
| 🔐 **String Encryption** | XOR encrypts all string constants with runtime decryption |
| 🔀 **Control Flow Flattening** | Transforms function control flow into switch-dispatch loops |
| 🎭 **Bogus Control Flow** | Injects fake branches with opaque predicates |
| ➕ **Instruction Substitution** | Replaces arithmetic with equivalent complex expressions |
| 📞 **Indirect Calls** | Converts direct function calls to indirect via pointers |

## Quick Start

### Prerequisites

- LLVM SDK 18.x
- CMake 3.16+
- Visual Studio 2022 (Windows)

### Build

```bash
mkdir build && cd build
cmake .. -DLLVM_DIR="C:/LLVM-SDK/clang+llvm-18.1.8-x86_64-pc-windows-msvc/lib/cmake/llvm"
cmake --build . --config Release
```

### Usage

```bash
# 1. Compile source to LLVM IR
clang -S -emit-llvm input.c -o input.ll

# 2. Obfuscate
./obfuscator input.ll -o output.bc -str -sub -ind -fla -bcf

# 3. Compile to executable
clang output.bc -o output.exe
```

### CLI Options

| Flag | Description |
|------|-------------|
| `-str` | Enable string encryption |
| `-sub` | Enable instruction substitution |
| `-ind` | Enable indirect calls |
| `-fla` | Enable control flow flattening |
| `-bcf` | Enable bogus control flow |
| `-report` | Generate obfuscation metrics JSON |
| `-seed <N>` | Set random seed for reproducibility |
| `-bcf-prob <N>` | BCF probability (0-100, default: 50) |

## Example

**Before obfuscation:**
```c
const char* secret = "MyPassword123";
int add(int a, int b) { return a + b; }
```

**After obfuscation:**
- String `"MyPassword123"` → encrypted bytes with runtime decryption
- `a + b` → `a - (-b)` or complex equivalents
- Direct calls → indirect via function pointers

## Verification

```bash
# Generate report
./obfuscator input.ll -o output.bc -str -sub -ind -report

# View metrics
cat obfuscation_report.json
```

```json
{
  "obfuscation_metrics": {
    "encrypted_strings": 44,
    "substituted_instructions": 80,
    "indirect_calls": 95
  }
}
```

## Project Structure

```
Obfuscate_LLVM/
├── src/
│   ├── include/Obfuscation/
│   │   ├── Config.h          # Configuration structs
│   │   ├── Passes.h          # Pass declarations
│   │   └── Utils.h           # Utility functions
│   ├── lib/
│   │   ├── Core/             # Obfuscation engine
│   │   └── Passes/           # Individual passes
│   │       ├── StringEncryption.cpp
│   │       ├── Flattening.cpp
│   │       ├── BogusControlFlow.cpp
│   │       ├── Substitution.cpp
│   │       └── IndirectCall.cpp
│   └── tools/obfuscator/     # CLI tool
├── test/                     # Test files
└── CMakeLists.txt
```

## Important Notes

### LLVM Version Compatibility

The obfuscator must be used with the **same LLVM version** it was built with.

```bash
# Check your clang version
clang --version

# Use matching version for IR generation
# If built with LLVM 18.x, use LLVM 18 clang
```

### Tested Features

- ✅ Recursive functions
- ✅ Structs and nested structs
- ✅ Dynamic memory (malloc/free)
- ✅ Linked lists and trees
- ✅ Function pointers
- ✅ Sorting algorithms
- ✅ String operations
- ✅ Matrix operations

## License

MIT License - See [LICENSE](LICENSE) for details.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
