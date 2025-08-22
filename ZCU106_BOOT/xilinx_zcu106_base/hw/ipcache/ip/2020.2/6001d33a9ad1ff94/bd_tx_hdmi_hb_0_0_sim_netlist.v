// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan  6 09:47:37 2021
// Host        : xhdlc210091 running 64-bit Red Hat Enterprise Linux Workstation release 7.7 (Maipo)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_tx_hdmi_hb_0_0_sim_netlist.v
// Design      : bd_tx_hdmi_hb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_tx_hdmi_hb_0_0,hdmi_hb,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "hdmi_hb,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (status_sb_aclk,
    status_sb_tdata,
    status_sb_tvalid,
    link_clk,
    hdmi_hb);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 status_sb_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME status_sb_aclk, ASSOCIATED_BUSIF status_sb, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_ps_e_0_pl_clk1, INSERT_VIP 0" *) input status_sb_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 status_sb TDATA" *) input [1:0]status_sb_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 status_sb TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME status_sb, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN bd_ps_e_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) input status_sb_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 link_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME link_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_vid_phy_controller_0_txoutclk, INSERT_VIP 0" *) input link_clk;
  output hdmi_hb;

  wire hdmi_hb;
  wire link_clk;
  wire [1:0]status_sb_tdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_hb inst
       (.hdmi_hb(hdmi_hb),
        .link_clk(link_clk),
        .status_sb_aclk(1'b0),
        .status_sb_tdata({1'b0,status_sb_tdata[0]}),
        .status_sb_tvalid(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_hb
   (status_sb_aclk,
    status_sb_tdata,
    status_sb_tvalid,
    link_clk,
    hdmi_hb);
  input status_sb_aclk;
  input [1:0]status_sb_tdata;
  input status_sb_tvalid;
  input link_clk;
  output hdmi_hb;

  wire [23:1]data0;
  (* DONT_TOUCH *) wire [23:0]hdmi_hb_cnt;
  wire \hdmi_hb_cnt[23]_i_10_n_0 ;
  wire \hdmi_hb_cnt[23]_i_2_n_0 ;
  wire \hdmi_hb_cnt[23]_i_3_n_0 ;
  wire \hdmi_hb_cnt[23]_i_5_n_0 ;
  wire \hdmi_hb_cnt[23]_i_6_n_0 ;
  wire \hdmi_hb_cnt[23]_i_7_n_0 ;
  wire \hdmi_hb_cnt[23]_i_8_n_0 ;
  wire \hdmi_hb_cnt[23]_i_9_n_0 ;
  wire [23:0]hdmi_hb_cnt__0;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_0 ;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_1 ;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_2 ;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_3 ;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_4 ;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_5 ;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_6 ;
  wire \hdmi_hb_cnt_reg[16]_i_2_n_7 ;
  wire \hdmi_hb_cnt_reg[23]_i_4_n_2 ;
  wire \hdmi_hb_cnt_reg[23]_i_4_n_3 ;
  wire \hdmi_hb_cnt_reg[23]_i_4_n_4 ;
  wire \hdmi_hb_cnt_reg[23]_i_4_n_5 ;
  wire \hdmi_hb_cnt_reg[23]_i_4_n_6 ;
  wire \hdmi_hb_cnt_reg[23]_i_4_n_7 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_0 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_1 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_2 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_3 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_4 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_5 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_6 ;
  wire \hdmi_hb_cnt_reg[8]_i_2_n_7 ;
  (* DONT_TOUCH *) wire hdmi_hb_i;
  wire hdmi_hb_i__0;
  wire link_clk;
  wire p_0_in__0;
  wire [1:0]status_sb_tdata;
  wire [7:6]\NLW_hdmi_hb_cnt_reg[23]_i_4_CO_UNCONNECTED ;
  wire [7:7]\NLW_hdmi_hb_cnt_reg[23]_i_4_O_UNCONNECTED ;

  assign hdmi_hb = hdmi_hb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \hdmi_hb_cnt[0]_i_1 
       (.I0(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I1(hdmi_hb_cnt[0]),
        .O(hdmi_hb_cnt__0[0]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[10]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[10]),
        .O(hdmi_hb_cnt__0[10]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[11]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[11]),
        .O(hdmi_hb_cnt__0[11]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[12]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[12]),
        .O(hdmi_hb_cnt__0[12]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[13]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[13]),
        .O(hdmi_hb_cnt__0[13]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[14]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[14]),
        .O(hdmi_hb_cnt__0[14]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[15]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[15]),
        .O(hdmi_hb_cnt__0[15]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[16]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[16]),
        .O(hdmi_hb_cnt__0[16]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[17]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[17]),
        .O(hdmi_hb_cnt__0[17]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[18]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[18]),
        .O(hdmi_hb_cnt__0[18]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[19]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[19]),
        .O(hdmi_hb_cnt__0[19]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[1]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[1]),
        .O(hdmi_hb_cnt__0[1]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[20]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[20]),
        .O(hdmi_hb_cnt__0[20]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[21]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[21]),
        .O(hdmi_hb_cnt__0[21]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[22]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[22]),
        .O(hdmi_hb_cnt__0[22]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[23]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[23]),
        .O(hdmi_hb_cnt__0[23]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hdmi_hb_cnt[23]_i_10 
       (.I0(hdmi_hb_cnt[3]),
        .I1(hdmi_hb_cnt[2]),
        .I2(hdmi_hb_cnt[5]),
        .I3(hdmi_hb_cnt[4]),
        .O(\hdmi_hb_cnt[23]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hb_cnt[23]_i_2 
       (.I0(status_sb_tdata[0]),
        .O(\hdmi_hb_cnt[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \hdmi_hb_cnt[23]_i_3 
       (.I0(\hdmi_hb_cnt[23]_i_5_n_0 ),
        .I1(\hdmi_hb_cnt[23]_i_6_n_0 ),
        .I2(\hdmi_hb_cnt[23]_i_7_n_0 ),
        .I3(\hdmi_hb_cnt[23]_i_8_n_0 ),
        .I4(\hdmi_hb_cnt[23]_i_9_n_0 ),
        .I5(\hdmi_hb_cnt[23]_i_10_n_0 ),
        .O(\hdmi_hb_cnt[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \hdmi_hb_cnt[23]_i_5 
       (.I0(hdmi_hb_cnt[19]),
        .I1(hdmi_hb_cnt[18]),
        .I2(hdmi_hb_cnt[20]),
        .I3(hdmi_hb_cnt[21]),
        .O(\hdmi_hb_cnt[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \hdmi_hb_cnt[23]_i_6 
       (.I0(hdmi_hb_cnt[23]),
        .I1(hdmi_hb_cnt[22]),
        .I2(hdmi_hb_cnt[1]),
        .O(\hdmi_hb_cnt[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \hdmi_hb_cnt[23]_i_7 
       (.I0(hdmi_hb_cnt[10]),
        .I1(hdmi_hb_cnt[11]),
        .I2(hdmi_hb_cnt[12]),
        .I3(hdmi_hb_cnt[13]),
        .O(\hdmi_hb_cnt[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \hdmi_hb_cnt[23]_i_8 
       (.I0(hdmi_hb_cnt[15]),
        .I1(hdmi_hb_cnt[14]),
        .I2(hdmi_hb_cnt[17]),
        .I3(hdmi_hb_cnt[16]),
        .O(\hdmi_hb_cnt[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \hdmi_hb_cnt[23]_i_9 
       (.I0(hdmi_hb_cnt[7]),
        .I1(hdmi_hb_cnt[6]),
        .I2(hdmi_hb_cnt[9]),
        .I3(hdmi_hb_cnt[8]),
        .O(\hdmi_hb_cnt[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[2]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[2]),
        .O(hdmi_hb_cnt__0[2]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[3]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[3]),
        .O(hdmi_hb_cnt__0[3]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[4]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[4]),
        .O(hdmi_hb_cnt__0[4]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[5]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[5]),
        .O(hdmi_hb_cnt__0[5]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[6]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[6]),
        .O(hdmi_hb_cnt__0[6]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[7]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[7]),
        .O(hdmi_hb_cnt__0[7]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[8]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[8]),
        .O(hdmi_hb_cnt__0[8]));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdmi_hb_cnt[9]_i_1 
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .I2(data0[9]),
        .O(hdmi_hb_cnt__0[9]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[0] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[0]),
        .Q(hdmi_hb_cnt[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[10] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[10]),
        .Q(hdmi_hb_cnt[10]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[11] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[11]),
        .Q(hdmi_hb_cnt[11]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[12] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[12]),
        .Q(hdmi_hb_cnt[12]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[13] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[13]),
        .Q(hdmi_hb_cnt[13]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[14] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[14]),
        .Q(hdmi_hb_cnt[14]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[15] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[15]),
        .Q(hdmi_hb_cnt[15]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[16] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[16]),
        .Q(hdmi_hb_cnt[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \hdmi_hb_cnt_reg[16]_i_2 
       (.CI(\hdmi_hb_cnt_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\hdmi_hb_cnt_reg[16]_i_2_n_0 ,\hdmi_hb_cnt_reg[16]_i_2_n_1 ,\hdmi_hb_cnt_reg[16]_i_2_n_2 ,\hdmi_hb_cnt_reg[16]_i_2_n_3 ,\hdmi_hb_cnt_reg[16]_i_2_n_4 ,\hdmi_hb_cnt_reg[16]_i_2_n_5 ,\hdmi_hb_cnt_reg[16]_i_2_n_6 ,\hdmi_hb_cnt_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(hdmi_hb_cnt[16:9]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[17] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[17]),
        .Q(hdmi_hb_cnt[17]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[18] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[18]),
        .Q(hdmi_hb_cnt[18]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[19] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[19]),
        .Q(hdmi_hb_cnt[19]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[1] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[1]),
        .Q(hdmi_hb_cnt[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[20] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[20]),
        .Q(hdmi_hb_cnt[20]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[21] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[21]),
        .Q(hdmi_hb_cnt[21]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[22] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[22]),
        .Q(hdmi_hb_cnt[22]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[23] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[23]),
        .Q(hdmi_hb_cnt[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \hdmi_hb_cnt_reg[23]_i_4 
       (.CI(\hdmi_hb_cnt_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_hdmi_hb_cnt_reg[23]_i_4_CO_UNCONNECTED [7:6],\hdmi_hb_cnt_reg[23]_i_4_n_2 ,\hdmi_hb_cnt_reg[23]_i_4_n_3 ,\hdmi_hb_cnt_reg[23]_i_4_n_4 ,\hdmi_hb_cnt_reg[23]_i_4_n_5 ,\hdmi_hb_cnt_reg[23]_i_4_n_6 ,\hdmi_hb_cnt_reg[23]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hdmi_hb_cnt_reg[23]_i_4_O_UNCONNECTED [7],data0[23:17]}),
        .S({1'b0,hdmi_hb_cnt[23:17]}));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[2] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[2]),
        .Q(hdmi_hb_cnt[2]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[3] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[3]),
        .Q(hdmi_hb_cnt[3]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[4] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[4]),
        .Q(hdmi_hb_cnt[4]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[5] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[5]),
        .Q(hdmi_hb_cnt[5]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[6] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[6]),
        .Q(hdmi_hb_cnt[6]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[7] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[7]),
        .Q(hdmi_hb_cnt[7]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[8] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[8]),
        .Q(hdmi_hb_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \hdmi_hb_cnt_reg[8]_i_2 
       (.CI(hdmi_hb_cnt[0]),
        .CI_TOP(1'b0),
        .CO({\hdmi_hb_cnt_reg[8]_i_2_n_0 ,\hdmi_hb_cnt_reg[8]_i_2_n_1 ,\hdmi_hb_cnt_reg[8]_i_2_n_2 ,\hdmi_hb_cnt_reg[8]_i_2_n_3 ,\hdmi_hb_cnt_reg[8]_i_2_n_4 ,\hdmi_hb_cnt_reg[8]_i_2_n_5 ,\hdmi_hb_cnt_reg[8]_i_2_n_6 ,\hdmi_hb_cnt_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(hdmi_hb_cnt[8:1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \hdmi_hb_cnt_reg[9] 
       (.C(link_clk),
        .CE(1'b1),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(hdmi_hb_cnt__0[9]),
        .Q(hdmi_hb_cnt[9]));
  LUT2 #(
    .INIT(4'h1)) 
    hdmi_hb_i_i_1
       (.I0(hdmi_hb_cnt[0]),
        .I1(\hdmi_hb_cnt[23]_i_3_n_0 ),
        .O(hdmi_hb_i__0));
  LUT1 #(
    .INIT(2'h1)) 
    hdmi_hb_i_i_2
       (.I0(hdmi_hb_i),
        .O(p_0_in__0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE hdmi_hb_i_reg
       (.C(link_clk),
        .CE(hdmi_hb_i__0),
        .CLR(\hdmi_hb_cnt[23]_i_2_n_0 ),
        .D(p_0_in__0),
        .Q(hdmi_hb_i));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
