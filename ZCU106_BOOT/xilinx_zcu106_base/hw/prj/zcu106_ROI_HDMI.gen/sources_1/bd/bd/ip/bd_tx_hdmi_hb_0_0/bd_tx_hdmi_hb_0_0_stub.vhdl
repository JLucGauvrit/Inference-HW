-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Jan  6 09:47:39 2021
-- Host        : xhdlc210091 running 64-bit Red Hat Enterprise Linux Workstation release 7.7 (Maipo)
-- Command     : write_vhdl -force -mode synth_stub
--               /wrk/paeg1/users/Juneed/VCU/2020_2/ROI/HDMI_ROI/HDMI_ROI_1/pl/build/zcu106_ROI_HDMI/zcu106_ROI_HDMI.gen/sources_1/bd/bd/ip/bd_tx_hdmi_hb_0_0/bd_tx_hdmi_hb_0_0_stub.vhdl
-- Design      : bd_tx_hdmi_hb_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_tx_hdmi_hb_0_0 is
  Port ( 
    status_sb_aclk : in STD_LOGIC;
    status_sb_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    status_sb_tvalid : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    hdmi_hb : out STD_LOGIC
  );

end bd_tx_hdmi_hb_0_0;

architecture stub of bd_tx_hdmi_hb_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "status_sb_aclk,status_sb_tdata[1:0],status_sb_tvalid,link_clk,hdmi_hb";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdmi_hb,Vivado 2020.2";
begin
end;
