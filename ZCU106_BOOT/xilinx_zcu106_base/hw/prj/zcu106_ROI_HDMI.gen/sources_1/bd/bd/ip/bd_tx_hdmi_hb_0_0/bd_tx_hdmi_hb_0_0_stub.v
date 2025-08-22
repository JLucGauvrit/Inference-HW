// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan  6 09:47:38 2021
// Host        : xhdlc210091 running 64-bit Red Hat Enterprise Linux Workstation release 7.7 (Maipo)
// Command     : write_verilog -force -mode synth_stub
//               /wrk/paeg1/users/Juneed/VCU/2020_2/ROI/HDMI_ROI/HDMI_ROI_1/pl/build/zcu106_ROI_HDMI/zcu106_ROI_HDMI.gen/sources_1/bd/bd/ip/bd_tx_hdmi_hb_0_0/bd_tx_hdmi_hb_0_0_stub.v
// Design      : bd_tx_hdmi_hb_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdmi_hb,Vivado 2020.2" *)
module bd_tx_hdmi_hb_0_0(status_sb_aclk, status_sb_tdata, 
  status_sb_tvalid, link_clk, hdmi_hb)
/* synthesis syn_black_box black_box_pad_pin="status_sb_aclk,status_sb_tdata[1:0],status_sb_tvalid,link_clk,hdmi_hb" */;
  input status_sb_aclk;
  input [1:0]status_sb_tdata;
  input status_sb_tvalid;
  input link_clk;
  output hdmi_hb;
endmodule
