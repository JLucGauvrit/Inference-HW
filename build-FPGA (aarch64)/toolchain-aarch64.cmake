# toolchain-aarch64.cmake - Configuration pour cross-compilation FPGA
set(CMAKE_SYSTEM_NAME        Linux)
set(CMAKE_SYSTEM_PROCESSOR   aarch64)

# Chemins des compilateurs - priorité aux outils Xilinx si disponibles
if(EXISTS "/tools/Xilinx/2025.1/Vitis/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-gcc")
    # Utiliser les outils Xilinx Vitis
    set(CMAKE_C_COMPILER   /tools/Xilinx/2025.1/Vitis/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER /tools/Xilinx/2025.1/Vitis/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-g++)
    message(STATUS "🔧 Using Xilinx Vitis toolchain")
else()
    # Utiliser les outils système Ubuntu
    set(CMAKE_C_COMPILER   aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
    message(STATUS "🔧 Using system aarch64 toolchain")
endif()

# Flags de compilation optimisés pour FPGA/ZCU106
set(CMAKE_C_FLAGS   "-O3 -fPIE -march=armv8-a -mtune=cortex-a53")
set(CMAKE_CXX_FLAGS "-O3 -fPIE -std=c++17 -march=armv8-a -mtune=cortex-a53")

# Flags pour le linkage
set(CMAKE_EXE_LINKER_FLAGS "-pie")

# Désactiver la recherche de bibliothèques sur le système hôte
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Définitions spécifiques pour FPGA
add_definitions(-DTARGET_AARCH64)
add_definitions(-DFPGA_PLATFORM)

message(STATUS "🎯 Target: aarch64 (ARM64) for FPGA")
message(STATUS "📡 Optimized for: Cortex-A53 (ZCU106)")
