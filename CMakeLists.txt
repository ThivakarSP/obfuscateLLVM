cmake_minimum_required(VERSION 3.15)
project(LLVMObfuscator)

# --- Configuration ---
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# --- Find LLVM ---
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Add DIA SDK path for diaguids.lib (required by LLVM PDB support)
# Try multiple possible Visual Studio installation paths
link_directories("C:/Program Files/Microsoft Visual Studio/18/Community/DIA SDK/lib/amd64")
link_directories("C:/Program Files (x86)/Microsoft Visual Studio/2022/Community/DIA SDK/lib/amd64")
link_directories("C:/Program Files (x86)/Microsoft Visual Studio/2022/Professional/DIA SDK/lib/amd64")

# Add our own include directory
include_directories(src/include)

# --- Subdirectories ---
# add_subdirectory(src/lib) # Disabled for Monolithic Build
add_subdirectory(src/tools/obfuscator)
