#!/usr/bin/env bash
set -e
set -o pipefail

# 1) Vitis environment
set +u
source /tools/Xilinx/2025.1/Vitis/settings64.sh
set -u

export PLATFORM=~/Desktop/inference_FPGA/ZCU106_BOOT/xilinx_zcu106_base/zcu106_dpu.xpfm

PROJ_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$PROJ_ROOT/src"


# 2) Build directory
cd "$(dirname "$0")"
mkdir -p build_fpga
cd build_fpga

# 3) Compile the kernels (hardware) -------------------------------
for k in matmul mul rmsnorm softmax add rope; do
  v++ -c -t hw --platform "$PLATFORM" --save-temps \
      -k kernel_${k} "${SRC_DIR}/kernel_${k}.cpp" \
      -o kernel_${k}.xo
done

# 4) Link: generate the XCLBIN ------------------------------------
v++ -l -t hw --platform "$PLATFORM" --save-temps \
    kernel_*.xo \
    -o binary_container_1.xclbin

echo -e "\n✅  Build finished: binary_container_1.xclbin is ready."
