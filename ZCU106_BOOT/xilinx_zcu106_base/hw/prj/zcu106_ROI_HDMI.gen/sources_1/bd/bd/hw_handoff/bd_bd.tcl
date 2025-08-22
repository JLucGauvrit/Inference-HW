
################################################################
# This is a generated script based on design: bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu7ev-ffvc1156-2-e
   set_property BOARD_PART xilinx.com:zcu106:part0:2.6 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: hdmi_output
proc create_hier_cell_hdmi_output { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_hdmi_output() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 DDC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 LINK_DATA0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 LINK_DATA1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 LINK_DATA2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 SB_STATUS

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CPU

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_mm_video1_0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_mm_video2_0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_mm_video3

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_mm_video_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl_frm_rd

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl_mixer


  # Create pins
  create_bd_pin -dir I -type rst ap_rst_n
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn_100M
  create_bd_pin -dir I -type rst aresetn_300M
  create_bd_pin -dir I -type clk clk_100M
  create_bd_pin -dir I -type clk clk_300M
  create_bd_pin -dir I -type rst frmbuf_aresetn
  create_bd_pin -dir I hpd
  create_bd_pin -dir O -type intr interrupt_frm_rd
  create_bd_pin -dir O -type intr interrupt_hdmi_tx
  create_bd_pin -dir O -type intr interrupt_mixer
  create_bd_pin -dir I -type clk link_clk
  create_bd_pin -dir O locked
  create_bd_pin -dir I -type clk video_clk

  # Create instance: v_frmbuf_rd_0, and set properties
  set v_frmbuf_rd_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_frmbuf_rd:2.2 v_frmbuf_rd_0 ]
  set_property -dict [ list \
   CONFIG.AXIMM_ADDR_WIDTH {64} \
   CONFIG.HAS_BGRX8 {0} \
   CONFIG.HAS_RGBX8 {0} \
   CONFIG.HAS_UYVY8 {0} \
   CONFIG.HAS_Y8 {0} \
   CONFIG.HAS_YUV8 {0} \
   CONFIG.HAS_YUVX8 {0} \
   CONFIG.HAS_YUYV8 {0} \
   CONFIG.HAS_Y_UV10 {0} \
   CONFIG.HAS_Y_UV10_420 {0} \
   CONFIG.HAS_Y_UV8 {1} \
   CONFIG.HAS_Y_UV8_420 {1} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_NR_PLANES {2} \
 ] $v_frmbuf_rd_0

  # Create instance: v_hdmi_tx_ss_0, and set properties
  set v_hdmi_tx_ss_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hdmi_tx_ss:3.1 v_hdmi_tx_ss_0 ]
  set_property -dict [ list \
   CONFIG.C_HDMI_FAST_SWITCH {true} \
   CONFIG.C_INCLUDE_YUV420_SUP {true} \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {2} \
   CONFIG.C_MAX_BITS_PER_COMPONENT {8} \
   CONFIG.C_VID_INTERFACE {0} \
 ] $v_hdmi_tx_ss_0

  # Create instance: v_mix_0, and set properties
  set v_mix_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_mix:5.1 v_mix_0 ]
  set_property -dict [ list \
   CONFIG.AXIMM_ADDR_WIDTH {64} \
   CONFIG.AXIMM_DATA_WIDTH {128} \
   CONFIG.AXIMM_NUM_OUTSTANDING {16} \
   CONFIG.C_M_AXI_MM_VIDEO10_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO11_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO12_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO13_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO14_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO15_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO16_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO1_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO2_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO3_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO4_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO5_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO6_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO7_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO8_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO9_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO_ENABLE_USER_PORTS {true} \
   CONFIG.LAYER1_VIDEO_FORMAT {19} \
   CONFIG.LAYER2_VIDEO_FORMAT {19} \
   CONFIG.LAYER3_ALPHA {true} \
   CONFIG.LAYER3_VIDEO_FORMAT {26} \
   CONFIG.LAYER4_VIDEO_FORMAT {19} \
   CONFIG.LAYER5_VIDEO_FORMAT {19} \
   CONFIG.LAYER6_VIDEO_FORMAT {19} \
   CONFIG.LAYER7_ALPHA {false} \
   CONFIG.LAYER7_VIDEO_FORMAT {19} \
   CONFIG.LAYER8_ALPHA {false} \
   CONFIG.LAYER8_VIDEO_FORMAT {19} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.NR_LAYERS {4} \
   CONFIG.SAMPLES_PER_CLOCK {2} \
 ] $v_mix_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi_ctrl_mixer] [get_bd_intf_pins v_mix_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins m_axi_mm_video1_0] [get_bd_intf_pins v_mix_0/m_axi_mm_video1]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins m_axi_mm_video2_0] [get_bd_intf_pins v_mix_0/m_axi_mm_video2]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins m_axi_mm_video3] [get_bd_intf_pins v_mix_0/m_axi_mm_video3]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins m_axi_mm_video_0] [get_bd_intf_pins v_frmbuf_rd_0/m_axi_mm_video]
  connect_bd_intf_net -intf_net DDC [get_bd_intf_pins DDC] [get_bd_intf_pins v_hdmi_tx_ss_0/DDC_OUT]
  connect_bd_intf_net -intf_net LINK_DATA0 [get_bd_intf_pins LINK_DATA0] [get_bd_intf_pins v_hdmi_tx_ss_0/LINK_DATA0_OUT]
  connect_bd_intf_net -intf_net LINK_DATA1 [get_bd_intf_pins LINK_DATA1] [get_bd_intf_pins v_hdmi_tx_ss_0/LINK_DATA1_OUT]
  connect_bd_intf_net -intf_net LINK_DATA2 [get_bd_intf_pins LINK_DATA2] [get_bd_intf_pins v_hdmi_tx_ss_0/LINK_DATA2_OUT]
  connect_bd_intf_net -intf_net SB_STATUS [get_bd_intf_pins SB_STATUS] [get_bd_intf_pins v_hdmi_tx_ss_0/SB_STATUS_IN]
  connect_bd_intf_net -intf_net S_AXI_CPU [get_bd_intf_pins S_AXI_CPU] [get_bd_intf_pins v_hdmi_tx_ss_0/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net s_axi_CTRL [get_bd_intf_pins s_axi_ctrl_frm_rd] [get_bd_intf_pins v_frmbuf_rd_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net v_frmbuf_rd_0_m_axis_video [get_bd_intf_pins v_frmbuf_rd_0/m_axis_video] [get_bd_intf_pins v_mix_0/s_axis_video]
  connect_bd_intf_net -intf_net v_mix_0_m_axis_video [get_bd_intf_pins v_hdmi_tx_ss_0/VIDEO_IN] [get_bd_intf_pins v_mix_0/m_axis_video]

  # Create port connections
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins v_mix_0/ap_rst_n]
  connect_bd_net -net aresetn_100M [get_bd_pins aresetn_100M] [get_bd_pins v_hdmi_tx_ss_0/s_axi_cpu_aresetn]
  connect_bd_net -net aresetn_300M [get_bd_pins aresetn_300M] [get_bd_pins v_hdmi_tx_ss_0/s_axis_video_aresetn]
  connect_bd_net -net clk_100M [get_bd_pins clk_100M] [get_bd_pins v_hdmi_tx_ss_0/s_axi_cpu_aclk] [get_bd_pins v_hdmi_tx_ss_0/s_axis_audio_aclk]
  connect_bd_net -net clk_300M [get_bd_pins clk_300M] [get_bd_pins v_frmbuf_rd_0/ap_clk] [get_bd_pins v_hdmi_tx_ss_0/s_axis_video_aclk] [get_bd_pins v_mix_0/ap_clk]
  connect_bd_net -net frmbuf_aresetn [get_bd_pins frmbuf_aresetn] [get_bd_pins v_frmbuf_rd_0/ap_rst_n]
  connect_bd_net -net hpd_1 [get_bd_pins hpd] [get_bd_pins v_hdmi_tx_ss_0/hpd]
  connect_bd_net -net v_frmbuf_rd_0_interrupt [get_bd_pins interrupt_frm_rd] [get_bd_pins v_frmbuf_rd_0/interrupt]
  connect_bd_net -net v_hdmi_tx_ss_0_irq [get_bd_pins interrupt_hdmi_tx] [get_bd_pins v_hdmi_tx_ss_0/irq]
  connect_bd_net -net v_hdmi_tx_ss_0_locked [get_bd_pins locked] [get_bd_pins v_hdmi_tx_ss_0/locked]
  connect_bd_net -net v_mix_0_interrupt [get_bd_pins interrupt_mixer] [get_bd_pins v_mix_0/interrupt]
  connect_bd_net -net vid_phy_controller_0_tx_video_clk [get_bd_pins video_clk] [get_bd_pins v_hdmi_tx_ss_0/video_clk]
  connect_bd_net -net vid_phy_controller_0_txoutclk [get_bd_pins link_clk] [get_bd_pins v_hdmi_tx_ss_0/link_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hdmi_input
proc create_hier_cell_hdmi_input { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_hdmi_input() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 DDC

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 LINK_DATA0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 LINK_DATA1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 LINK_DATA2

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 SB_STATUS

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CPU_IN

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_CTRL

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl4


  # Create pins
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn_300M
  create_bd_pin -dir I cable_detect
  create_bd_pin -dir I -type clk clk_300M
  create_bd_pin -dir O hpd
  create_bd_pin -dir O -type intr interrupt
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir I -type clk link_clk
  create_bd_pin -dir I -type clk s_axi_cpu_aclk
  create_bd_pin -dir I -type rst s_axi_cpu_aresetn
  create_bd_pin -dir I -type rst scaler_resetn
  create_bd_pin -dir I -type clk video_clk

  # Create instance: axi_data_fifo_0, and set properties
  set axi_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_0

  # Create instance: v_frmbuf_wr_0, and set properties
  set v_frmbuf_wr_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_frmbuf_wr:2.2 v_frmbuf_wr_0 ]
  set_property -dict [ list \
   CONFIG.AXIMM_ADDR_WIDTH {64} \
   CONFIG.AXIMM_DATA_WIDTH {128} \
   CONFIG.C_M_AXI_MM_VIDEO_DATA_WIDTH {128} \
   CONFIG.HAS_BGRX8 {0} \
   CONFIG.HAS_RGB8 {1} \
   CONFIG.HAS_RGBX8 {0} \
   CONFIG.HAS_UYVY8 {0} \
   CONFIG.HAS_Y8 {0} \
   CONFIG.HAS_YUV8 {0} \
   CONFIG.HAS_YUVX8 {0} \
   CONFIG.HAS_YUYV8 {0} \
   CONFIG.HAS_Y_UV10 {0} \
   CONFIG.HAS_Y_UV10_420 {0} \
   CONFIG.HAS_Y_UV8 {1} \
   CONFIG.HAS_Y_UV8_420 {1} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_NR_PLANES {2} \
   CONFIG.SAMPLES_PER_CLOCK {2} \
 ] $v_frmbuf_wr_0

  # Create instance: v_hdmi_rx_ss_0, and set properties
  set v_hdmi_rx_ss_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hdmi_rx_ss:3.1 v_hdmi_rx_ss_0 ]
  set_property -dict [ list \
   CONFIG.C_CD_INVERT {true} \
   CONFIG.C_HDMI_FAST_SWITCH {true} \
   CONFIG.C_INCLUDE_YUV420_SUP {true} \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {2} \
   CONFIG.C_MAX_BITS_PER_COMPONENT {8} \
 ] $v_hdmi_rx_ss_0

  # Create instance: v_proc_ss_0, and set properties
  set v_proc_ss_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_proc_ss:2.3 v_proc_ss_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_CSC {true} \
   CONFIG.C_H_SCALER_TAPS {6} \
   CONFIG.C_MAX_DATA_WIDTH {8} \
   CONFIG.C_TOPOLOGY {0} \
   CONFIG.C_V_SCALER_TAPS {6} \
 ] $v_proc_ss_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi_CTRL] [get_bd_intf_pins v_frmbuf_wr_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXI_CPU_IN] [get_bd_intf_pins v_hdmi_rx_ss_0/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins s_axi_ctrl4] [get_bd_intf_pins v_proc_ss_0/s_axi_ctrl]
  connect_bd_intf_net -intf_net Conn12 [get_bd_intf_pins M_AXI2] [get_bd_intf_pins axi_data_fifo_0/M_AXI]
  connect_bd_intf_net -intf_net DDC [get_bd_intf_pins DDC] [get_bd_intf_pins v_hdmi_rx_ss_0/DDC_OUT]
  connect_bd_intf_net -intf_net LINK_DATA0 [get_bd_intf_pins LINK_DATA0] [get_bd_intf_pins v_hdmi_rx_ss_0/LINK_DATA0_IN]
  connect_bd_intf_net -intf_net LINK_DATA1 [get_bd_intf_pins LINK_DATA1] [get_bd_intf_pins v_hdmi_rx_ss_0/LINK_DATA1_IN]
  connect_bd_intf_net -intf_net LINK_DATA2 [get_bd_intf_pins LINK_DATA2] [get_bd_intf_pins v_hdmi_rx_ss_0/LINK_DATA2_IN]
  connect_bd_intf_net -intf_net SB_STATUS [get_bd_intf_pins SB_STATUS] [get_bd_intf_pins v_hdmi_rx_ss_0/SB_STATUS_IN]
  connect_bd_intf_net -intf_net v_frmbuf_wr_0_m_axi_mm_video [get_bd_intf_pins axi_data_fifo_0/S_AXI] [get_bd_intf_pins v_frmbuf_wr_0/m_axi_mm_video]
  connect_bd_intf_net -intf_net v_hdmi_rx_ss_0_VIDEO_OUT [get_bd_intf_pins v_hdmi_rx_ss_0/VIDEO_OUT] [get_bd_intf_pins v_proc_ss_0/s_axis]
  connect_bd_intf_net -intf_net v_proc_ss_0_m_axis [get_bd_intf_pins v_frmbuf_wr_0/s_axis_video] [get_bd_intf_pins v_proc_ss_0/m_axis]

  # Create port connections
  connect_bd_net -net aresetn_300M [get_bd_pins aresetn_300M] [get_bd_pins v_hdmi_rx_ss_0/s_axis_video_aresetn]
  connect_bd_net -net cable_detect [get_bd_pins cable_detect] [get_bd_pins v_hdmi_rx_ss_0/cable_detect]
  connect_bd_net -net clk_300M [get_bd_pins clk_300M] [get_bd_pins axi_data_fifo_0/aclk] [get_bd_pins v_frmbuf_wr_0/ap_clk] [get_bd_pins v_hdmi_rx_ss_0/s_axis_video_aclk] [get_bd_pins v_proc_ss_0/aclk_axis] [get_bd_pins v_proc_ss_0/aclk_ctrl]
  connect_bd_net -net link_clk [get_bd_pins link_clk] [get_bd_pins v_hdmi_rx_ss_0/link_clk]
  connect_bd_net -net mpsoc_ss_aresetn_100M [get_bd_pins s_axi_cpu_aresetn] [get_bd_pins v_hdmi_rx_ss_0/s_axi_cpu_aresetn]
  connect_bd_net -net mpsoc_ss_clk_100M [get_bd_pins s_axi_cpu_aclk] [get_bd_pins v_hdmi_rx_ss_0/s_axi_cpu_aclk] [get_bd_pins v_hdmi_rx_ss_0/s_axis_audio_aclk]
  connect_bd_net -net rx_scaler_reset [get_bd_pins scaler_resetn] [get_bd_pins v_proc_ss_0/aresetn_ctrl]
  connect_bd_net -net v_frmbuf_wr_0_interrupt [get_bd_pins interrupt] [get_bd_pins v_frmbuf_wr_0/interrupt]
  connect_bd_net -net v_hdmi_rx_ss_0_hpd [get_bd_pins hpd] [get_bd_pins v_hdmi_rx_ss_0/hpd]
  connect_bd_net -net v_hdmi_rx_ss_0_irq [get_bd_pins irq] [get_bd_pins v_hdmi_rx_ss_0/irq]
  connect_bd_net -net video_clk [get_bd_pins video_clk] [get_bd_pins v_hdmi_rx_ss_0/video_clk]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins aresetn] [get_bd_pins axi_data_fifo_0/aresetn] [get_bd_pins v_frmbuf_wr_0/ap_rst_n]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: gt_refclk_buf
proc create_hier_cell_gt_refclk_buf { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_gt_refclk_buf() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN_D


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type clk BUFG_GT_O
  create_bd_pin -dir O -from 0 -to 0 -type clk IBUF_OUT

  # Create instance: const_vcc, and set properties
  set const_vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_vcc ]

  # Create instance: ibufds_gt, and set properties
  set ibufds_gt [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 ibufds_gt ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $ibufds_gt

  # Create instance: ibufds_gt_odiv2, and set properties
  set ibufds_gt_odiv2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 ibufds_gt_odiv2 ]
  set_property -dict [ list \
   CONFIG.C_BUFGCE_DIV {2} \
   CONFIG.C_BUF_TYPE {BUFG_GT} \
 ] $ibufds_gt_odiv2

  # Create interface connections
  connect_bd_intf_net -intf_net DRU_CLK_IN_1 [get_bd_intf_pins CLK_IN_D] [get_bd_intf_pins ibufds_gt/CLK_IN_D]

  # Create port connections
  connect_bd_net -net const_vcc_dout [get_bd_pins const_vcc/dout] [get_bd_pins ibufds_gt_odiv2/BUFG_GT_CE]
  connect_bd_net -net ibufds_gt_IBUF_DS_ODIV2 [get_bd_pins ibufds_gt/IBUF_DS_ODIV2] [get_bd_pins ibufds_gt_odiv2/BUFG_GT_I]
  connect_bd_net -net ibufds_gt_IBUF_OUT [get_bd_pins IBUF_OUT] [get_bd_pins ibufds_gt/IBUF_OUT]
  connect_bd_net -net ibufds_gt_odiv2_BUFG_GT_O [get_bd_pins BUFG_GT_O] [get_bd_pins ibufds_gt_odiv2/BUFG_GT_O]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: gpio_aresetn
proc create_hier_cell_gpio_aresetn { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_gpio_aresetn() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 93 -to 0 Din
  create_bd_pin -dir O -from 0 -to 0 Dout
  create_bd_pin -dir O -from 0 -to 0 Dout1
  create_bd_pin -dir O -from 0 -to 0 Dout2
  create_bd_pin -dir O -from 0 -to 0 Dout3
  create_bd_pin -dir O -from 0 -to 0 Dout4
  create_bd_pin -dir O -from 0 -to 0 -type rst Dout5
  create_bd_pin -dir O -from 0 -to 0 -type rst gpio_0
  create_bd_pin -dir O -from 0 -to 0 gpio_1

  # Create instance: frmbuf_1, and set properties
  set frmbuf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 frmbuf_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {16} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $frmbuf_1

  # Create instance: mixer_rst20, and set properties
  set mixer_rst20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 mixer_rst20 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {20} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $mixer_rst20

  # Create instance: rx_scaler_reset0, and set properties
  set rx_scaler_reset0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 rx_scaler_reset0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $rx_scaler_reset0

  # Create instance: tx_frmbuf_rd_aresetn1, and set properties
  set tx_frmbuf_rd_aresetn1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 tx_frmbuf_rd_aresetn1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $tx_frmbuf_rd_aresetn1

  # Create instance: tx_frmbuf_rd_aresetn90, and set properties
  set tx_frmbuf_rd_aresetn90 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 tx_frmbuf_rd_aresetn90 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {90} \
   CONFIG.DIN_TO {90} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $tx_frmbuf_rd_aresetn90

  # Create instance: vcu_rst41, and set properties
  set vcu_rst41 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 vcu_rst41 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {41} \
   CONFIG.DIN_TO {41} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $vcu_rst41

  # Create instance: xlslice14, and set properties
  set xlslice14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice14 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {14} \
   CONFIG.DIN_TO {14} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice14

  # Create instance: xlslice15, and set properties
  set xlslice15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice15 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {15} \
   CONFIG.DIN_WIDTH {94} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice15

  # Create port connections
  connect_bd_net -net frmbuf_1_Dout [get_bd_pins Dout5] [get_bd_pins frmbuf_1/Dout]
  connect_bd_net -net frmbuf_rd_rst_gpio_Dout [get_bd_pins gpio_1] [get_bd_pins tx_frmbuf_rd_aresetn1/Dout]
  connect_bd_net -net frmbuf_wr_rst_gpio_Dout [get_bd_pins gpio_0] [get_bd_pins rx_scaler_reset0/Dout]
  connect_bd_net -net mixer_rst_Dout [get_bd_pins Dout1] [get_bd_pins mixer_rst20/Dout]
  connect_bd_net -net tx_frmbuf_rd_aresetn_2_Dout [get_bd_pins Dout] [get_bd_pins tx_frmbuf_rd_aresetn90/Dout]
  connect_bd_net -net vcu_rst_Dout [get_bd_pins Dout2] [get_bd_pins vcu_rst41/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Dout3] [get_bd_pins xlslice15/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins Dout4] [get_bd_pins xlslice14/Dout]
  connect_bd_net -net zynq_ultra_ps_e_0_emio_gpio_o [get_bd_pins Din] [get_bd_pins frmbuf_1/Din] [get_bd_pins mixer_rst20/Din] [get_bd_pins rx_scaler_reset0/Din] [get_bd_pins tx_frmbuf_rd_aresetn1/Din] [get_bd_pins tx_frmbuf_rd_aresetn90/Din] [get_bd_pins vcu_rst41/Din] [get_bd_pins xlslice14/Din] [get_bd_pins xlslice15/Din]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DRU_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 DRU_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $DRU_CLK

  set HDMI_CTRL_IIC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 HDMI_CTRL_IIC ]

  set RX_DDC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 RX_DDC ]

  set TX_DDC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 TX_DDC ]

  set sensor_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 sensor_iic ]

  set si570_user [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 si570_user ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $si570_user


  # Create ports
  set HDMI_RX_CLK_N [ create_bd_port -dir I HDMI_RX_CLK_N ]
  set HDMI_RX_CLK_P [ create_bd_port -dir I HDMI_RX_CLK_P ]
  set HDMI_RX_DAT_N [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_N ]
  set HDMI_RX_DAT_P [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_P ]
  set HDMI_TX_CLK_N [ create_bd_port -dir O HDMI_TX_CLK_N ]
  set HDMI_TX_CLK_P [ create_bd_port -dir O HDMI_TX_CLK_P ]
  set HDMI_TX_DAT_N [ create_bd_port -dir O -from 2 -to 0 HDMI_TX_DAT_N ]
  set HDMI_TX_DAT_P [ create_bd_port -dir O -from 2 -to 0 HDMI_TX_DAT_P ]
  set LED0 [ create_bd_port -dir O LED0 ]
  set LED1 [ create_bd_port -dir O -from 0 -to 0 LED1 ]
  set LED2 [ create_bd_port -dir O -from 0 -to 0 LED2 ]
  set LED3 [ create_bd_port -dir O -from 0 -to 0 LED3 ]
  set LED4 [ create_bd_port -dir O -from 0 -to 0 LED4 ]
  set LED5 [ create_bd_port -dir O -from 0 -to 0 LED5 ]
  set LED6 [ create_bd_port -dir O LED6 ]
  set LED7 [ create_bd_port -dir O LED7 ]
  set RX_DET [ create_bd_port -dir I RX_DET ]
  set RX_HPD [ create_bd_port -dir O -from 0 -to 0 RX_HPD ]
  set RX_REFCLK_N [ create_bd_port -dir O RX_REFCLK_N ]
  set RX_REFCLK_P [ create_bd_port -dir O RX_REFCLK_P ]
  set SI5319_LOL [ create_bd_port -dir I SI5319_LOL ]
  set SI5319_RST [ create_bd_port -dir O -from 0 -to 0 SI5319_RST ]
  set TX_EN [ create_bd_port -dir O -from 0 -to 0 TX_EN ]
  set TX_HPD [ create_bd_port -dir I TX_HPD ]
  set TX_REFCLK_N [ create_bd_port -dir I TX_REFCLK_N ]
  set TX_REFCLK_P [ create_bd_port -dir I TX_REFCLK_P ]

  # Create instance: axi_intc_0, and set properties
  set axi_intc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_0 ]
  set_property -dict [ list \
   CONFIG.C_ASYNC_INTR {0xFFFFFFFF} \
   CONFIG.C_IRQ_CONNECTION {1} \
   CONFIG.C_IRQ_IS_LEVEL {1} \
 ] $axi_intc_0

  # Create instance: axi_intc_1, and set properties
  set axi_intc_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_1 ]
  set_property -dict [ list \
   CONFIG.C_IRQ_CONNECTION {1} \
 ] $axi_intc_1

  # Create instance: axi_interconnect, and set properties
  set axi_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.NUM_MI {13} \
 ] $axi_interconnect

  # Create instance: axi_interconnect_4, and set properties
  set axi_interconnect_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_4 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {5} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.S01_HAS_REGSLICE {4} \
   CONFIG.S02_HAS_REGSLICE {4} \
   CONFIG.S03_HAS_REGSLICE {4} \
   CONFIG.S04_HAS_REGSLICE {4} \
   CONFIG.S05_HAS_REGSLICE {4} \
   CONFIG.S06_HAS_REGSLICE {4} \
   CONFIG.S07_HAS_REGSLICE {4} \
   CONFIG.S08_HAS_REGSLICE {4} \
   CONFIG.S09_HAS_REGSLICE {4} \
 ] $axi_interconnect_4

  # Create instance: axi_interconnect_5, and set properties
  set axi_interconnect_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_5 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.NUM_MI {1} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_interconnect_5

  # Create instance: axi_interconnect_6, and set properties
  set axi_interconnect_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_6 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {4} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.S01_HAS_REGSLICE {4} \
   CONFIG.S02_HAS_REGSLICE {4} \
   CONFIG.S03_HAS_REGSLICE {4} \
 ] $axi_interconnect_6

  # Create instance: axi_interconnect_8, and set properties
  set axi_interconnect_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_8 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_interconnect_8

  # Create instance: axi_interconnect_lpd, and set properties
  set axi_interconnect_lpd [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_lpd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $axi_interconnect_lpd

  # Create instance: axi_register_slice_0, and set properties
  set axi_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
 ] $axi_register_slice_0

  # Create instance: axi_vip_1, and set properties
  set axi_vip_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INTERFACE_MODE {MASTER} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
 ] $axi_vip_1

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {100.01} \
   CONFIG.CLKOUT1_JITTER {107.579} \
   CONFIG.CLKOUT1_PHASE_ERROR {87.187} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {150} \
   CONFIG.CLKOUT2_JITTER {94.872} \
   CONFIG.CLKOUT2_PHASE_ERROR {87.187} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {300} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {122.171} \
   CONFIG.CLKOUT3_PHASE_ERROR {87.187} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {75} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_JITTER {115.843} \
   CONFIG.CLKOUT4_PHASE_ERROR {87.187} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_JITTER {102.096} \
   CONFIG.CLKOUT5_PHASE_ERROR {87.187} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT5_USED {true} \
   CONFIG.CLKOUT6_JITTER {90.083} \
   CONFIG.CLKOUT6_PHASE_ERROR {87.187} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {400.000} \
   CONFIG.CLKOUT6_USED {true} \
   CONFIG.CLKOUT7_JITTER {83.777} \
   CONFIG.CLKOUT7_PHASE_ERROR {87.187} \
   CONFIG.CLKOUT7_REQUESTED_OUT_FREQ {600.000} \
   CONFIG.CLKOUT7_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {12.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.001} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {4} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {16} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {12} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {6} \
   CONFIG.MMCM_CLKOUT5_DIVIDE {3} \
   CONFIG.MMCM_CLKOUT6_DIVIDE {2} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {7} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {100.000} \
   CONFIG.CLKIN1_UI_JITTER {100.000} \
   CONFIG.CLKIN2_JITTER_PS {100.000} \
   CONFIG.CLKIN2_UI_JITTER {100.000} \
   CONFIG.CLKOUT1_JITTER {130.356} \
   CONFIG.CLKOUT1_PHASE_ERROR {77.836} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.33} \
   CONFIG.CLKOUT2_JITTER {83.751} \
   CONFIG.CLKOUT2_PHASE_ERROR {77.836} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {300} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {90.370} \
   CONFIG.CLKOUT3_PHASE_ERROR {77.836} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_JITTER {103.044} \
   CONFIG.CLKOUT4_PHASE_ERROR {77.836} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.ENABLE_CLOCK_MONITOR {false} \
   CONFIG.JITTER_OPTIONS {PS} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {4.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {3.333} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {36.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {4} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {6} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.MMCM_REF_JITTER1 {0.030} \
   CONFIG.MMCM_REF_JITTER2 {0.010} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.PRIM_IN_FREQ {300.000} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_INCLK_SWITCHOVER {false} \
   CONFIG.USE_PHASE_ALIGNMENT {true} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_1

  # Create instance: gnd_const, and set properties
  set gnd_const [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd_const ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $gnd_const

  # Create instance: gpio_aresetn
  create_hier_cell_gpio_aresetn [current_bd_instance .] gpio_aresetn

  # Create instance: gt_refclk_buf
  create_hier_cell_gt_refclk_buf [current_bd_instance .] gt_refclk_buf

  # Create instance: hdmi_ctrl_iic, and set properties
  set hdmi_ctrl_iic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 hdmi_ctrl_iic ]
  set_property -dict [ list \
   CONFIG.IIC_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $hdmi_ctrl_iic

  # Create instance: hdmi_input
  create_hier_cell_hdmi_input [current_bd_instance .] hdmi_input

  # Create instance: hdmi_output
  create_hier_cell_hdmi_output [current_bd_instance .] hdmi_output

  # Create instance: interconnect_axihpm0fpd, and set properties
  set interconnect_axihpm0fpd [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axihpm0fpd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $interconnect_axihpm0fpd
  set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER {true} [get_bd_cells interconnect_axihpm0fpd]

  # Create instance: interconnect_axilite, and set properties
  set interconnect_axilite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axilite ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $interconnect_axilite
  set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER {fallback} [get_bd_cells interconnect_axilite]

  # Create instance: interrupts1, and set properties
  set interrupts1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 interrupts1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {10} \
 ] $interrupts1

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: proc_sys_reset_2, and set properties
  set proc_sys_reset_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_2 ]

  # Create instance: proc_sys_reset_3, and set properties
  set proc_sys_reset_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_3 ]

  # Create instance: proc_sys_reset_4, and set properties
  set proc_sys_reset_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_4 ]

  # Create instance: proc_sys_reset_5, and set properties
  set proc_sys_reset_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_5 ]

  # Create instance: proc_sys_reset_6, and set properties
  set proc_sys_reset_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_6 ]

  # Create instance: proc_sys_reset_7, and set properties
  set proc_sys_reset_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_7 ]

  # Create instance: proc_sys_reset_8, and set properties
  set proc_sys_reset_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_8 ]

  # Create instance: ps_e, and set properties
  set ps_e [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 ps_e ]
  set_property -dict [ list \
   CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_DDR_RAM_HIGHADDR {0xFFFFFFFF} \
   CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x800000000} \
   CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000} \
   CONFIG.PSU_DYNAMIC_DDR_CONFIG_EN {1} \
   CONFIG.PSU_MIO_0_DIRECTION {out} \
   CONFIG.PSU_MIO_0_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_0_POLARITY {Default} \
   CONFIG.PSU_MIO_10_DIRECTION {inout} \
   CONFIG.PSU_MIO_10_POLARITY {Default} \
   CONFIG.PSU_MIO_11_DIRECTION {inout} \
   CONFIG.PSU_MIO_11_POLARITY {Default} \
   CONFIG.PSU_MIO_12_DIRECTION {out} \
   CONFIG.PSU_MIO_12_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_12_POLARITY {Default} \
   CONFIG.PSU_MIO_13_DIRECTION {inout} \
   CONFIG.PSU_MIO_13_POLARITY {Default} \
   CONFIG.PSU_MIO_14_DIRECTION {inout} \
   CONFIG.PSU_MIO_14_POLARITY {Default} \
   CONFIG.PSU_MIO_15_DIRECTION {inout} \
   CONFIG.PSU_MIO_15_POLARITY {Default} \
   CONFIG.PSU_MIO_16_DIRECTION {inout} \
   CONFIG.PSU_MIO_16_POLARITY {Default} \
   CONFIG.PSU_MIO_17_DIRECTION {inout} \
   CONFIG.PSU_MIO_17_POLARITY {Default} \
   CONFIG.PSU_MIO_18_DIRECTION {in} \
   CONFIG.PSU_MIO_18_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_18_POLARITY {Default} \
   CONFIG.PSU_MIO_18_SLEW {fast} \
   CONFIG.PSU_MIO_19_DIRECTION {out} \
   CONFIG.PSU_MIO_19_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_19_POLARITY {Default} \
   CONFIG.PSU_MIO_1_DIRECTION {inout} \
   CONFIG.PSU_MIO_1_POLARITY {Default} \
   CONFIG.PSU_MIO_20_DIRECTION {out} \
   CONFIG.PSU_MIO_20_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_20_POLARITY {Default} \
   CONFIG.PSU_MIO_21_DIRECTION {in} \
   CONFIG.PSU_MIO_21_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_21_POLARITY {Default} \
   CONFIG.PSU_MIO_21_SLEW {fast} \
   CONFIG.PSU_MIO_22_DIRECTION {inout} \
   CONFIG.PSU_MIO_22_POLARITY {Default} \
   CONFIG.PSU_MIO_23_DIRECTION {inout} \
   CONFIG.PSU_MIO_23_POLARITY {Default} \
   CONFIG.PSU_MIO_24_DIRECTION {out} \
   CONFIG.PSU_MIO_24_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_24_POLARITY {Default} \
   CONFIG.PSU_MIO_25_DIRECTION {in} \
   CONFIG.PSU_MIO_25_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_25_POLARITY {Default} \
   CONFIG.PSU_MIO_25_SLEW {fast} \
   CONFIG.PSU_MIO_26_DIRECTION {inout} \
   CONFIG.PSU_MIO_26_POLARITY {Default} \
   CONFIG.PSU_MIO_27_DIRECTION {out} \
   CONFIG.PSU_MIO_27_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_27_POLARITY {Default} \
   CONFIG.PSU_MIO_28_DIRECTION {in} \
   CONFIG.PSU_MIO_28_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_28_POLARITY {Default} \
   CONFIG.PSU_MIO_28_SLEW {fast} \
   CONFIG.PSU_MIO_29_DIRECTION {out} \
   CONFIG.PSU_MIO_29_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_29_POLARITY {Default} \
   CONFIG.PSU_MIO_2_DIRECTION {inout} \
   CONFIG.PSU_MIO_2_POLARITY {Default} \
   CONFIG.PSU_MIO_30_DIRECTION {in} \
   CONFIG.PSU_MIO_30_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_30_POLARITY {Default} \
   CONFIG.PSU_MIO_30_SLEW {fast} \
   CONFIG.PSU_MIO_31_DIRECTION {inout} \
   CONFIG.PSU_MIO_31_POLARITY {Default} \
   CONFIG.PSU_MIO_32_DIRECTION {out} \
   CONFIG.PSU_MIO_32_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_32_POLARITY {Default} \
   CONFIG.PSU_MIO_33_DIRECTION {out} \
   CONFIG.PSU_MIO_33_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_33_POLARITY {Default} \
   CONFIG.PSU_MIO_34_DIRECTION {out} \
   CONFIG.PSU_MIO_34_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_34_POLARITY {Default} \
   CONFIG.PSU_MIO_35_DIRECTION {out} \
   CONFIG.PSU_MIO_35_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_35_POLARITY {Default} \
   CONFIG.PSU_MIO_36_DIRECTION {out} \
   CONFIG.PSU_MIO_36_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_36_POLARITY {Default} \
   CONFIG.PSU_MIO_37_DIRECTION {out} \
   CONFIG.PSU_MIO_37_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_37_POLARITY {Default} \
   CONFIG.PSU_MIO_38_DIRECTION {inout} \
   CONFIG.PSU_MIO_38_POLARITY {Default} \
   CONFIG.PSU_MIO_39_DIRECTION {inout} \
   CONFIG.PSU_MIO_39_POLARITY {Default} \
   CONFIG.PSU_MIO_3_DIRECTION {inout} \
   CONFIG.PSU_MIO_3_POLARITY {Default} \
   CONFIG.PSU_MIO_40_DIRECTION {inout} \
   CONFIG.PSU_MIO_40_POLARITY {Default} \
   CONFIG.PSU_MIO_41_DIRECTION {inout} \
   CONFIG.PSU_MIO_41_POLARITY {Default} \
   CONFIG.PSU_MIO_42_DIRECTION {inout} \
   CONFIG.PSU_MIO_42_POLARITY {Default} \
   CONFIG.PSU_MIO_43_DIRECTION {out} \
   CONFIG.PSU_MIO_43_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_43_POLARITY {Default} \
   CONFIG.PSU_MIO_44_DIRECTION {in} \
   CONFIG.PSU_MIO_44_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_44_POLARITY {Default} \
   CONFIG.PSU_MIO_44_SLEW {fast} \
   CONFIG.PSU_MIO_45_DIRECTION {in} \
   CONFIG.PSU_MIO_45_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_45_POLARITY {Default} \
   CONFIG.PSU_MIO_45_SLEW {fast} \
   CONFIG.PSU_MIO_46_DIRECTION {inout} \
   CONFIG.PSU_MIO_46_POLARITY {Default} \
   CONFIG.PSU_MIO_47_DIRECTION {inout} \
   CONFIG.PSU_MIO_47_POLARITY {Default} \
   CONFIG.PSU_MIO_48_DIRECTION {inout} \
   CONFIG.PSU_MIO_48_POLARITY {Default} \
   CONFIG.PSU_MIO_49_DIRECTION {inout} \
   CONFIG.PSU_MIO_49_POLARITY {Default} \
   CONFIG.PSU_MIO_4_DIRECTION {inout} \
   CONFIG.PSU_MIO_4_POLARITY {Default} \
   CONFIG.PSU_MIO_50_DIRECTION {inout} \
   CONFIG.PSU_MIO_50_POLARITY {Default} \
   CONFIG.PSU_MIO_51_DIRECTION {out} \
   CONFIG.PSU_MIO_51_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_51_POLARITY {Default} \
   CONFIG.PSU_MIO_52_DIRECTION {in} \
   CONFIG.PSU_MIO_52_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_52_POLARITY {Default} \
   CONFIG.PSU_MIO_52_SLEW {fast} \
   CONFIG.PSU_MIO_53_DIRECTION {in} \
   CONFIG.PSU_MIO_53_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_53_POLARITY {Default} \
   CONFIG.PSU_MIO_53_SLEW {fast} \
   CONFIG.PSU_MIO_54_DIRECTION {inout} \
   CONFIG.PSU_MIO_54_POLARITY {Default} \
   CONFIG.PSU_MIO_55_DIRECTION {in} \
   CONFIG.PSU_MIO_55_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_55_POLARITY {Default} \
   CONFIG.PSU_MIO_55_SLEW {fast} \
   CONFIG.PSU_MIO_56_DIRECTION {inout} \
   CONFIG.PSU_MIO_56_POLARITY {Default} \
   CONFIG.PSU_MIO_57_DIRECTION {inout} \
   CONFIG.PSU_MIO_57_POLARITY {Default} \
   CONFIG.PSU_MIO_58_DIRECTION {out} \
   CONFIG.PSU_MIO_58_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_58_POLARITY {Default} \
   CONFIG.PSU_MIO_59_DIRECTION {inout} \
   CONFIG.PSU_MIO_59_POLARITY {Default} \
   CONFIG.PSU_MIO_5_DIRECTION {out} \
   CONFIG.PSU_MIO_5_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_5_POLARITY {Default} \
   CONFIG.PSU_MIO_60_DIRECTION {inout} \
   CONFIG.PSU_MIO_60_POLARITY {Default} \
   CONFIG.PSU_MIO_61_DIRECTION {inout} \
   CONFIG.PSU_MIO_61_POLARITY {Default} \
   CONFIG.PSU_MIO_62_DIRECTION {inout} \
   CONFIG.PSU_MIO_62_POLARITY {Default} \
   CONFIG.PSU_MIO_63_DIRECTION {inout} \
   CONFIG.PSU_MIO_63_POLARITY {Default} \
   CONFIG.PSU_MIO_64_DIRECTION {out} \
   CONFIG.PSU_MIO_64_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_64_POLARITY {Default} \
   CONFIG.PSU_MIO_65_DIRECTION {out} \
   CONFIG.PSU_MIO_65_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_65_POLARITY {Default} \
   CONFIG.PSU_MIO_66_DIRECTION {out} \
   CONFIG.PSU_MIO_66_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_66_POLARITY {Default} \
   CONFIG.PSU_MIO_67_DIRECTION {out} \
   CONFIG.PSU_MIO_67_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_67_POLARITY {Default} \
   CONFIG.PSU_MIO_68_DIRECTION {out} \
   CONFIG.PSU_MIO_68_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_68_POLARITY {Default} \
   CONFIG.PSU_MIO_69_DIRECTION {out} \
   CONFIG.PSU_MIO_69_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_69_POLARITY {Default} \
   CONFIG.PSU_MIO_6_DIRECTION {out} \
   CONFIG.PSU_MIO_6_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_6_POLARITY {Default} \
   CONFIG.PSU_MIO_70_DIRECTION {in} \
   CONFIG.PSU_MIO_70_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_70_POLARITY {Default} \
   CONFIG.PSU_MIO_70_SLEW {fast} \
   CONFIG.PSU_MIO_71_DIRECTION {in} \
   CONFIG.PSU_MIO_71_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_71_POLARITY {Default} \
   CONFIG.PSU_MIO_71_SLEW {fast} \
   CONFIG.PSU_MIO_72_DIRECTION {in} \
   CONFIG.PSU_MIO_72_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_72_POLARITY {Default} \
   CONFIG.PSU_MIO_72_SLEW {fast} \
   CONFIG.PSU_MIO_73_DIRECTION {in} \
   CONFIG.PSU_MIO_73_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_73_POLARITY {Default} \
   CONFIG.PSU_MIO_73_SLEW {fast} \
   CONFIG.PSU_MIO_74_DIRECTION {in} \
   CONFIG.PSU_MIO_74_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_74_POLARITY {Default} \
   CONFIG.PSU_MIO_74_SLEW {fast} \
   CONFIG.PSU_MIO_75_DIRECTION {in} \
   CONFIG.PSU_MIO_75_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_75_POLARITY {Default} \
   CONFIG.PSU_MIO_75_SLEW {fast} \
   CONFIG.PSU_MIO_76_DIRECTION {out} \
   CONFIG.PSU_MIO_76_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_76_POLARITY {Default} \
   CONFIG.PSU_MIO_77_DIRECTION {inout} \
   CONFIG.PSU_MIO_77_POLARITY {Default} \
   CONFIG.PSU_MIO_7_DIRECTION {out} \
   CONFIG.PSU_MIO_7_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_7_POLARITY {Default} \
   CONFIG.PSU_MIO_8_DIRECTION {inout} \
   CONFIG.PSU_MIO_8_POLARITY {Default} \
   CONFIG.PSU_MIO_9_DIRECTION {inout} \
   CONFIG.PSU_MIO_9_POLARITY {Default} \
   CONFIG.PSU_MIO_TREE_PERIPHERALS {Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Feedback Clk#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO0 MIO#I2C 0#I2C 0#I2C 1#I2C 1#UART 0#UART 0#UART 1#UART 1#GPIO0 MIO#GPIO0 MIO#CAN 1#CAN 1#GPIO1 MIO#DPAUX#DPAUX#DPAUX#DPAUX#GPIO1 MIO#PMU GPO 0#PMU GPO 1#PMU GPO 2#PMU GPO 3#PMU GPO 4#PMU GPO 5#GPIO1 MIO#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#MDIO 3#MDIO 3} \
   CONFIG.PSU_MIO_TREE_SIGNALS {sclk_out#miso_mo1#mo2#mo3#mosi_mi0#n_ss_out#clk_for_lpbk#n_ss_out_upper#mo_upper[0]#mo_upper[1]#mo_upper[2]#mo_upper[3]#sclk_out_upper#gpio0[13]#scl_out#sda_out#scl_out#sda_out#rxd#txd#txd#rxd#gpio0[22]#gpio0[23]#phy_tx#phy_rx#gpio1[26]#dp_aux_data_out#dp_hot_plug_detect#dp_aux_data_oe#dp_aux_data_in#gpio1[31]#gpo[0]#gpo[1]#gpo[2]#gpo[3]#gpo[4]#gpo[5]#gpio1[38]#sdio1_data_out[4]#sdio1_data_out[5]#sdio1_data_out[6]#sdio1_data_out[7]#sdio1_bus_pow#sdio1_wp#sdio1_cd_n#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#ulpi_clk_in#ulpi_dir#ulpi_tx_data[2]#ulpi_nxt#ulpi_tx_data[0]#ulpi_tx_data[1]#ulpi_stp#ulpi_tx_data[3]#ulpi_tx_data[4]#ulpi_tx_data[5]#ulpi_tx_data[6]#ulpi_tx_data[7]#rgmii_tx_clk#rgmii_txd[0]#rgmii_txd[1]#rgmii_txd[2]#rgmii_txd[3]#rgmii_tx_ctl#rgmii_rx_clk#rgmii_rxd[0]#rgmii_rxd[1]#rgmii_rxd[2]#rgmii_rxd[3]#rgmii_rx_ctl#gem3_mdc#gem3_mdio_out} \
   CONFIG.PSU_SD1_INTERNAL_BUS_WIDTH {8} \
   CONFIG.PSU_USB3__DUAL_CLOCK_ENABLE {1} \
   CONFIG.PSU__ACT_DDR_FREQ_MHZ {1066.560059} \
   CONFIG.PSU__AFI0_COHERENCY {0} \
   CONFIG.PSU__CAN1__GRP_CLK__ENABLE {0} \
   CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__CAN1__PERIPHERAL__IO {MIO 24 .. 25} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1199.880127} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1200} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {72} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.975021} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.975021} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {533.280029} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1067} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {599.940063} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {APLL} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {64} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ {24.997501} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRF_APB__DP_AUDIO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ {26.783037} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {14} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ {299.970032} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {599.940063} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {APLL} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {499.950043} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__ACT_FREQMHZ {249.975021} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {533.280029} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {533.33} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {499.950043} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {49.995003} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {30} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {499.950043} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.975021} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1499.850098} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ {124.987511} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ {249.975021} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {249.975021} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {499.950043} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {187.481262} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ {124.987511} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {45} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {187.481262} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ {249.975021} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ {19.998001} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {25} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {3} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB3__ENABLE {1} \
   CONFIG.PSU__CSUPMU__PERIPHERAL__VALID {1} \
   CONFIG.PSU__DDRC__ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
   CONFIG.PSU__DDRC__BG_ADDR_COUNT {2} \
   CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
   CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
   CONFIG.PSU__DDRC__CL {15} \
   CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
   CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
   CONFIG.PSU__DDRC__COMPONENTS {UDIMM} \
   CONFIG.PSU__DDRC__CWL {14} \
   CONFIG.PSU__DDRC__DDR3L_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {0} \
   CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
   CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
   CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
   CONFIG.PSU__DDRC__DQMAP_0_3 {0} \
   CONFIG.PSU__DDRC__DQMAP_12_15 {0} \
   CONFIG.PSU__DDRC__DQMAP_16_19 {0} \
   CONFIG.PSU__DDRC__DQMAP_20_23 {0} \
   CONFIG.PSU__DDRC__DQMAP_24_27 {0} \
   CONFIG.PSU__DDRC__DQMAP_28_31 {0} \
   CONFIG.PSU__DDRC__DQMAP_32_35 {0} \
   CONFIG.PSU__DDRC__DQMAP_36_39 {0} \
   CONFIG.PSU__DDRC__DQMAP_40_43 {0} \
   CONFIG.PSU__DDRC__DQMAP_44_47 {0} \
   CONFIG.PSU__DDRC__DQMAP_48_51 {0} \
   CONFIG.PSU__DDRC__DQMAP_4_7 {0} \
   CONFIG.PSU__DDRC__DQMAP_52_55 {0} \
   CONFIG.PSU__DDRC__DQMAP_56_59 {0} \
   CONFIG.PSU__DDRC__DQMAP_60_63 {0} \
   CONFIG.PSU__DDRC__DQMAP_64_67 {0} \
   CONFIG.PSU__DDRC__DQMAP_68_71 {0} \
   CONFIG.PSU__DDRC__DQMAP_8_11 {0} \
   CONFIG.PSU__DDRC__DRAM_WIDTH {8 Bits} \
   CONFIG.PSU__DDRC__ECC {Disabled} \
   CONFIG.PSU__DDRC__ENABLE_LP4_HAS_ECC_COMP {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_SLOWBOOT {0} \
   CONFIG.PSU__DDRC__FGRM {1X} \
   CONFIG.PSU__DDRC__LPDDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LPDDR4_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LP_ASR {manual normal} \
   CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
   CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
   CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
   CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
   CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
   CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
   CONFIG.PSU__DDRC__SB_TARGET {15-15-15} \
   CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
   CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2133P} \
   CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
   CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
   CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
   CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
   CONFIG.PSU__DDRC__T_FAW {30.0} \
   CONFIG.PSU__DDRC__T_RAS_MIN {33} \
   CONFIG.PSU__DDRC__T_RC {47.06} \
   CONFIG.PSU__DDRC__T_RCD {15} \
   CONFIG.PSU__DDRC__T_RP {15} \
   CONFIG.PSU__DDRC__VENDOR_PART {OTHERS} \
   CONFIG.PSU__DDRC__VREF {1} \
   CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {1} \
   CONFIG.PSU__DDR__INTERFACE__FREQMHZ {533.500} \
   CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {1} \
   CONFIG.PSU__DISPLAYPORT__LANE0__IO {GT Lane1} \
   CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {1} \
   CONFIG.PSU__DISPLAYPORT__LANE1__IO {GT Lane0} \
   CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__DLL__ISUSED {1} \
   CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 27 .. 30} \
   CONFIG.PSU__DP__LANE_SEL {Dual Lower} \
   CONFIG.PSU__DP__REF_CLK_FREQ {27} \
   CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk3} \
   CONFIG.PSU__ENET3__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} \
   CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} \
   CONFIG.PSU__ENET3__PTP__ENABLE {0} \
   CONFIG.PSU__ENET3__TSU__ENABLE {0} \
   CONFIG.PSU__FPDMASTERS_COHERENCY {0} \
   CONFIG.PSU__FPD_SLCR__WDT1__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__FPD_SLCR__WDT1__FREQMHZ {99.990005} \
   CONFIG.PSU__FPD_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__FPGA_PL0_ENABLE {1} \
   CONFIG.PSU__FPGA_PL1_ENABLE {1} \
   CONFIG.PSU__GEM3_COHERENCY {0} \
   CONFIG.PSU__GEM3_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM__TSU__ENABLE {0} \
   CONFIG.PSU__GPIO0_MIO__IO {MIO 0 .. 25} \
   CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51} \
   CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO_EMIO_WIDTH {94} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO {94} \
   CONFIG.PSU__GPIO_EMIO__WIDTH {[93:0]} \
   CONFIG.PSU__GT__LINK_SPEED {HBR} \
   CONFIG.PSU__GT__PRE_EMPH_LVL_4 {0} \
   CONFIG.PSU__GT__VLT_SWNG_LVL_4 {0} \
   CONFIG.PSU__HIGH_ADDRESS__ENABLE {1} \
   CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15} \
   CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 16 .. 17} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__WDT0__ACT_FREQMHZ {99.990005} \
   CONFIG.PSU__IOU_SLCR__WDT0__FREQMHZ {99.990005} \
   CONFIG.PSU__IOU_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__FREQMHZ {100.000000} \
   CONFIG.PSU__MAXIGP0__DATA_WIDTH {128} \
   CONFIG.PSU__MAXIGP1__DATA_WIDTH {128} \
   CONFIG.PSU__MAXIGP2__DATA_WIDTH {32} \
   CONFIG.PSU__NUM_FABRIC_RESETS {2} \
   CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} \
   CONFIG.PSU__PL_CLK0_BUF {TRUE} \
   CONFIG.PSU__PL_CLK1_BUF {TRUE} \
   CONFIG.PSU__PMU_COHERENCY {0} \
   CONFIG.PSU__PMU__AIBACK__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPI__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPO__ENABLE {0} \
   CONFIG.PSU__PMU__GPI0__ENABLE {0} \
   CONFIG.PSU__PMU__GPI1__ENABLE {0} \
   CONFIG.PSU__PMU__GPI2__ENABLE {0} \
   CONFIG.PSU__PMU__GPI3__ENABLE {0} \
   CONFIG.PSU__PMU__GPI4__ENABLE {0} \
   CONFIG.PSU__PMU__GPI5__ENABLE {0} \
   CONFIG.PSU__PMU__GPO0__ENABLE {1} \
   CONFIG.PSU__PMU__GPO0__IO {MIO 32} \
   CONFIG.PSU__PMU__GPO1__ENABLE {1} \
   CONFIG.PSU__PMU__GPO1__IO {MIO 33} \
   CONFIG.PSU__PMU__GPO2__ENABLE {1} \
   CONFIG.PSU__PMU__GPO2__IO {MIO 34} \
   CONFIG.PSU__PMU__GPO2__POLARITY {low} \
   CONFIG.PSU__PMU__GPO3__ENABLE {1} \
   CONFIG.PSU__PMU__GPO3__IO {MIO 35} \
   CONFIG.PSU__PMU__GPO3__POLARITY {low} \
   CONFIG.PSU__PMU__GPO4__ENABLE {1} \
   CONFIG.PSU__PMU__GPO4__IO {MIO 36} \
   CONFIG.PSU__PMU__GPO4__POLARITY {low} \
   CONFIG.PSU__PMU__GPO5__ENABLE {1} \
   CONFIG.PSU__PMU__GPO5__IO {MIO 37} \
   CONFIG.PSU__PMU__GPO5__POLARITY {low} \
   CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__PMU__PLERROR__ENABLE {0} \
   CONFIG.PSU__PRESET_APPLIED {1} \
   CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;0|USB0:NonSecure;1|S_AXI_LPD:NA;1|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;1|S_AXI_HP3_FPD:NA;1|S_AXI_HP2_FPD:NA;1|S_AXI_HP1_FPD:NA;1|S_AXI_HP0_FPD:NA;0|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:NonSecure;1|SD0:NonSecure;0|SATA1:NonSecure;1|SATA0:NonSecure;1|RPU1:Secure;1|RPU0:Secure;1|QSPI:NonSecure;1|PMU:NA;1|PCIe:NonSecure;0|NAND:NonSecure;0|LDMA:NonSecure;1|GPU:NonSecure;1|GEM3:NonSecure;1|GEM2:NonSecure;0|GEM1:NonSecure;0|GEM0:NonSecure;0|FDMA:NonSecure;1|DP:NonSecure;1|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1} \
   CONFIG.PSU__PROTECTION__SLAVES { \
     LPD;USB3_1_XHCI;FE300000;FE3FFFFF;0|LPD;USB3_1;FF9E0000;FF9EFFFF;0|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;1|LPD;USB3_0;FF9D0000;FF9DFFFF;1|LPD;UART1;FF010000;FF01FFFF;1|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;1|LPD;TTC2;FF130000;FF13FFFF;1|LPD;TTC1;FF120000;FF12FFFF;1|LPD;TTC0;FF110000;FF11FFFF;1|FPD;SWDT1;FD4D0000;FD4DFFFF;1|LPD;SWDT0;FF150000;FF15FFFF;1|LPD;SPI1;FF050000;FF05FFFF;0|LPD;SPI0;FF040000;FF04FFFF;0|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;0|FPD;SATA;FD0C0000;FD0CFFFF;1|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;1|LPD;PMU_RAM;FFDC0000;FFDDFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;0|FPD;PCIE_LOW;E0000000;EFFFFFFF;0|FPD;PCIE_HIGH2;8000000000;BFFFFFFFFF;0|FPD;PCIE_HIGH1;600000000;7FFFFFFFF;0|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;0|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;0|LPD;OCM_XMPU_CFG;FFA70000;FFA7FFFF;1|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_XPPU;FF980000;FF98FFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LPD_DMA_7;FFAF0000;FFAFFFFF;1|LPD;LPD_DMA_6;FFAE0000;FFAEFFFF;1|LPD;LPD_DMA_5;FFAD0000;FFADFFFF;1|LPD;LPD_DMA_4;FFAC0000;FFACFFFF;1|LPD;LPD_DMA_3;FFAB0000;FFABFFFF;1|LPD;LPD_DMA_2;FFAA0000;FFAAFFFF;1|LPD;LPD_DMA_1;FFA90000;FFA9FFFF;1|LPD;LPD_DMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;1|LPD;I2C0;FF020000;FF02FFFF;1|FPD;GPU;FD4B0000;FD4BFFFF;1|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;1|LPD;GEM2;FF0D0000;FF0DFFFF;0|LPD;GEM1;FF0C0000;FF0CFFFF;0|LPD;GEM0;FF0B0000;FF0BFFFF;0|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_DMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_DMA_CH6;FD560000;FD56FFFF;1|FPD;FPD_DMA_CH5;FD550000;FD55FFFF;1|FPD;FPD_DMA_CH4;FD540000;FD54FFFF;1|FPD;FPD_DMA_CH3;FD530000;FD53FFFF;1|FPD;FPD_DMA_CH2;FD520000;FD52FFFF;1|FPD;FPD_DMA_CH1;FD510000;FD51FFFF;1|FPD;FPD_DMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;1|FPD;DPDMA;FD4C0000;FD4CFFFF;1|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;87FFFFFFF;1|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_DMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;1|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;1|LPD;CAN0;FF060000;FF06FFFF;0|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9010000;F907FFFF;1 \
   } \
   CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.330} \
   CONFIG.PSU__QSPI_COHERENCY {0} \
   CONFIG.PSU__QSPI_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {1} \
   CONFIG.PSU__QSPI__GRP_FBCLK__IO {MIO 6} \
   CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
   CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 12} \
   CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} \
   CONFIG.PSU__SATA__LANE0__ENABLE {0} \
   CONFIG.PSU__SATA__LANE1__ENABLE {1} \
   CONFIG.PSU__SATA__LANE1__IO {GT Lane3} \
   CONFIG.PSU__SATA__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SATA__REF_CLK_FREQ {125} \
   CONFIG.PSU__SATA__REF_CLK_SEL {Ref Clk1} \
   CONFIG.PSU__SAXIGP0__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP3__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP4__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP5__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP6__DATA_WIDTH {32} \
   CONFIG.PSU__SD1_COHERENCY {0} \
   CONFIG.PSU__SD1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD1__DATA_TRANSFER_MODE {8Bit} \
   CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
   CONFIG.PSU__SD1__GRP_POW__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_POW__IO {MIO 43} \
   CONFIG.PSU__SD1__GRP_WP__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_WP__IO {MIO 44} \
   CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 39 .. 51} \
   CONFIG.PSU__SD1__RESET__ENABLE {0} \
   CONFIG.PSU__SD1__SLOT_TYPE {SD 3.0} \
   CONFIG.PSU__SWDT0__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SWDT0__RESET__ENABLE {0} \
   CONFIG.PSU__SWDT1__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SWDT1__RESET__ENABLE {0} \
   CONFIG.PSU__TSU__BUFG_PORT_PAIR {0} \
   CONFIG.PSU__TTC0__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC0__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC1__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC1__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC2__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC2__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC3__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC3__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__UART0__BAUD_RATE {115200} \
   CONFIG.PSU__UART0__MODEM__ENABLE {0} \
   CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} \
   CONFIG.PSU__UART1__BAUD_RATE {115200} \
   CONFIG.PSU__UART1__MODEM__ENABLE {0} \
   CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 20 .. 21} \
   CONFIG.PSU__USB0_COHERENCY {0} \
   CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63} \
   CONFIG.PSU__USB0__REF_CLK_FREQ {26} \
   CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk2} \
   CONFIG.PSU__USB0__RESET__ENABLE {0} \
   CONFIG.PSU__USB1__RESET__ENABLE {0} \
   CONFIG.PSU__USB2_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
   CONFIG.PSU__USB__RESET__MODE {Boot Pin} \
   CONFIG.PSU__USB__RESET__POLARITY {Active Low} \
   CONFIG.PSU__USE__IRQ0 {1} \
   CONFIG.PSU__USE__IRQ1 {1} \
   CONFIG.PSU__USE__M_AXI_GP0 {1} \
   CONFIG.PSU__USE__M_AXI_GP1 {1} \
   CONFIG.PSU__USE__M_AXI_GP2 {1} \
   CONFIG.PSU__USE__S_AXI_GP0 {1} \
   CONFIG.PSU__USE__S_AXI_GP3 {1} \
   CONFIG.PSU__USE__S_AXI_GP4 {1} \
   CONFIG.PSU__USE__S_AXI_GP5 {1} \
   CONFIG.PSU__USE__S_AXI_GP6 {1} \
   CONFIG.SUBPRESET1 {Custom} \
 ] $ps_e

  # Create instance: rx_hdmi_hb_0, and set properties
  set rx_hdmi_hb_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hdmi_hb:1.0 rx_hdmi_hb_0 ]

  # Create instance: sensor_iic_0, and set properties
  set sensor_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 sensor_iic_0 ]
  set_property -dict [ list \
   CONFIG.IIC_FREQ_KHZ {400} \
 ] $sensor_iic_0

  # Create instance: tx_hdmi_hb_0, and set properties
  set tx_hdmi_hb_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hdmi_hb:1.0 tx_hdmi_hb_0 ]

  # Create instance: v_multi_scaler_0, and set properties
  set v_multi_scaler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_multi_scaler:1.2 v_multi_scaler_0 ]
  set_property -dict [ list \
   CONFIG.AXIMM_ADDR_WIDTH {64} \
   CONFIG.HAS_BGR8 {1} \
   CONFIG.HAS_BGRX8 {0} \
   CONFIG.HAS_RGBX8 {0} \
   CONFIG.HAS_UYVY8 {0} \
   CONFIG.HAS_Y8 {0} \
   CONFIG.HAS_YUV8 {0} \
   CONFIG.HAS_YUVX8 {0} \
   CONFIG.HAS_YUYV8 {0} \
   CONFIG.HAS_Y_UV8 {1} \
   CONFIG.HAS_Y_UV8_420 {1} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_NR_PLANES {2} \
   CONFIG.MAX_OUTS {1} \
   CONFIG.MAX_ROWS {2160} \
 ] $v_multi_scaler_0

  # Create instance: vcc_const, and set properties
  set vcc_const [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc_const ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $vcc_const

  # Create instance: vcu_0, and set properties
  set vcu_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vcu:1.2 vcu_0 ]
  set_property -dict [ list \
   CONFIG.ENC_BUFFER_B_FRAME {1} \
   CONFIG.ENC_BUFFER_EN {true} \
   CONFIG.ENC_BUFFER_MOTION_VEC_RANGE {1} \
   CONFIG.ENC_BUFFER_SIZE {1285} \
   CONFIG.ENC_BUFFER_SIZE_ACTUAL {1445} \
   CONFIG.ENC_CODING_TYPE {1} \
   CONFIG.ENC_COLOR_DEPTH {0} \
   CONFIG.ENC_COLOR_FORMAT {0} \
   CONFIG.ENC_MEM_URAM_USED {1445} \
   CONFIG.TABLE_NO {2} \
 ] $vcu_0

  # Create instance: vid_phy_controller, and set properties
  set vid_phy_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:vid_phy_controller:2.2 vid_phy_controller ]
  set_property -dict [ list \
   CONFIG.CHANNEL_ENABLE {X0Y0 X0Y1 X0Y2} \
   CONFIG.CHANNEL_SITE {X0Y0} \
   CONFIG.C_FOR_UPGRADE_ARCHITECTURE {placeholder} \
   CONFIG.C_FOR_UPGRADE_DEVICE {placeholder} \
   CONFIG.C_FOR_UPGRADE_MAXOPTVOL {0.00} \
   CONFIG.C_FOR_UPGRADE_PACKAGE {placeholder} \
   CONFIG.C_FOR_UPGRADE_PART {placeholder} \
   CONFIG.C_FOR_UPGRADE_REFVOL {0.00} \
   CONFIG.C_FOR_UPGRADE_SPEEDGRADE {0} \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {2} \
   CONFIG.C_INT_HDMI_VER_CMPTBLE {3} \
   CONFIG.C_NIDRU {true} \
   CONFIG.C_NIDRU_REFCLK_SEL {5} \
   CONFIG.C_RX_PLL_SELECTION {0} \
   CONFIG.C_RX_REFCLK_SEL {1} \
   CONFIG.C_Rx_No_Of_Channels {3} \
   CONFIG.C_Rx_Protocol {HDMI} \
   CONFIG.C_TX_PLL_SELECTION {6} \
   CONFIG.C_TX_REFCLK_SEL {0} \
   CONFIG.C_Tx_No_Of_Channels {3} \
   CONFIG.C_Tx_Protocol {HDMI} \
   CONFIG.C_Txrefclk_Rdy_Invert {true} \
   CONFIG.C_Use_Oddr_for_Tmds_Clkout {true} \
   CONFIG.C_vid_phy_rx_axi4s_ch_INT_TDATA_WIDTH {20} \
   CONFIG.C_vid_phy_rx_axi4s_ch_TDATA_WIDTH {20} \
   CONFIG.C_vid_phy_rx_axi4s_ch_TUSER_WIDTH {1} \
   CONFIG.C_vid_phy_tx_axi4s_ch_INT_TDATA_WIDTH {20} \
   CONFIG.C_vid_phy_tx_axi4s_ch_TDATA_WIDTH {20} \
   CONFIG.C_vid_phy_tx_axi4s_ch_TUSER_WIDTH {1} \
   CONFIG.DRPCLK_FREQ {100.0} \
   CONFIG.Rx_GT_Line_Rate {5.94} \
   CONFIG.Rx_GT_Ref_Clock_Freq {297} \
   CONFIG.Rx_Max_GT_Line_Rate {5.94} \
   CONFIG.Tx_Buffer_Bypass {true} \
   CONFIG.Tx_GT_Line_Rate {5.94} \
   CONFIG.Tx_GT_Ref_Clock_Freq {297} \
   CONFIG.Tx_Max_GT_Line_Rate {5.94} \
 ] $vid_phy_controller

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {1} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net CLK_IN1_D_0_2 [get_bd_intf_ports si570_user] [get_bd_intf_pins clk_wiz_1/CLK_IN1_D]
  connect_bd_intf_net -intf_net DRU_CLK [get_bd_intf_ports DRU_CLK] [get_bd_intf_pins gt_refclk_buf/CLK_IN_D]
  connect_bd_intf_net -intf_net RX_DDC [get_bd_intf_ports RX_DDC] [get_bd_intf_pins hdmi_input/DDC]
  connect_bd_intf_net -intf_net S04_AXI_1 [get_bd_intf_pins axi_interconnect_4/S04_AXI] [get_bd_intf_pins hdmi_output/m_axi_mm_video3]
  connect_bd_intf_net -intf_net SB_STATUS_IN_1 [get_bd_intf_pins hdmi_output/SB_STATUS] [get_bd_intf_pins vid_phy_controller/vid_phy_status_sb_tx]
connect_bd_intf_net -intf_net [get_bd_intf_nets SB_STATUS_IN_1] [get_bd_intf_pins hdmi_output/SB_STATUS] [get_bd_intf_pins tx_hdmi_hb_0/status_sb]
  connect_bd_intf_net -intf_net S_AXI_CPU_1 [get_bd_intf_pins axi_interconnect/M02_AXI] [get_bd_intf_pins hdmi_output/S_AXI_CPU]
  connect_bd_intf_net -intf_net TX_DDC [get_bd_intf_ports TX_DDC] [get_bd_intf_pins hdmi_output/DDC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_intc_0/s_axi] [get_bd_intf_pins interconnect_axilite/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_4_M00_AXI [get_bd_intf_pins axi_interconnect_4/M00_AXI] [get_bd_intf_pins ps_e/S_AXI_HP2_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_5_M00_AXI [get_bd_intf_pins axi_interconnect_5/M00_AXI] [get_bd_intf_pins ps_e/S_AXI_HPC0_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_6_M00_AXI [get_bd_intf_pins axi_interconnect_6/M00_AXI] [get_bd_intf_pins ps_e/S_AXI_HP3_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_8_M00_AXI [get_bd_intf_pins axi_interconnect_8/M00_AXI] [get_bd_intf_pins ps_e/S_AXI_HP1_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_lpd_M00_AXI [get_bd_intf_pins axi_interconnect_lpd/M00_AXI] [get_bd_intf_pins ps_e/S_AXI_LPD]
  connect_bd_intf_net -intf_net axi_vip_1_M_AXI [get_bd_intf_pins axi_interconnect_lpd/S00_AXI] [get_bd_intf_pins axi_vip_1/M_AXI]
  connect_bd_intf_net -intf_net hdmi_input_M_AXI2 [get_bd_intf_pins axi_interconnect_8/S00_AXI] [get_bd_intf_pins hdmi_input/M_AXI2]
  connect_bd_intf_net -intf_net hdmi_output_LINK_DATA0 [get_bd_intf_pins hdmi_output/LINK_DATA0] [get_bd_intf_pins vid_phy_controller/vid_phy_tx_axi4s_ch0]
  connect_bd_intf_net -intf_net hdmi_output_LINK_DATA1 [get_bd_intf_pins hdmi_output/LINK_DATA1] [get_bd_intf_pins vid_phy_controller/vid_phy_tx_axi4s_ch1]
  connect_bd_intf_net -intf_net hdmi_output_LINK_DATA2 [get_bd_intf_pins hdmi_output/LINK_DATA2] [get_bd_intf_pins vid_phy_controller/vid_phy_tx_axi4s_ch2]
  connect_bd_intf_net -intf_net hdmi_output_m_axi_mm_video1_0 [get_bd_intf_pins axi_interconnect_4/S02_AXI] [get_bd_intf_pins hdmi_output/m_axi_mm_video1_0]
  connect_bd_intf_net -intf_net hdmi_output_m_axi_mm_video2_0 [get_bd_intf_pins axi_interconnect_4/S03_AXI] [get_bd_intf_pins hdmi_output/m_axi_mm_video2_0]
  connect_bd_intf_net -intf_net hdmi_output_m_axi_mm_video_0 [get_bd_intf_pins axi_interconnect_4/S01_AXI] [get_bd_intf_pins hdmi_output/m_axi_mm_video_0]
  connect_bd_intf_net -intf_net interconnect_axihpm0fpd_M00_AXI [get_bd_intf_pins axi_register_slice_0/S_AXI] [get_bd_intf_pins interconnect_axihpm0fpd/M00_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M04_AXI [get_bd_intf_pins axi_interconnect/M04_AXI] [get_bd_intf_pins hdmi_ctrl_iic/S_AXI]
  connect_bd_intf_net -intf_net mpsoc_ss_IIC [get_bd_intf_ports HDMI_CTRL_IIC] [get_bd_intf_pins hdmi_ctrl_iic/IIC]
  connect_bd_intf_net -intf_net mpsoc_ss_M00_AXI [get_bd_intf_pins axi_interconnect/M00_AXI] [get_bd_intf_pins vid_phy_controller/vid_phy_axi4lite]
  connect_bd_intf_net -intf_net mpsoc_ss_M01_AXI [get_bd_intf_pins axi_interconnect/M01_AXI] [get_bd_intf_pins hdmi_input/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net mpsoc_ss_M03_AXI [get_bd_intf_pins axi_interconnect/M03_AXI] [get_bd_intf_pins hdmi_input/s_axi_CTRL]
  connect_bd_intf_net -intf_net mpsoc_ss_M06_AXI [get_bd_intf_pins axi_interconnect/M06_AXI] [get_bd_intf_pins hdmi_input/s_axi_ctrl4]
  connect_bd_intf_net -intf_net mpsoc_ss_M08_AXI_0 [get_bd_intf_pins axi_interconnect/M08_AXI] [get_bd_intf_pins vcu_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net mpsoc_ss_M09_AXI_0 [get_bd_intf_pins axi_interconnect/M09_AXI] [get_bd_intf_pins v_multi_scaler_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net mpsoc_ss_M11_AXI [get_bd_intf_pins axi_intc_1/s_axi] [get_bd_intf_pins axi_interconnect/M11_AXI]
  connect_bd_intf_net -intf_net mpsoc_ss_M18_AXI_0 [get_bd_intf_pins axi_interconnect/M10_AXI] [get_bd_intf_pins sensor_iic_0/S_AXI]
  connect_bd_intf_net -intf_net ps_e_0_M_AXI_HPM0_LPD [get_bd_intf_pins interconnect_axilite/S00_AXI] [get_bd_intf_pins ps_e/M_AXI_HPM0_LPD]
  connect_bd_intf_net -intf_net ps_e_M_AXI_HPM0_FPD [get_bd_intf_pins axi_interconnect/S00_AXI] [get_bd_intf_pins ps_e/M_AXI_HPM0_FPD]
  connect_bd_intf_net -intf_net ps_e_M_AXI_HPM1_FPD [get_bd_intf_pins interconnect_axihpm0fpd/S00_AXI] [get_bd_intf_pins ps_e/M_AXI_HPM1_FPD]
  connect_bd_intf_net -intf_net s_axi_ctrl_frm_rd_1 [get_bd_intf_pins axi_interconnect/M05_AXI] [get_bd_intf_pins hdmi_output/s_axi_ctrl_frm_rd]
  connect_bd_intf_net -intf_net s_axi_ctrl_mixer_1 [get_bd_intf_pins axi_interconnect/M07_AXI] [get_bd_intf_pins hdmi_output/s_axi_ctrl_mixer]
  connect_bd_intf_net -intf_net sensor_iic_0_IIC [get_bd_intf_ports sensor_iic] [get_bd_intf_pins sensor_iic_0/IIC]
  connect_bd_intf_net -intf_net v_multi_scaler_0_m_axi_mm_video [get_bd_intf_pins axi_interconnect_4/S00_AXI] [get_bd_intf_pins v_multi_scaler_0/m_axi_mm_video]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_DEC0 [get_bd_intf_pins axi_interconnect_6/S02_AXI] [get_bd_intf_pins vcu_0/M_AXI_DEC0]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_DEC1 [get_bd_intf_pins axi_interconnect_6/S03_AXI] [get_bd_intf_pins vcu_0/M_AXI_DEC1]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_ENC0 [get_bd_intf_pins axi_interconnect_6/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_ENC0]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_ENC1 [get_bd_intf_pins axi_interconnect_6/S01_AXI] [get_bd_intf_pins vcu_0/M_AXI_ENC1]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_MCU [get_bd_intf_pins axi_interconnect_5/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_MCU]
  connect_bd_intf_net -intf_net vid_phy_controller_vid_phy_rx_axi4s_ch0 [get_bd_intf_pins hdmi_input/LINK_DATA0] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch0]
  connect_bd_intf_net -intf_net vid_phy_controller_vid_phy_rx_axi4s_ch1 [get_bd_intf_pins hdmi_input/LINK_DATA1] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch1]
  connect_bd_intf_net -intf_net vid_phy_controller_vid_phy_rx_axi4s_ch2 [get_bd_intf_pins hdmi_input/LINK_DATA2] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch2]
  connect_bd_intf_net -intf_net vid_phy_controller_vid_phy_status_sb_rx [get_bd_intf_pins hdmi_input/SB_STATUS] [get_bd_intf_pins vid_phy_controller/vid_phy_status_sb_rx]
connect_bd_intf_net -intf_net [get_bd_intf_nets vid_phy_controller_vid_phy_status_sb_rx] [get_bd_intf_pins hdmi_input/SB_STATUS] [get_bd_intf_pins rx_hdmi_hb_0/status_sb]

  # Create port connections
  connect_bd_net -net ARESETN_2 [get_bd_pins axi_interconnect/ARESETN] [get_bd_pins proc_sys_reset_7/interconnect_aresetn]
  connect_bd_net -net HDMI_RX_CLK_N [get_bd_ports HDMI_RX_CLK_N] [get_bd_pins vid_phy_controller/mgtrefclk1_pad_n_in]
  connect_bd_net -net HDMI_RX_CLK_P [get_bd_ports HDMI_RX_CLK_P] [get_bd_pins vid_phy_controller/mgtrefclk1_pad_p_in]
  connect_bd_net -net HDMI_RX_DAT_N [get_bd_ports HDMI_RX_DAT_N] [get_bd_pins vid_phy_controller/phy_rxn_in]
  connect_bd_net -net HDMI_RX_DAT_P [get_bd_ports HDMI_RX_DAT_P] [get_bd_pins vid_phy_controller/phy_rxp_in]
  connect_bd_net -net HDMI_TX_CLK_N [get_bd_ports HDMI_TX_CLK_N] [get_bd_pins vid_phy_controller/tx_tmds_clk_n]
  connect_bd_net -net HDMI_TX_CLK_P [get_bd_ports HDMI_TX_CLK_P] [get_bd_pins vid_phy_controller/tx_tmds_clk_p]
  connect_bd_net -net HDMI_TX_DAT_N [get_bd_ports HDMI_TX_DAT_N] [get_bd_pins vid_phy_controller/phy_txn_out]
  connect_bd_net -net HDMI_TX_DAT_P [get_bd_ports HDMI_TX_DAT_P] [get_bd_pins vid_phy_controller/phy_txp_out]
  connect_bd_net -net LED0 [get_bd_ports LED0] [get_bd_pins hdmi_output/locked]
  connect_bd_net -net LED6 [get_bd_ports LED6] [get_bd_pins tx_hdmi_hb_0/hdmi_hb]
  connect_bd_net -net LED7 [get_bd_ports LED7] [get_bd_pins rx_hdmi_hb_0/hdmi_hb]
  connect_bd_net -net Net [get_bd_pins clk_wiz_0/resetn] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in] [get_bd_pins proc_sys_reset_2/ext_reset_in] [get_bd_pins proc_sys_reset_3/ext_reset_in] [get_bd_pins proc_sys_reset_4/ext_reset_in] [get_bd_pins proc_sys_reset_5/ext_reset_in] [get_bd_pins proc_sys_reset_6/ext_reset_in] [get_bd_pins ps_e/pl_resetn0]
  connect_bd_net -net Net1 [get_bd_pins axi_interconnect/M03_ACLK] [get_bd_pins axi_interconnect/M05_ACLK] [get_bd_pins axi_interconnect/M06_ACLK] [get_bd_pins axi_interconnect/M07_ACLK] [get_bd_pins axi_interconnect/M09_ACLK] [get_bd_pins axi_interconnect/M12_ACLK] [get_bd_pins axi_interconnect_4/ACLK] [get_bd_pins axi_interconnect_4/M00_ACLK] [get_bd_pins axi_interconnect_4/S00_ACLK] [get_bd_pins axi_interconnect_4/S01_ACLK] [get_bd_pins axi_interconnect_4/S02_ACLK] [get_bd_pins axi_interconnect_4/S03_ACLK] [get_bd_pins axi_interconnect_4/S04_ACLK] [get_bd_pins axi_interconnect_5/ACLK] [get_bd_pins axi_interconnect_5/M00_ACLK] [get_bd_pins axi_interconnect_5/S00_ACLK] [get_bd_pins axi_interconnect_6/ACLK] [get_bd_pins axi_interconnect_6/M00_ACLK] [get_bd_pins axi_interconnect_6/S00_ACLK] [get_bd_pins axi_interconnect_6/S01_ACLK] [get_bd_pins axi_interconnect_6/S02_ACLK] [get_bd_pins axi_interconnect_6/S03_ACLK] [get_bd_pins axi_interconnect_8/ACLK] [get_bd_pins axi_interconnect_8/M00_ACLK] [get_bd_pins axi_interconnect_8/S00_ACLK] [get_bd_pins clk_wiz_1/clk_out2] [get_bd_pins hdmi_input/clk_300M] [get_bd_pins hdmi_output/clk_300M] [get_bd_pins proc_sys_reset_8/slowest_sync_clk] [get_bd_pins ps_e/saxihp1_fpd_aclk] [get_bd_pins ps_e/saxihp2_fpd_aclk] [get_bd_pins ps_e/saxihp3_fpd_aclk] [get_bd_pins ps_e/saxihpc0_fpd_aclk] [get_bd_pins v_multi_scaler_0/ap_clk] [get_bd_pins vcu_0/m_axi_dec_aclk] [get_bd_pins vcu_0/m_axi_enc_aclk] [get_bd_pins vcu_0/m_axi_mcu_aclk]
  connect_bd_net -net RX_DET [get_bd_ports RX_DET] [get_bd_pins hdmi_input/cable_detect]
  connect_bd_net -net RX_HPD [get_bd_ports RX_HPD] [get_bd_pins hdmi_input/hpd]
  connect_bd_net -net RX_REFCLK_N [get_bd_ports RX_REFCLK_N] [get_bd_pins vid_phy_controller/rx_tmds_clk_n]
  connect_bd_net -net RX_REFCLK_P [get_bd_ports RX_REFCLK_P] [get_bd_pins vid_phy_controller/rx_tmds_clk_p]
  connect_bd_net -net SI5319_LOL [get_bd_ports SI5319_LOL] [get_bd_pins vid_phy_controller/tx_refclk_rdy]
  connect_bd_net -net TX_HPD [get_bd_ports TX_HPD] [get_bd_pins hdmi_output/hpd]
  connect_bd_net -net TX_REFCLK_N [get_bd_ports TX_REFCLK_N] [get_bd_pins vid_phy_controller/mgtrefclk0_pad_n_in]
  connect_bd_net -net TX_REFCLK_P [get_bd_ports TX_REFCLK_P] [get_bd_pins vid_phy_controller/mgtrefclk0_pad_p_in]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins gpio_aresetn/Dout1] [get_bd_pins hdmi_output/ap_rst_n]
  connect_bd_net -net aresetn_1 [get_bd_pins gpio_aresetn/Dout3] [get_bd_pins hdmi_input/aresetn]
  connect_bd_net -net aresetn_100M [get_bd_ports SI5319_RST] [get_bd_pins axi_intc_1/s_axi_aresetn] [get_bd_pins axi_interconnect/M00_ARESETN] [get_bd_pins axi_interconnect/M01_ARESETN] [get_bd_pins axi_interconnect/M02_ARESETN] [get_bd_pins axi_interconnect/M04_ARESETN] [get_bd_pins axi_interconnect/M08_ARESETN] [get_bd_pins axi_interconnect/M10_ARESETN] [get_bd_pins axi_interconnect/M11_ARESETN] [get_bd_pins axi_interconnect/S00_ARESETN] [get_bd_pins hdmi_ctrl_iic/s_axi_aresetn] [get_bd_pins hdmi_input/s_axi_cpu_aresetn] [get_bd_pins hdmi_output/aresetn_100M] [get_bd_pins proc_sys_reset_7/peripheral_aresetn] [get_bd_pins sensor_iic_0/s_axi_aresetn] [get_bd_pins vid_phy_controller/vid_phy_axi4lite_aresetn] [get_bd_pins vid_phy_controller/vid_phy_sb_aresetn]
  connect_bd_net -net axi_intc_0_irq [get_bd_pins axi_intc_0/irq] [get_bd_pins ps_e/pl_ps_irq0]
  connect_bd_net -net axi_intc_1_irq [get_bd_pins axi_intc_1/irq] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins axi_interconnect_lpd/ACLK] [get_bd_pins axi_interconnect_lpd/M00_ACLK] [get_bd_pins axi_interconnect_lpd/S00_ACLK] [get_bd_pins axi_register_slice_0/aclk] [get_bd_pins axi_vip_1/aclk] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins interconnect_axihpm0fpd/ACLK] [get_bd_pins interconnect_axihpm0fpd/M00_ACLK] [get_bd_pins interconnect_axihpm0fpd/S00_ACLK] [get_bd_pins proc_sys_reset_1/slowest_sync_clk] [get_bd_pins ps_e/maxihpm1_fpd_aclk] [get_bd_pins ps_e/saxi_lpd_aclk]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_pins axi_intc_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out3] [get_bd_pins interconnect_axilite/ACLK] [get_bd_pins interconnect_axilite/M00_ACLK] [get_bd_pins interconnect_axilite/S00_ACLK] [get_bd_pins proc_sys_reset_2/slowest_sync_clk] [get_bd_pins ps_e/maxihpm0_lpd_aclk]
  connect_bd_net -net clk_wiz_0_clk_out4 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out5 [get_bd_pins clk_wiz_0/clk_out4] [get_bd_pins proc_sys_reset_3/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out6 [get_bd_pins clk_wiz_0/clk_out5] [get_bd_pins proc_sys_reset_4/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out7 [get_bd_pins clk_wiz_0/clk_out6] [get_bd_pins proc_sys_reset_5/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out8 [get_bd_pins clk_wiz_0/clk_out7] [get_bd_pins proc_sys_reset_6/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked] [get_bd_pins proc_sys_reset_1/dcm_locked] [get_bd_pins proc_sys_reset_2/dcm_locked] [get_bd_pins proc_sys_reset_3/dcm_locked] [get_bd_pins proc_sys_reset_4/dcm_locked] [get_bd_pins proc_sys_reset_5/dcm_locked] [get_bd_pins proc_sys_reset_6/dcm_locked]
  connect_bd_net -net clk_wiz_1_clk_out1 [get_bd_pins clk_wiz_1/clk_out1] [get_bd_pins vcu_0/pll_ref_clk]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins proc_sys_reset_8/dcm_locked]
  connect_bd_net -net gnd [get_bd_ports LED1] [get_bd_ports LED2] [get_bd_ports LED3] [get_bd_ports LED4] [get_bd_ports LED5] [get_bd_pins gnd_const/dout]
  connect_bd_net -net gpio_0 [get_bd_pins gpio_aresetn/gpio_0] [get_bd_pins hdmi_input/scaler_resetn]
  connect_bd_net -net gpio_1 [get_bd_pins gpio_aresetn/gpio_1] [get_bd_pins hdmi_output/frmbuf_aresetn]
  connect_bd_net -net gpio_aresetn_Dout [get_bd_pins gpio_aresetn/Dout] [get_bd_pins v_multi_scaler_0/ap_rst_n]
  connect_bd_net -net gpio_aresetn_Dout2 [get_bd_pins gpio_aresetn/Dout2] [get_bd_pins vcu_0/vcu_resetn]
  connect_bd_net -net gt_efclk_buf_BUFG_GT_O [get_bd_pins gt_refclk_buf/BUFG_GT_O] [get_bd_pins vid_phy_controller/gtsouthrefclk1_odiv2_in]
  connect_bd_net -net gt_efclk_buf_IBUF_OUT [get_bd_pins gt_refclk_buf/IBUF_OUT] [get_bd_pins vid_phy_controller/gtsouthrefclk1_in]
  connect_bd_net -net hdmi_input_interrupt [get_bd_pins hdmi_input/interrupt] [get_bd_pins interrupts1/In8]
  connect_bd_net -net hdmi_input_irq [get_bd_pins hdmi_input/irq] [get_bd_pins interrupts1/In4]
  connect_bd_net -net hdmi_output_interrupt [get_bd_pins hdmi_output/interrupt_frm_rd] [get_bd_pins interrupts1/In2]
  connect_bd_net -net hdmi_output_interrupt_mixer [get_bd_pins hdmi_output/interrupt_mixer] [get_bd_pins interrupts1/In1]
  connect_bd_net -net hdmi_output_irq [get_bd_pins hdmi_output/interrupt_hdmi_tx] [get_bd_pins interrupts1/In0]
  connect_bd_net -net interrupts1_dout [get_bd_pins axi_intc_1/intr] [get_bd_pins interrupts1/dout]
  connect_bd_net -net mpsoc_ss_iic2intc_irpt [get_bd_pins hdmi_ctrl_iic/iic2intc_irpt] [get_bd_pins interrupts1/In7]
  connect_bd_net -net net_vid_phy_controller_tx_video_clk [get_bd_pins hdmi_output/video_clk] [get_bd_pins vid_phy_controller/tx_video_clk]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_interconnect/M03_ARESETN] [get_bd_pins axi_interconnect/M05_ARESETN] [get_bd_pins axi_interconnect/M06_ARESETN] [get_bd_pins axi_interconnect/M07_ARESETN] [get_bd_pins axi_interconnect/M09_ARESETN] [get_bd_pins axi_interconnect/M12_ARESETN] [get_bd_pins axi_interconnect_4/ARESETN] [get_bd_pins axi_interconnect_4/M00_ARESETN] [get_bd_pins axi_interconnect_4/S00_ARESETN] [get_bd_pins axi_interconnect_4/S01_ARESETN] [get_bd_pins axi_interconnect_4/S02_ARESETN] [get_bd_pins axi_interconnect_4/S03_ARESETN] [get_bd_pins axi_interconnect_4/S04_ARESETN] [get_bd_pins axi_interconnect_5/ARESETN] [get_bd_pins axi_interconnect_5/M00_ARESETN] [get_bd_pins axi_interconnect_5/S00_ARESETN] [get_bd_pins axi_interconnect_6/ARESETN] [get_bd_pins axi_interconnect_6/M00_ARESETN] [get_bd_pins axi_interconnect_6/S00_ARESETN] [get_bd_pins axi_interconnect_6/S01_ARESETN] [get_bd_pins axi_interconnect_6/S02_ARESETN] [get_bd_pins axi_interconnect_6/S03_ARESETN] [get_bd_pins axi_interconnect_8/ARESETN] [get_bd_pins axi_interconnect_8/M00_ARESETN] [get_bd_pins axi_interconnect_8/S00_ARESETN] [get_bd_pins hdmi_input/aresetn_300M] [get_bd_pins hdmi_output/aresetn_300M] [get_bd_pins proc_sys_reset_8/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins axi_interconnect_lpd/ARESETN] [get_bd_pins axi_interconnect_lpd/M00_ARESETN] [get_bd_pins axi_interconnect_lpd/S00_ARESETN] [get_bd_pins axi_vip_1/aresetn] [get_bd_pins interconnect_axihpm0fpd/ARESETN] [get_bd_pins interconnect_axihpm0fpd/M00_ARESETN] [get_bd_pins interconnect_axihpm0fpd/S00_ARESETN] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins axi_register_slice_0/aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_2_interconnect_aresetn [get_bd_pins axi_intc_0/s_axi_aresetn] [get_bd_pins interconnect_axilite/ARESETN] [get_bd_pins interconnect_axilite/M00_ARESETN] [get_bd_pins interconnect_axilite/S00_ARESETN] [get_bd_pins proc_sys_reset_2/interconnect_aresetn]
  connect_bd_net -net ps_e_0_pl_clk0 [get_bd_pins axi_intc_1/s_axi_aclk] [get_bd_pins axi_interconnect/ACLK] [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins axi_interconnect/M01_ACLK] [get_bd_pins axi_interconnect/M02_ACLK] [get_bd_pins axi_interconnect/M04_ACLK] [get_bd_pins axi_interconnect/M08_ACLK] [get_bd_pins axi_interconnect/M10_ACLK] [get_bd_pins axi_interconnect/M11_ACLK] [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins hdmi_ctrl_iic/s_axi_aclk] [get_bd_pins hdmi_input/s_axi_cpu_aclk] [get_bd_pins hdmi_output/clk_100M] [get_bd_pins proc_sys_reset_7/slowest_sync_clk] [get_bd_pins ps_e/maxihpm0_fpd_aclk] [get_bd_pins ps_e/pl_clk1] [get_bd_pins rx_hdmi_hb_0/status_sb_aclk] [get_bd_pins sensor_iic_0/s_axi_aclk] [get_bd_pins tx_hdmi_hb_0/status_sb_aclk] [get_bd_pins vcu_0/s_axi_lite_aclk] [get_bd_pins vid_phy_controller/drpclk] [get_bd_pins vid_phy_controller/vid_phy_axi4lite_aclk] [get_bd_pins vid_phy_controller/vid_phy_sb_aclk]
  connect_bd_net -net ps_e_emio_gpio_o [get_bd_pins gpio_aresetn/Din] [get_bd_pins ps_e/emio_gpio_o]
  connect_bd_net -net ps_e_pl_clk0 [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins ps_e/pl_clk0]
  connect_bd_net -net ps_e_pl_resetn1 [get_bd_pins proc_sys_reset_7/ext_reset_in] [get_bd_pins proc_sys_reset_8/ext_reset_in] [get_bd_pins ps_e/pl_resetn1]
  connect_bd_net -net rx_video_clk [get_bd_pins hdmi_input/video_clk] [get_bd_pins vid_phy_controller/rx_video_clk]
  connect_bd_net -net rxoutclk [get_bd_pins hdmi_input/link_clk] [get_bd_pins rx_hdmi_hb_0/link_clk] [get_bd_pins vid_phy_controller/rxoutclk] [get_bd_pins vid_phy_controller/vid_phy_rx_axi4s_aclk]
  connect_bd_net -net sensor_iic_0_iic2intc_irpt [get_bd_pins interrupts1/In3] [get_bd_pins sensor_iic_0/iic2intc_irpt]
  connect_bd_net -net txoutclk [get_bd_pins hdmi_output/link_clk] [get_bd_pins tx_hdmi_hb_0/link_clk] [get_bd_pins vid_phy_controller/txoutclk] [get_bd_pins vid_phy_controller/vid_phy_tx_axi4s_aclk]
  connect_bd_net -net v_multi_scaler_0_interrupt [get_bd_pins interrupts1/In9] [get_bd_pins v_multi_scaler_0/interrupt]
  connect_bd_net -net vcc [get_bd_ports TX_EN] [get_bd_pins vcc_const/dout] [get_bd_pins vid_phy_controller/vid_phy_rx_axi4s_aresetn] [get_bd_pins vid_phy_controller/vid_phy_tx_axi4s_aresetn]
  connect_bd_net -net vcu_0_vcu_host_interrupt [get_bd_pins interrupts1/In6] [get_bd_pins vcu_0/vcu_host_interrupt]
  connect_bd_net -net vid_phy_controller_irq [get_bd_pins interrupts1/In5] [get_bd_pins vid_phy_controller/irq]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins ps_e/pl_ps_irq1] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces axi_vip_1/Master_AXI] [get_bd_addr_segs ps_e/SAXIGP6/LPD_DDR_LOW] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces axi_vip_1/Master_AXI] [get_bd_addr_segs ps_e/SAXIGP6/LPD_LPS_OCM] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_vip_1/Master_AXI] [get_bd_addr_segs ps_e/SAXIGP6/LPD_QSPI] -force
  assign_bd_address -offset 0x80020000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs axi_intc_1/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0080000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs hdmi_ctrl_iic/S_AXI/Reg] -force
  assign_bd_address -offset 0xA00D0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs sensor_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0xA00B0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs hdmi_output/v_frmbuf_rd_0/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0xA0090000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs hdmi_input/v_frmbuf_wr_0/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0xA0000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs hdmi_input/v_hdmi_rx_ss_0/S_AXI_CPU_IN/Reg] -force
  assign_bd_address -offset 0xA0020000 -range 0x00020000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs hdmi_output/v_hdmi_tx_ss_0/S_AXI_CPU_IN/Reg] -force
  assign_bd_address -offset 0xA00C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs hdmi_output/v_mix_0/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0xA00E0000 -range 0x00020000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs v_multi_scaler_0/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0xA0040000 -range 0x00040000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs hdmi_input/v_proc_ss_0/s_axi_ctrl/Reg] -force
  assign_bd_address -offset 0xA0100000 -range 0x00100000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs vcu_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ps_e/Data] [get_bd_addr_segs vid_phy_controller/vid_phy_axi4lite/Reg] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces v_multi_scaler_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces v_multi_scaler_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces v_multi_scaler_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_QSPI] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_HIGH] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_HIGH] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_HIGH] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_LOW] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_LOW] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_LOW] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_DDR_LOW] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_LPS_OCM] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_LPS_OCM] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_LPS_OCM] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_LPS_OCM] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_QSPI] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces vcu_0/EncData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_QSPI] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData1] [get_bd_addr_segs ps_e/SAXIGP5/HP3_QSPI] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces vcu_0/DecData0] [get_bd_addr_segs ps_e/SAXIGP5/HP3_QSPI] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs ps_e/SAXIGP0/HPC0_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs ps_e/SAXIGP0/HPC0_DDR_LOW] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs ps_e/SAXIGP0/HPC0_LPS_OCM] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs ps_e/SAXIGP0/HPC0_QSPI] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces hdmi_input/v_frmbuf_wr_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP3/HP1_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces hdmi_input/v_frmbuf_wr_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP3/HP1_DDR_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces hdmi_input/v_frmbuf_wr_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP3/HP1_QSPI] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_frmbuf_rd_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_frmbuf_rd_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_frmbuf_rd_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_QSPI] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video1] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_HIGH] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video2] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_HIGH] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video3] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video1] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_LOW] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video2] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_LOW] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video3] [get_bd_addr_segs ps_e/SAXIGP4/HP2_DDR_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video1] [get_bd_addr_segs ps_e/SAXIGP4/HP2_QSPI] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video2] [get_bd_addr_segs ps_e/SAXIGP4/HP2_QSPI] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video3] [get_bd_addr_segs ps_e/SAXIGP4/HP2_QSPI] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0x000800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces axi_vip_1/Master_AXI] [get_bd_addr_segs ps_e/SAXIGP6/LPD_DDR_HIGH]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hdmi_input/v_frmbuf_wr_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP3/HP1_LPS_OCM]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_frmbuf_rd_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_LPS_OCM]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video1] [get_bd_addr_segs ps_e/SAXIGP4/HP2_LPS_OCM]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video2] [get_bd_addr_segs ps_e/SAXIGP4/HP2_LPS_OCM]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces hdmi_output/v_mix_0/Data_m_axi_mm_video3] [get_bd_addr_segs ps_e/SAXIGP4/HP2_LPS_OCM]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces v_multi_scaler_0/Data_m_axi_mm_video] [get_bd_addr_segs ps_e/SAXIGP4/HP2_LPS_OCM]


  # Restore current instance
  current_bd_instance $oldCurInst

  # Create PFM attributes
  set_property PFM_NAME {xilinx:zcu106:zcu106_ROI_HDMI:1.0} [get_files [current_bd_design].bd]
  set_property PFM.IRQ {intr { id 0 range 32 }} [get_bd_cells /axi_intc_0]
  set_property PFM.AXI_PORT {S01_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S02_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S03_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S04_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S05_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S06_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S07_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S08_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S09_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S10_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S11_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S12_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S13_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S14_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"} S15_AXI {memport "S_AXI_HP" sptag "LPD" memory "ps_e LPD_DDR_LOW"}} [get_bd_cells /axi_interconnect_lpd]
  set_property PFM.CLOCK {clk_out1 {id "0" is_default "true" proc_sys_reset "proc_sys_reset_0" status "fixed"} clk_out2 {id "1" is_default "false" proc_sys_reset "proc_sys_reset_1" status "fixed"} clk_out3 {id "2" is_default "false" proc_sys_reset "/proc_sys_reset_2" status "fixed"} clk_out4 {id "3" is_default "false" proc_sys_reset "/proc_sys_reset_3" status "fixed"} clk_out5 {id "4" is_default "false" proc_sys_reset "/proc_sys_reset_4" status "fixed"} clk_out6 {id "5" is_default "false" proc_sys_reset "/proc_sys_reset_5" status "fixed"} clk_out7 {id "6" is_default "false" proc_sys_reset "/proc_sys_reset_6" status "fixed"}} [get_bd_cells /clk_wiz_0]
  set_property PFM.AXI_PORT {M01_AXI {memport "M_AXI_GP"} M02_AXI {memport "M_AXI_GP"} M03_AXI {memport "M_AXI_GP"} M04_AXI {memport "M_AXI_GP"} M05_AXI {memport "M_AXI_GP"} M06_AXI {memport "M_AXI_GP"} M07_AXI {memport "M_AXI_GP"} M08_AXI {memport "M_AXI_GP"} M09_AXI {memport "M_AXI_GP"} M10_AXI {memport "M_AXI_GP"} M11_AXI {memport "M_AXI_GP"} M12_AXI {memport "M_AXI_GP"} M13_AXI {memport "M_AXI_GP"} M14_AXI {memport "M_AXI_GP"} M15_AXI {memport "M_AXI_GP"} M16_AXI {memport "M_AXI_GP"} M17_AXI {memport "M_AXI_GP"} M18_AXI {memport "M_AXI_GP"} M19_AXI {memport "M_AXI_GP"} M20_AXI {memport "M_AXI_GP"} M21_AXI {memport "M_AXI_GP"} M22_AXI {memport "M_AXI_GP"} M23_AXI {memport "M_AXI_GP"} M24_AXI {memport "M_AXI_GP"} M25_AXI {memport "M_AXI_GP"} M26_AXI {memport "M_AXI_GP"} M27_AXI {memport "M_AXI_GP"} M28_AXI {memport "M_AXI_GP"} M29_AXI {memport "M_AXI_GP"} M30_AXI {memport "M_AXI_GP"} M31_AXI {memport "M_AXI_GP"} M32_AXI {memport "M_AXI_GP"} M33_AXI {memport "M_AXI_GP"} M34_AXI {memport "M_AXI_GP"} M35_AXI {memport "M_AXI_GP"} M36_AXI {memport "M_AXI_GP"} M37_AXI {memport "M_AXI_GP"} M38_AXI {memport "M_AXI_GP"} M39_AXI {memport "M_AXI_GP"} M40_AXI {memport "M_AXI_GP"} M41_AXI {memport "M_AXI_GP"} M42_AXI {memport "M_AXI_GP"} M43_AXI {memport "M_AXI_GP"} M44_AXI {memport "M_AXI_GP"} M45_AXI {memport "M_AXI_GP"} M46_AXI {memport "M_AXI_GP"} M47_AXI {memport "M_AXI_GP"} M48_AXI {memport "M_AXI_GP"} M49_AXI {memport "M_AXI_GP"} M50_AXI {memport "M_AXI_GP"} M51_AXI {memport "M_AXI_GP"} M52_AXI {memport "M_AXI_GP"} M53_AXI {memport "M_AXI_GP"} M54_AXI {memport "M_AXI_GP"} M55_AXI {memport "M_AXI_GP"} M56_AXI {memport "M_AXI_GP"} M57_AXI {memport "M_AXI_GP"} M58_AXI {memport "M_AXI_GP"} M59_AXI {memport "M_AXI_GP"} M60_AXI {memport "M_AXI_GP"} M61_AXI {memport "M_AXI_GP"} M62_AXI {memport "M_AXI_GP"} M63_AXI {memport "M_AXI_GP"}} [get_bd_cells /interconnect_axilite]
  set_property PFM.AXI_PORT {M_AXI_HPM1_FPD {memport "M_AXI_GP" sptag "" memory ""} S_AXI_HPC1_FPD {memport "S_AXI_HPC" sptag "HPC1" memory "ps_e HPC1_DDR_LOW"} S_AXI_HP0_FPD {memport "S_AXI_HP" sptag "HP0" memory "ps_e HP0_DDR_LOW"}} [get_bd_cells /ps_e]


  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


