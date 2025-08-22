#!/bin/bash
set -e

# Source Vitis environment
source /opt/Xilinx/Vitis/2025.1/settings64.sh
export XILINX_PLATFORM_REPO_PATHS=/workspace/platform

echo "🧠 [1] Building FPGA kernels..."
mkdir -p build_fpga
cd build_fpga
for k in matmul mul rmsnorm softmax add rope; do
    v++ -c -t hw --platform zcu106_dpu \
        -k kernel_${k} ../src/kernel_${k}.cpp \
        -o kernel_${k}.xo
done

echo "🔗 [2] Linking kernels to XCLBIN..."
v++ -l -t hw --platform zcu106_dpu \
    kernel_*.xo -o binary_container_1.xclbin

cd ..

echo "🧱 [3] Cross-compiling host code..."
mkdir -p build_arm
cd build_arm
cmake .. -DCMAKE_TOOLCHAIN_FILE=../toolchain-aarch64.cmake \
         -DCMAKE_BUILD_TYPE=Release
make -j$(nproc)

cd ..

echo "💾 [4] Generating BOOT.BIN..."
cd sd_card
bootgen -arch zynqmp -image boot.bif -o BOOT.BIN -w on

echo "✅ Build completed. FPGA bitstream, executable, and boot image are ready."
