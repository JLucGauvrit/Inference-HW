# toolchain-aarch64.cmake  (version minimale)
set(CMAKE_SYSTEM_NAME        Linux)
set(CMAKE_SYSTEM_PROCESSOR   aarch64)

# Déclencheurs GCC fournis par Vitis
set(CMAKE_C_COMPILER   /tools/Xilinx/2025.1/Vitis/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER /tools/Xilinx/2025.1/Vitis/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-g++)

# On reste en small/medium model (par défaut) et on garde PIE
set(CMAKE_C_FLAGS   "-O3 -fPIE")
set(CMAKE_CXX_FLAGS "-O3 -fPIE -std=c++17")
