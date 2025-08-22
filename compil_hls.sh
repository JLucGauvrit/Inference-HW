#!/usr/bin/env bash
set -euo pipefail

# 1) Vitis environment
source /tools/Xilinx/2025.1/Vitis/settings64.sh
export XILINX_PLATFORM_REPO_PATHS=/tools/Xilinx/2025.1/Vitis/base_platforms
PLAT=zcu106_dpu                                 # platform name as it appears in "platform list"

PROJ_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$PROJ_ROOT/src"


# 2) Build directory
cd "$(dirname "$0")"
mkdir -p build_fpga
cd build_fpga

# 3) Compile the kernels (hardware) -------------------------------
for k in matmul mul rmsnorm softmax add rope; do
  v++ -c -t hw --platform "$PLAT" \
      -k kernel_${k} "${SRC_DIR}/kernel_${k}.cpp" \
      -o kernel_${k}.xo
done

# 4) Link: generate the XCLBIN ------------------------------------
v++ -l -t hw --platform "$PLAT" \
    kernel_*.xo \
    -o binary_container_1.xclbin

echo -e "\n✅  Build finished: binary_container_1.xclbin is ready."
