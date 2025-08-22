# run_llm.tcl — XSCT script to launch LLM on ZCU106 via JTAG

# 1. Connect to target
connect

# 2. Set up targets
targets -set -filter {name =~ "Cortex-A53 #0"}

# 3. Reset and stop APU
stop
rst -system

# 4. Download FPGA bitstream
fpga -file ~/Desktop/inference_FPGA/build_fpga/swan_design.bit

# 5. Download PMU firmware
targets -set -filter {name =~ "PMU"}
dow ~/Desktop/inference_FPGA/ZCU106_BOOT/xilinx_zcu106_base/sw/zcu106_dpu/boot/pmufw.elf
con

# 6. Switch to APU (A53 #0)
targets -set -filter {name =~ "Cortex-A53 #0"}

# 7. Download FSBL
dow ~/Desktop/inference_FPGA/ZCU106_BOOT/xilinx_zcu106_base/sw/zcu106_dpu/boot/zynqmp_fsbl.elf

# 8. Download U-Boot (to give proper init context)
dow ~/Desktop/inference_FPGA/ZCU106_BOOT/xilinx_zcu106_base/sw/zcu106_dpu/boot/u-boot.elf

# 9. Load and run your application
dow ~/Desktop/inference_FPGA/build_arm/inference_fpga
con
