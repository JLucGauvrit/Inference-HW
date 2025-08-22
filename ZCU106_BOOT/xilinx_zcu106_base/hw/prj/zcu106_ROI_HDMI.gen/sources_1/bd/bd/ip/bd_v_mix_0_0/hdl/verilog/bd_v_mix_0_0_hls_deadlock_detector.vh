
    wire reset;
    wire clock;
    assign reset = ap_rst_n;
    assign clock = ap_clk;
    wire [9:0] proc_0_data_FIFO_blk;
    wire [9:0] proc_0_data_PIPO_blk;
    wire [9:0] proc_0_start_FIFO_blk;
    wire [9:0] proc_0_TLF_FIFO_blk;
    wire [9:0] proc_0_input_sync_blk;
    wire [9:0] proc_0_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_0;
    reg [9:0] proc_dep_vld_vec_0_reg;
    wire [9:0] in_chan_dep_vld_vec_0;
    wire [339:0] in_chan_dep_data_vec_0;
    wire [9:0] token_in_vec_0;
    wire [9:0] out_chan_dep_vld_vec_0;
    wire [33:0] out_chan_dep_data_0;
    wire [9:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [33:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_5_0;
    wire [33:0] dep_chan_data_5_0;
    wire token_5_0;
    wire dep_chan_vld_6_0;
    wire [33:0] dep_chan_data_6_0;
    wire token_6_0;
    wire dep_chan_vld_12_0;
    wire [33:0] dep_chan_data_12_0;
    wire token_12_0;
    wire dep_chan_vld_13_0;
    wire [33:0] dep_chan_data_13_0;
    wire token_13_0;
    wire dep_chan_vld_14_0;
    wire [33:0] dep_chan_data_14_0;
    wire token_14_0;
    wire dep_chan_vld_20_0;
    wire [33:0] dep_chan_data_20_0;
    wire token_20_0;
    wire dep_chan_vld_21_0;
    wire [33:0] dep_chan_data_21_0;
    wire token_21_0;
    wire dep_chan_vld_22_0;
    wire [33:0] dep_chan_data_22_0;
    wire token_22_0;
    wire dep_chan_vld_29_0;
    wire [33:0] dep_chan_data_29_0;
    wire token_29_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [67:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [33:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [33:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [33:0] dep_chan_data_2_1;
    wire token_2_1;
    wire [1:0] proc_2_data_FIFO_blk;
    wire [1:0] proc_2_data_PIPO_blk;
    wire [1:0] proc_2_start_FIFO_blk;
    wire [1:0] proc_2_TLF_FIFO_blk;
    wire [1:0] proc_2_input_sync_blk;
    wire [1:0] proc_2_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_2;
    reg [1:0] proc_dep_vld_vec_2_reg;
    wire [1:0] in_chan_dep_vld_vec_2;
    wire [67:0] in_chan_dep_data_vec_2;
    wire [1:0] token_in_vec_2;
    wire [1:0] out_chan_dep_vld_vec_2;
    wire [33:0] out_chan_dep_data_2;
    wire [1:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_1_2;
    wire [33:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [33:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [67:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [33:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [33:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [33:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [1:0] proc_4_data_FIFO_blk;
    wire [1:0] proc_4_data_PIPO_blk;
    wire [1:0] proc_4_start_FIFO_blk;
    wire [1:0] proc_4_TLF_FIFO_blk;
    wire [1:0] proc_4_input_sync_blk;
    wire [1:0] proc_4_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_4;
    reg [1:0] proc_dep_vld_vec_4_reg;
    wire [1:0] in_chan_dep_vld_vec_4;
    wire [67:0] in_chan_dep_data_vec_4;
    wire [1:0] token_in_vec_4;
    wire [1:0] out_chan_dep_vld_vec_4;
    wire [33:0] out_chan_dep_data_4;
    wire [1:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_3_4;
    wire [33:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_12_4;
    wire [33:0] dep_chan_data_12_4;
    wire token_12_4;
    wire [3:0] proc_5_data_FIFO_blk;
    wire [3:0] proc_5_data_PIPO_blk;
    wire [3:0] proc_5_start_FIFO_blk;
    wire [3:0] proc_5_TLF_FIFO_blk;
    wire [3:0] proc_5_input_sync_blk;
    wire [3:0] proc_5_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_5;
    reg [3:0] proc_dep_vld_vec_5_reg;
    wire [3:0] in_chan_dep_vld_vec_5;
    wire [135:0] in_chan_dep_data_vec_5;
    wire [3:0] token_in_vec_5;
    wire [3:0] out_chan_dep_vld_vec_5;
    wire [33:0] out_chan_dep_data_5;
    wire [3:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_0_5;
    wire [33:0] dep_chan_data_0_5;
    wire token_0_5;
    wire dep_chan_vld_6_5;
    wire [33:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_10_5;
    wire [33:0] dep_chan_data_10_5;
    wire token_10_5;
    wire dep_chan_vld_12_5;
    wire [33:0] dep_chan_data_12_5;
    wire token_12_5;
    wire [4:0] proc_6_data_FIFO_blk;
    wire [4:0] proc_6_data_PIPO_blk;
    wire [4:0] proc_6_start_FIFO_blk;
    wire [4:0] proc_6_TLF_FIFO_blk;
    wire [4:0] proc_6_input_sync_blk;
    wire [4:0] proc_6_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_6;
    reg [4:0] proc_dep_vld_vec_6_reg;
    wire [4:0] in_chan_dep_vld_vec_6;
    wire [169:0] in_chan_dep_data_vec_6;
    wire [4:0] token_in_vec_6;
    wire [4:0] out_chan_dep_vld_vec_6;
    wire [33:0] out_chan_dep_data_6;
    wire [4:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_0_6;
    wire [33:0] dep_chan_data_0_6;
    wire token_0_6;
    wire dep_chan_vld_5_6;
    wire [33:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_7_6;
    wire [33:0] dep_chan_data_7_6;
    wire token_7_6;
    wire dep_chan_vld_14_6;
    wire [33:0] dep_chan_data_14_6;
    wire token_14_6;
    wire dep_chan_vld_22_6;
    wire [33:0] dep_chan_data_22_6;
    wire token_22_6;
    wire [1:0] proc_7_data_FIFO_blk;
    wire [1:0] proc_7_data_PIPO_blk;
    wire [1:0] proc_7_start_FIFO_blk;
    wire [1:0] proc_7_TLF_FIFO_blk;
    wire [1:0] proc_7_input_sync_blk;
    wire [1:0] proc_7_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_7;
    reg [1:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [67:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [1:0] out_chan_dep_vld_vec_7;
    wire [33:0] out_chan_dep_data_7;
    wire [1:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_6_7;
    wire [33:0] dep_chan_data_6_7;
    wire token_6_7;
    wire dep_chan_vld_8_7;
    wire [33:0] dep_chan_data_8_7;
    wire token_8_7;
    wire [1:0] proc_8_data_FIFO_blk;
    wire [1:0] proc_8_data_PIPO_blk;
    wire [1:0] proc_8_start_FIFO_blk;
    wire [1:0] proc_8_TLF_FIFO_blk;
    wire [1:0] proc_8_input_sync_blk;
    wire [1:0] proc_8_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_8;
    reg [1:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [67:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [1:0] out_chan_dep_vld_vec_8;
    wire [33:0] out_chan_dep_data_8;
    wire [1:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_7_8;
    wire [33:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_9_8;
    wire [33:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [1:0] proc_9_data_FIFO_blk;
    wire [1:0] proc_9_data_PIPO_blk;
    wire [1:0] proc_9_start_FIFO_blk;
    wire [1:0] proc_9_TLF_FIFO_blk;
    wire [1:0] proc_9_input_sync_blk;
    wire [1:0] proc_9_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_9;
    reg [1:0] proc_dep_vld_vec_9_reg;
    wire [1:0] in_chan_dep_vld_vec_9;
    wire [67:0] in_chan_dep_data_vec_9;
    wire [1:0] token_in_vec_9;
    wire [1:0] out_chan_dep_vld_vec_9;
    wire [33:0] out_chan_dep_data_9;
    wire [1:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_8_9;
    wire [33:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_10_9;
    wire [33:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [2:0] proc_10_data_FIFO_blk;
    wire [2:0] proc_10_data_PIPO_blk;
    wire [2:0] proc_10_start_FIFO_blk;
    wire [2:0] proc_10_TLF_FIFO_blk;
    wire [2:0] proc_10_input_sync_blk;
    wire [2:0] proc_10_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_10;
    reg [2:0] proc_dep_vld_vec_10_reg;
    wire [2:0] in_chan_dep_vld_vec_10;
    wire [101:0] in_chan_dep_data_vec_10;
    wire [2:0] token_in_vec_10;
    wire [2:0] out_chan_dep_vld_vec_10;
    wire [33:0] out_chan_dep_data_10;
    wire [2:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_5_10;
    wire [33:0] dep_chan_data_5_10;
    wire token_5_10;
    wire dep_chan_vld_9_10;
    wire [33:0] dep_chan_data_9_10;
    wire token_9_10;
    wire dep_chan_vld_11_10;
    wire [33:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [1:0] proc_11_data_FIFO_blk;
    wire [1:0] proc_11_data_PIPO_blk;
    wire [1:0] proc_11_start_FIFO_blk;
    wire [1:0] proc_11_TLF_FIFO_blk;
    wire [1:0] proc_11_input_sync_blk;
    wire [1:0] proc_11_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_11;
    reg [1:0] proc_dep_vld_vec_11_reg;
    wire [1:0] in_chan_dep_vld_vec_11;
    wire [67:0] in_chan_dep_data_vec_11;
    wire [1:0] token_in_vec_11;
    wire [1:0] out_chan_dep_vld_vec_11;
    wire [33:0] out_chan_dep_data_11;
    wire [1:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_10_11;
    wire [33:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_12_11;
    wire [33:0] dep_chan_data_12_11;
    wire token_12_11;
    wire [4:0] proc_12_data_FIFO_blk;
    wire [4:0] proc_12_data_PIPO_blk;
    wire [4:0] proc_12_start_FIFO_blk;
    wire [4:0] proc_12_TLF_FIFO_blk;
    wire [4:0] proc_12_input_sync_blk;
    wire [4:0] proc_12_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_12;
    reg [4:0] proc_dep_vld_vec_12_reg;
    wire [4:0] in_chan_dep_vld_vec_12;
    wire [169:0] in_chan_dep_data_vec_12;
    wire [4:0] token_in_vec_12;
    wire [4:0] out_chan_dep_vld_vec_12;
    wire [33:0] out_chan_dep_data_12;
    wire [4:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_0_12;
    wire [33:0] dep_chan_data_0_12;
    wire token_0_12;
    wire dep_chan_vld_4_12;
    wire [33:0] dep_chan_data_4_12;
    wire token_4_12;
    wire dep_chan_vld_5_12;
    wire [33:0] dep_chan_data_5_12;
    wire token_5_12;
    wire dep_chan_vld_11_12;
    wire [33:0] dep_chan_data_11_12;
    wire token_11_12;
    wire dep_chan_vld_20_12;
    wire [33:0] dep_chan_data_20_12;
    wire token_20_12;
    wire [2:0] proc_13_data_FIFO_blk;
    wire [2:0] proc_13_data_PIPO_blk;
    wire [2:0] proc_13_start_FIFO_blk;
    wire [2:0] proc_13_TLF_FIFO_blk;
    wire [2:0] proc_13_input_sync_blk;
    wire [2:0] proc_13_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_13;
    reg [2:0] proc_dep_vld_vec_13_reg;
    wire [2:0] in_chan_dep_vld_vec_13;
    wire [101:0] in_chan_dep_data_vec_13;
    wire [2:0] token_in_vec_13;
    wire [2:0] out_chan_dep_vld_vec_13;
    wire [33:0] out_chan_dep_data_13;
    wire [2:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_0_13;
    wire [33:0] dep_chan_data_0_13;
    wire token_0_13;
    wire dep_chan_vld_14_13;
    wire [33:0] dep_chan_data_14_13;
    wire token_14_13;
    wire dep_chan_vld_18_13;
    wire [33:0] dep_chan_data_18_13;
    wire token_18_13;
    wire [4:0] proc_14_data_FIFO_blk;
    wire [4:0] proc_14_data_PIPO_blk;
    wire [4:0] proc_14_start_FIFO_blk;
    wire [4:0] proc_14_TLF_FIFO_blk;
    wire [4:0] proc_14_input_sync_blk;
    wire [4:0] proc_14_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_14;
    reg [4:0] proc_dep_vld_vec_14_reg;
    wire [4:0] in_chan_dep_vld_vec_14;
    wire [169:0] in_chan_dep_data_vec_14;
    wire [4:0] token_in_vec_14;
    wire [4:0] out_chan_dep_vld_vec_14;
    wire [33:0] out_chan_dep_data_14;
    wire [4:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_0_14;
    wire [33:0] dep_chan_data_0_14;
    wire token_0_14;
    wire dep_chan_vld_6_14;
    wire [33:0] dep_chan_data_6_14;
    wire token_6_14;
    wire dep_chan_vld_13_14;
    wire [33:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_15_14;
    wire [33:0] dep_chan_data_15_14;
    wire token_15_14;
    wire dep_chan_vld_22_14;
    wire [33:0] dep_chan_data_22_14;
    wire token_22_14;
    wire [1:0] proc_15_data_FIFO_blk;
    wire [1:0] proc_15_data_PIPO_blk;
    wire [1:0] proc_15_start_FIFO_blk;
    wire [1:0] proc_15_TLF_FIFO_blk;
    wire [1:0] proc_15_input_sync_blk;
    wire [1:0] proc_15_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_15;
    reg [1:0] proc_dep_vld_vec_15_reg;
    wire [1:0] in_chan_dep_vld_vec_15;
    wire [67:0] in_chan_dep_data_vec_15;
    wire [1:0] token_in_vec_15;
    wire [1:0] out_chan_dep_vld_vec_15;
    wire [33:0] out_chan_dep_data_15;
    wire [1:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_14_15;
    wire [33:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_16_15;
    wire [33:0] dep_chan_data_16_15;
    wire token_16_15;
    wire [1:0] proc_16_data_FIFO_blk;
    wire [1:0] proc_16_data_PIPO_blk;
    wire [1:0] proc_16_start_FIFO_blk;
    wire [1:0] proc_16_TLF_FIFO_blk;
    wire [1:0] proc_16_input_sync_blk;
    wire [1:0] proc_16_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_16;
    reg [1:0] proc_dep_vld_vec_16_reg;
    wire [1:0] in_chan_dep_vld_vec_16;
    wire [67:0] in_chan_dep_data_vec_16;
    wire [1:0] token_in_vec_16;
    wire [1:0] out_chan_dep_vld_vec_16;
    wire [33:0] out_chan_dep_data_16;
    wire [1:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_15_16;
    wire [33:0] dep_chan_data_15_16;
    wire token_15_16;
    wire dep_chan_vld_17_16;
    wire [33:0] dep_chan_data_17_16;
    wire token_17_16;
    wire [1:0] proc_17_data_FIFO_blk;
    wire [1:0] proc_17_data_PIPO_blk;
    wire [1:0] proc_17_start_FIFO_blk;
    wire [1:0] proc_17_TLF_FIFO_blk;
    wire [1:0] proc_17_input_sync_blk;
    wire [1:0] proc_17_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_17;
    reg [1:0] proc_dep_vld_vec_17_reg;
    wire [1:0] in_chan_dep_vld_vec_17;
    wire [67:0] in_chan_dep_data_vec_17;
    wire [1:0] token_in_vec_17;
    wire [1:0] out_chan_dep_vld_vec_17;
    wire [33:0] out_chan_dep_data_17;
    wire [1:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_16_17;
    wire [33:0] dep_chan_data_16_17;
    wire token_16_17;
    wire dep_chan_vld_18_17;
    wire [33:0] dep_chan_data_18_17;
    wire token_18_17;
    wire [2:0] proc_18_data_FIFO_blk;
    wire [2:0] proc_18_data_PIPO_blk;
    wire [2:0] proc_18_start_FIFO_blk;
    wire [2:0] proc_18_TLF_FIFO_blk;
    wire [2:0] proc_18_input_sync_blk;
    wire [2:0] proc_18_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_18;
    reg [2:0] proc_dep_vld_vec_18_reg;
    wire [2:0] in_chan_dep_vld_vec_18;
    wire [101:0] in_chan_dep_data_vec_18;
    wire [2:0] token_in_vec_18;
    wire [2:0] out_chan_dep_vld_vec_18;
    wire [33:0] out_chan_dep_data_18;
    wire [2:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_13_18;
    wire [33:0] dep_chan_data_13_18;
    wire token_13_18;
    wire dep_chan_vld_17_18;
    wire [33:0] dep_chan_data_17_18;
    wire token_17_18;
    wire dep_chan_vld_19_18;
    wire [33:0] dep_chan_data_19_18;
    wire token_19_18;
    wire [1:0] proc_19_data_FIFO_blk;
    wire [1:0] proc_19_data_PIPO_blk;
    wire [1:0] proc_19_start_FIFO_blk;
    wire [1:0] proc_19_TLF_FIFO_blk;
    wire [1:0] proc_19_input_sync_blk;
    wire [1:0] proc_19_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_19;
    reg [1:0] proc_dep_vld_vec_19_reg;
    wire [1:0] in_chan_dep_vld_vec_19;
    wire [67:0] in_chan_dep_data_vec_19;
    wire [1:0] token_in_vec_19;
    wire [1:0] out_chan_dep_vld_vec_19;
    wire [33:0] out_chan_dep_data_19;
    wire [1:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_18_19;
    wire [33:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [33:0] dep_chan_data_20_19;
    wire token_20_19;
    wire [3:0] proc_20_data_FIFO_blk;
    wire [3:0] proc_20_data_PIPO_blk;
    wire [3:0] proc_20_start_FIFO_blk;
    wire [3:0] proc_20_TLF_FIFO_blk;
    wire [3:0] proc_20_input_sync_blk;
    wire [3:0] proc_20_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_20;
    reg [3:0] proc_dep_vld_vec_20_reg;
    wire [3:0] in_chan_dep_vld_vec_20;
    wire [135:0] in_chan_dep_data_vec_20;
    wire [3:0] token_in_vec_20;
    wire [3:0] out_chan_dep_vld_vec_20;
    wire [33:0] out_chan_dep_data_20;
    wire [3:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_0_20;
    wire [33:0] dep_chan_data_0_20;
    wire token_0_20;
    wire dep_chan_vld_12_20;
    wire [33:0] dep_chan_data_12_20;
    wire token_12_20;
    wire dep_chan_vld_19_20;
    wire [33:0] dep_chan_data_19_20;
    wire token_19_20;
    wire dep_chan_vld_29_20;
    wire [33:0] dep_chan_data_29_20;
    wire token_29_20;
    wire [4:0] proc_21_data_FIFO_blk;
    wire [4:0] proc_21_data_PIPO_blk;
    wire [4:0] proc_21_start_FIFO_blk;
    wire [4:0] proc_21_TLF_FIFO_blk;
    wire [4:0] proc_21_input_sync_blk;
    wire [4:0] proc_21_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_21;
    reg [4:0] proc_dep_vld_vec_21_reg;
    wire [4:0] in_chan_dep_vld_vec_21;
    wire [169:0] in_chan_dep_data_vec_21;
    wire [4:0] token_in_vec_21;
    wire [4:0] out_chan_dep_vld_vec_21;
    wire [33:0] out_chan_dep_data_21;
    wire [4:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_0_21;
    wire [33:0] dep_chan_data_0_21;
    wire token_0_21;
    wire dep_chan_vld_22_21;
    wire [33:0] dep_chan_data_22_21;
    wire token_22_21;
    wire dep_chan_vld_23_21;
    wire [33:0] dep_chan_data_23_21;
    wire token_23_21;
    wire dep_chan_vld_24_21;
    wire [33:0] dep_chan_data_24_21;
    wire token_24_21;
    wire dep_chan_vld_28_21;
    wire [33:0] dep_chan_data_28_21;
    wire token_28_21;
    wire [4:0] proc_22_data_FIFO_blk;
    wire [4:0] proc_22_data_PIPO_blk;
    wire [4:0] proc_22_start_FIFO_blk;
    wire [4:0] proc_22_TLF_FIFO_blk;
    wire [4:0] proc_22_input_sync_blk;
    wire [4:0] proc_22_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_22;
    reg [4:0] proc_dep_vld_vec_22_reg;
    wire [4:0] in_chan_dep_vld_vec_22;
    wire [169:0] in_chan_dep_data_vec_22;
    wire [4:0] token_in_vec_22;
    wire [4:0] out_chan_dep_vld_vec_22;
    wire [33:0] out_chan_dep_data_22;
    wire [4:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_0_22;
    wire [33:0] dep_chan_data_0_22;
    wire token_0_22;
    wire dep_chan_vld_6_22;
    wire [33:0] dep_chan_data_6_22;
    wire token_6_22;
    wire dep_chan_vld_14_22;
    wire [33:0] dep_chan_data_14_22;
    wire token_14_22;
    wire dep_chan_vld_21_22;
    wire [33:0] dep_chan_data_21_22;
    wire token_21_22;
    wire dep_chan_vld_23_22;
    wire [33:0] dep_chan_data_23_22;
    wire token_23_22;
    wire [3:0] proc_23_data_FIFO_blk;
    wire [3:0] proc_23_data_PIPO_blk;
    wire [3:0] proc_23_start_FIFO_blk;
    wire [3:0] proc_23_TLF_FIFO_blk;
    wire [3:0] proc_23_input_sync_blk;
    wire [3:0] proc_23_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_23;
    reg [3:0] proc_dep_vld_vec_23_reg;
    wire [3:0] in_chan_dep_vld_vec_23;
    wire [135:0] in_chan_dep_data_vec_23;
    wire [3:0] token_in_vec_23;
    wire [3:0] out_chan_dep_vld_vec_23;
    wire [33:0] out_chan_dep_data_23;
    wire [3:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_21_23;
    wire [33:0] dep_chan_data_21_23;
    wire token_21_23;
    wire dep_chan_vld_22_23;
    wire [33:0] dep_chan_data_22_23;
    wire token_22_23;
    wire dep_chan_vld_24_23;
    wire [33:0] dep_chan_data_24_23;
    wire token_24_23;
    wire dep_chan_vld_28_23;
    wire [33:0] dep_chan_data_28_23;
    wire token_28_23;
    wire [2:0] proc_24_data_FIFO_blk;
    wire [2:0] proc_24_data_PIPO_blk;
    wire [2:0] proc_24_start_FIFO_blk;
    wire [2:0] proc_24_TLF_FIFO_blk;
    wire [2:0] proc_24_input_sync_blk;
    wire [2:0] proc_24_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_24;
    reg [2:0] proc_dep_vld_vec_24_reg;
    wire [2:0] in_chan_dep_vld_vec_24;
    wire [101:0] in_chan_dep_data_vec_24;
    wire [2:0] token_in_vec_24;
    wire [2:0] out_chan_dep_vld_vec_24;
    wire [33:0] out_chan_dep_data_24;
    wire [2:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_21_24;
    wire [33:0] dep_chan_data_21_24;
    wire token_21_24;
    wire dep_chan_vld_23_24;
    wire [33:0] dep_chan_data_23_24;
    wire token_23_24;
    wire dep_chan_vld_25_24;
    wire [33:0] dep_chan_data_25_24;
    wire token_25_24;
    wire [1:0] proc_25_data_FIFO_blk;
    wire [1:0] proc_25_data_PIPO_blk;
    wire [1:0] proc_25_start_FIFO_blk;
    wire [1:0] proc_25_TLF_FIFO_blk;
    wire [1:0] proc_25_input_sync_blk;
    wire [1:0] proc_25_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_25;
    reg [1:0] proc_dep_vld_vec_25_reg;
    wire [1:0] in_chan_dep_vld_vec_25;
    wire [67:0] in_chan_dep_data_vec_25;
    wire [1:0] token_in_vec_25;
    wire [1:0] out_chan_dep_vld_vec_25;
    wire [33:0] out_chan_dep_data_25;
    wire [1:0] token_out_vec_25;
    wire dl_detect_out_25;
    wire dep_chan_vld_24_25;
    wire [33:0] dep_chan_data_24_25;
    wire token_24_25;
    wire dep_chan_vld_26_25;
    wire [33:0] dep_chan_data_26_25;
    wire token_26_25;
    wire [1:0] proc_26_data_FIFO_blk;
    wire [1:0] proc_26_data_PIPO_blk;
    wire [1:0] proc_26_start_FIFO_blk;
    wire [1:0] proc_26_TLF_FIFO_blk;
    wire [1:0] proc_26_input_sync_blk;
    wire [1:0] proc_26_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_26;
    reg [1:0] proc_dep_vld_vec_26_reg;
    wire [1:0] in_chan_dep_vld_vec_26;
    wire [67:0] in_chan_dep_data_vec_26;
    wire [1:0] token_in_vec_26;
    wire [1:0] out_chan_dep_vld_vec_26;
    wire [33:0] out_chan_dep_data_26;
    wire [1:0] token_out_vec_26;
    wire dl_detect_out_26;
    wire dep_chan_vld_25_26;
    wire [33:0] dep_chan_data_25_26;
    wire token_25_26;
    wire dep_chan_vld_27_26;
    wire [33:0] dep_chan_data_27_26;
    wire token_27_26;
    wire [1:0] proc_27_data_FIFO_blk;
    wire [1:0] proc_27_data_PIPO_blk;
    wire [1:0] proc_27_start_FIFO_blk;
    wire [1:0] proc_27_TLF_FIFO_blk;
    wire [1:0] proc_27_input_sync_blk;
    wire [1:0] proc_27_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_27;
    reg [1:0] proc_dep_vld_vec_27_reg;
    wire [1:0] in_chan_dep_vld_vec_27;
    wire [67:0] in_chan_dep_data_vec_27;
    wire [1:0] token_in_vec_27;
    wire [1:0] out_chan_dep_vld_vec_27;
    wire [33:0] out_chan_dep_data_27;
    wire [1:0] token_out_vec_27;
    wire dl_detect_out_27;
    wire dep_chan_vld_26_27;
    wire [33:0] dep_chan_data_26_27;
    wire token_26_27;
    wire dep_chan_vld_29_27;
    wire [33:0] dep_chan_data_29_27;
    wire token_29_27;
    wire [2:0] proc_28_data_FIFO_blk;
    wire [2:0] proc_28_data_PIPO_blk;
    wire [2:0] proc_28_start_FIFO_blk;
    wire [2:0] proc_28_TLF_FIFO_blk;
    wire [2:0] proc_28_input_sync_blk;
    wire [2:0] proc_28_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_28;
    reg [2:0] proc_dep_vld_vec_28_reg;
    wire [2:0] in_chan_dep_vld_vec_28;
    wire [101:0] in_chan_dep_data_vec_28;
    wire [2:0] token_in_vec_28;
    wire [2:0] out_chan_dep_vld_vec_28;
    wire [33:0] out_chan_dep_data_28;
    wire [2:0] token_out_vec_28;
    wire dl_detect_out_28;
    wire dep_chan_vld_21_28;
    wire [33:0] dep_chan_data_21_28;
    wire token_21_28;
    wire dep_chan_vld_23_28;
    wire [33:0] dep_chan_data_23_28;
    wire token_23_28;
    wire dep_chan_vld_29_28;
    wire [33:0] dep_chan_data_29_28;
    wire token_29_28;
    wire [4:0] proc_29_data_FIFO_blk;
    wire [4:0] proc_29_data_PIPO_blk;
    wire [4:0] proc_29_start_FIFO_blk;
    wire [4:0] proc_29_TLF_FIFO_blk;
    wire [4:0] proc_29_input_sync_blk;
    wire [4:0] proc_29_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_29;
    reg [4:0] proc_dep_vld_vec_29_reg;
    wire [4:0] in_chan_dep_vld_vec_29;
    wire [169:0] in_chan_dep_data_vec_29;
    wire [4:0] token_in_vec_29;
    wire [4:0] out_chan_dep_vld_vec_29;
    wire [33:0] out_chan_dep_data_29;
    wire [4:0] token_out_vec_29;
    wire dl_detect_out_29;
    wire dep_chan_vld_0_29;
    wire [33:0] dep_chan_data_0_29;
    wire token_0_29;
    wire dep_chan_vld_20_29;
    wire [33:0] dep_chan_data_20_29;
    wire token_20_29;
    wire dep_chan_vld_27_29;
    wire [33:0] dep_chan_data_27_29;
    wire token_27_29;
    wire dep_chan_vld_28_29;
    wire [33:0] dep_chan_data_28_29;
    wire token_28_29;
    wire dep_chan_vld_30_29;
    wire [33:0] dep_chan_data_30_29;
    wire token_30_29;
    wire [1:0] proc_30_data_FIFO_blk;
    wire [1:0] proc_30_data_PIPO_blk;
    wire [1:0] proc_30_start_FIFO_blk;
    wire [1:0] proc_30_TLF_FIFO_blk;
    wire [1:0] proc_30_input_sync_blk;
    wire [1:0] proc_30_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_30;
    reg [1:0] proc_dep_vld_vec_30_reg;
    wire [1:0] in_chan_dep_vld_vec_30;
    wire [67:0] in_chan_dep_data_vec_30;
    wire [1:0] token_in_vec_30;
    wire [1:0] out_chan_dep_vld_vec_30;
    wire [33:0] out_chan_dep_data_30;
    wire [1:0] token_out_vec_30;
    wire dl_detect_out_30;
    wire dep_chan_vld_29_30;
    wire [33:0] dep_chan_data_29_30;
    wire token_29_30;
    wire dep_chan_vld_31_30;
    wire [33:0] dep_chan_data_31_30;
    wire token_31_30;
    wire [1:0] proc_31_data_FIFO_blk;
    wire [1:0] proc_31_data_PIPO_blk;
    wire [1:0] proc_31_start_FIFO_blk;
    wire [1:0] proc_31_TLF_FIFO_blk;
    wire [1:0] proc_31_input_sync_blk;
    wire [1:0] proc_31_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_31;
    reg [1:0] proc_dep_vld_vec_31_reg;
    wire [1:0] in_chan_dep_vld_vec_31;
    wire [67:0] in_chan_dep_data_vec_31;
    wire [1:0] token_in_vec_31;
    wire [1:0] out_chan_dep_vld_vec_31;
    wire [33:0] out_chan_dep_data_31;
    wire [1:0] token_out_vec_31;
    wire dl_detect_out_31;
    wire dep_chan_vld_30_31;
    wire [33:0] dep_chan_data_30_31;
    wire token_30_31;
    wire dep_chan_vld_32_31;
    wire [33:0] dep_chan_data_32_31;
    wire token_32_31;
    wire [1:0] proc_32_data_FIFO_blk;
    wire [1:0] proc_32_data_PIPO_blk;
    wire [1:0] proc_32_start_FIFO_blk;
    wire [1:0] proc_32_TLF_FIFO_blk;
    wire [1:0] proc_32_input_sync_blk;
    wire [1:0] proc_32_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_32;
    reg [1:0] proc_dep_vld_vec_32_reg;
    wire [1:0] in_chan_dep_vld_vec_32;
    wire [67:0] in_chan_dep_data_vec_32;
    wire [1:0] token_in_vec_32;
    wire [1:0] out_chan_dep_vld_vec_32;
    wire [33:0] out_chan_dep_data_32;
    wire [1:0] token_out_vec_32;
    wire dl_detect_out_32;
    wire dep_chan_vld_31_32;
    wire [33:0] dep_chan_data_31_32;
    wire token_31_32;
    wire dep_chan_vld_33_32;
    wire [33:0] dep_chan_data_33_32;
    wire token_33_32;
    wire [0:0] proc_33_data_FIFO_blk;
    wire [0:0] proc_33_data_PIPO_blk;
    wire [0:0] proc_33_start_FIFO_blk;
    wire [0:0] proc_33_TLF_FIFO_blk;
    wire [0:0] proc_33_input_sync_blk;
    wire [0:0] proc_33_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_33;
    reg [0:0] proc_dep_vld_vec_33_reg;
    wire [0:0] in_chan_dep_vld_vec_33;
    wire [33:0] in_chan_dep_data_vec_33;
    wire [0:0] token_in_vec_33;
    wire [0:0] out_chan_dep_vld_vec_33;
    wire [33:0] out_chan_dep_data_33;
    wire [0:0] token_out_vec_33;
    wire dl_detect_out_33;
    wire dep_chan_vld_32_33;
    wire [33:0] dep_chan_data_32_33;
    wire token_32_33;
    wire [33:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [33:0] origin;

    reg ap_done_reg_0;// for module grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_done & ~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

reg [15:0] trans_in_cnt_6;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_6 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.start_write == 1'b1) begin
        trans_in_cnt_6 <= trans_in_cnt_6 + 16'h1;
    end
    else begin
        trans_in_cnt_6 <= trans_in_cnt_6;
    end
end

reg [15:0] trans_out_cnt_6;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_6 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.ap_continue == 1'b1) begin
        trans_out_cnt_6 <= trans_out_cnt_6 + 16'h1;
    end
    else begin
        trans_out_cnt_6 <= trans_out_cnt_6;
    end
end

reg [15:0] trans_in_cnt_7;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_7 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_7 <= trans_in_cnt_7 + 16'h1;
    end
    else begin
        trans_in_cnt_7 <= trans_in_cnt_7;
    end
end

reg [15:0] trans_out_cnt_7;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_7 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_7 <= trans_out_cnt_7 + 16'h1;
    end
    else begin
        trans_out_cnt_7 <= trans_out_cnt_7;
    end
end

reg [15:0] trans_in_cnt_8;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_8 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.start_write == 1'b1) begin
        trans_in_cnt_8 <= trans_in_cnt_8 + 16'h1;
    end
    else begin
        trans_in_cnt_8 <= trans_in_cnt_8;
    end
end

reg [15:0] trans_out_cnt_8;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_8 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.ap_continue == 1'b1) begin
        trans_out_cnt_8 <= trans_out_cnt_8 + 16'h1;
    end
    else begin
        trans_out_cnt_8 <= trans_out_cnt_8;
    end
end

reg [15:0] trans_in_cnt_9;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_9 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.start_write == 1'b1) begin
        trans_in_cnt_9 <= trans_in_cnt_9 + 16'h1;
    end
    else begin
        trans_in_cnt_9 <= trans_in_cnt_9;
    end
end

reg [15:0] trans_out_cnt_9;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_9 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.ap_continue == 1'b1) begin
        trans_out_cnt_9 <= trans_out_cnt_9 + 16'h1;
    end
    else begin
        trans_out_cnt_9 <= trans_out_cnt_9;
    end
end

reg [15:0] trans_in_cnt_10;// for process grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_10 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.start_write == 1'b1) begin
        trans_in_cnt_10 <= trans_in_cnt_10 + 16'h1;
    end
    else begin
        trans_in_cnt_10 <= trans_in_cnt_10;
    end
end

reg [15:0] trans_out_cnt_10;// for process grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_10 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.ap_continue == 1'b1) begin
        trans_out_cnt_10 <= trans_out_cnt_10 + 16'h1;
    end
    else begin
        trans_out_cnt_10 <= trans_out_cnt_10;
    end
end

reg [15:0] trans_in_cnt_11;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_11 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.start_write == 1'b1) begin
        trans_in_cnt_11 <= trans_in_cnt_11 + 16'h1;
    end
    else begin
        trans_in_cnt_11 <= trans_in_cnt_11;
    end
end

reg [15:0] trans_out_cnt_11;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_11 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.ap_continue == 1'b1) begin
        trans_out_cnt_11 <= trans_out_cnt_11 + 16'h1;
    end
    else begin
        trans_out_cnt_11 <= trans_out_cnt_11;
    end
end

reg [15:0] trans_in_cnt_12;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_12 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_12 <= trans_in_cnt_12 + 16'h1;
    end
    else begin
        trans_in_cnt_12 <= trans_in_cnt_12;
    end
end

reg [15:0] trans_out_cnt_12;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_12 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_12 <= trans_out_cnt_12 + 16'h1;
    end
    else begin
        trans_out_cnt_12 <= trans_out_cnt_12;
    end
end

reg [15:0] trans_in_cnt_13;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_13 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.start_write == 1'b1) begin
        trans_in_cnt_13 <= trans_in_cnt_13 + 16'h1;
    end
    else begin
        trans_in_cnt_13 <= trans_in_cnt_13;
    end
end

reg [15:0] trans_out_cnt_13;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_13 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.ap_continue == 1'b1) begin
        trans_out_cnt_13 <= trans_out_cnt_13 + 16'h1;
    end
    else begin
        trans_out_cnt_13 <= trans_out_cnt_13;
    end
end

reg [15:0] trans_in_cnt_14;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_14 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.start_write == 1'b1) begin
        trans_in_cnt_14 <= trans_in_cnt_14 + 16'h1;
    end
    else begin
        trans_in_cnt_14 <= trans_in_cnt_14;
    end
end

reg [15:0] trans_out_cnt_14;// for process grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_14 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_14 <= trans_out_cnt_14 + 16'h1;
    end
    else begin
        trans_out_cnt_14 <= trans_out_cnt_14;
    end
end

reg [15:0] trans_in_cnt_15;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_15 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_15 <= trans_in_cnt_15 + 16'h1;
    end
    else begin
        trans_in_cnt_15 <= trans_in_cnt_15;
    end
end

reg [15:0] trans_out_cnt_15;// for process grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_15 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_15 <= trans_out_cnt_15 + 16'h1;
    end
    else begin
        trans_out_cnt_15 <= trans_out_cnt_15;
    end
end

reg [15:0] trans_in_cnt_16;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_16 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.start_write == 1'b1) begin
        trans_in_cnt_16 <= trans_in_cnt_16 + 16'h1;
    end
    else begin
        trans_in_cnt_16 <= trans_in_cnt_16;
    end
end

reg [15:0] trans_out_cnt_16;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_16 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.ap_continue == 1'b1) begin
        trans_out_cnt_16 <= trans_out_cnt_16 + 16'h1;
    end
    else begin
        trans_out_cnt_16 <= trans_out_cnt_16;
    end
end

reg [15:0] trans_in_cnt_17;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_17 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.start_write == 1'b1) begin
        trans_in_cnt_17 <= trans_in_cnt_17 + 16'h1;
    end
    else begin
        trans_in_cnt_17 <= trans_in_cnt_17;
    end
end

reg [15:0] trans_out_cnt_17;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_17 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.ap_continue == 1'b1) begin
        trans_out_cnt_17 <= trans_out_cnt_17 + 16'h1;
    end
    else begin
        trans_out_cnt_17 <= trans_out_cnt_17;
    end
end

reg [15:0] trans_in_cnt_18;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_18 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.start_write == 1'b1) begin
        trans_in_cnt_18 <= trans_in_cnt_18 + 16'h1;
    end
    else begin
        trans_in_cnt_18 <= trans_in_cnt_18;
    end
end

reg [15:0] trans_out_cnt_18;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_18 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.ap_continue == 1'b1) begin
        trans_out_cnt_18 <= trans_out_cnt_18 + 16'h1;
    end
    else begin
        trans_out_cnt_18 <= trans_out_cnt_18;
    end
end

reg [15:0] trans_in_cnt_19;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_19 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.start_write == 1'b1) begin
        trans_in_cnt_19 <= trans_in_cnt_19 + 16'h1;
    end
    else begin
        trans_in_cnt_19 <= trans_in_cnt_19;
    end
end

reg [15:0] trans_out_cnt_19;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_19 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.ap_continue == 1'b1) begin
        trans_out_cnt_19 <= trans_out_cnt_19 + 16'h1;
    end
    else begin
        trans_out_cnt_19 <= trans_out_cnt_19;
    end
end

reg [15:0] trans_in_cnt_20;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_20 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.start_write == 1'b1) begin
        trans_in_cnt_20 <= trans_in_cnt_20 + 16'h1;
    end
    else begin
        trans_in_cnt_20 <= trans_in_cnt_20;
    end
end

reg [15:0] trans_out_cnt_20;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_20 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.ap_continue == 1'b1) begin
        trans_out_cnt_20 <= trans_out_cnt_20 + 16'h1;
    end
    else begin
        trans_out_cnt_20 <= trans_out_cnt_20;
    end
end

reg [15:0] trans_in_cnt_21;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_21 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.start_write == 1'b1) begin
        trans_in_cnt_21 <= trans_in_cnt_21 + 16'h1;
    end
    else begin
        trans_in_cnt_21 <= trans_in_cnt_21;
    end
end

reg [15:0] trans_out_cnt_21;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_21 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.ap_continue == 1'b1) begin
        trans_out_cnt_21 <= trans_out_cnt_21 + 16'h1;
    end
    else begin
        trans_out_cnt_21 <= trans_out_cnt_21;
    end
end

reg [15:0] trans_in_cnt_22;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_22 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.start_write == 1'b1) begin
        trans_in_cnt_22 <= trans_in_cnt_22 + 16'h1;
    end
    else begin
        trans_in_cnt_22 <= trans_in_cnt_22;
    end
end

reg [15:0] trans_out_cnt_22;// for process grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_22 <= 16'h0;
    end
    else if (grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.ap_done == 1'b1 && grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.ap_continue == 1'b1) begin
        trans_out_cnt_22 <= trans_out_cnt_22 + 16'h1;
    end
    else begin
        trans_out_cnt_22 <= trans_out_cnt_22;
    end
end

    // Process: grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 0, 10, 10) bd_v_mix_0_0_hls_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_background_Y_R_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_background_U_G_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_background_V_B_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerEnable_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerStartX7_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerStartY10_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerScaleFactor19_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read5_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read110_out_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_19_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_19_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layer1_buf1_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layer1_buf2_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read1_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read46_out_blk_n);
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_VMixHlsDataFlowFunction_entry493_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_13_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layer2_buf1_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layer2_buf2_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read2_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read57_out_blk_n);
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_VMixHlsDataFlowFunction_entry493_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    assign proc_0_data_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layer3_buf1_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read3_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read6_out_blk_n);
    assign proc_0_data_PIPO_blk[3] = 1'b0;
    assign proc_0_start_FIFO_blk[3] = 1'b0;
    assign proc_0_TLF_FIFO_blk[3] = 1'b0;
    assign proc_0_input_sync_blk[3] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_VMixHlsDataFlowFunction_entry493_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_1_U0_ap_ready);
    assign proc_0_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_0[3] = dl_detect_out ? proc_dep_vld_vec_0_reg[3] : (proc_0_data_FIFO_blk[3] | proc_0_data_PIPO_blk[3] | proc_0_start_FIFO_blk[3] | proc_0_TLF_FIFO_blk[3] | proc_0_input_sync_blk[3] | proc_0_output_sync_blk[3]);
    assign proc_0_data_FIFO_blk[4] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read415_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read512_out_blk_n);
    assign proc_0_data_PIPO_blk[4] = 1'b0;
    assign proc_0_start_FIFO_blk[4] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_AXIvideo2MultiPixStream_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_AXIvideo2MultiPixStream_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[4] = 1'b0;
    assign proc_0_input_sync_blk[4] = 1'b0;
    assign proc_0_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_0[4] = dl_detect_out ? proc_dep_vld_vec_0_reg[4] : (proc_0_data_FIFO_blk[4] | proc_0_data_PIPO_blk[4] | proc_0_start_FIFO_blk[4] | proc_0_TLF_FIFO_blk[4] | proc_0_input_sync_blk[4] | proc_0_output_sync_blk[4]);
    assign proc_0_data_FIFO_blk[5] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerStartX8_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerStartY11_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerWidth14_out1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerHeight17_out3_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerScaleFactor20_out_blk_n);
    assign proc_0_data_PIPO_blk[5] = 1'b0;
    assign proc_0_start_FIFO_blk[5] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_21_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_21_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[5] = 1'b0;
    assign proc_0_input_sync_blk[5] = 1'b0;
    assign proc_0_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_0[5] = dl_detect_out ? proc_dep_vld_vec_0_reg[5] : (proc_0_data_FIFO_blk[5] | proc_0_data_PIPO_blk[5] | proc_0_start_FIFO_blk[5] | proc_0_TLF_FIFO_blk[5] | proc_0_input_sync_blk[5] | proc_0_output_sync_blk[5]);
    assign proc_0_data_FIFO_blk[6] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerStartX9_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerStartY12_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerWidth15_out2_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerHeight18_out4_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerScaleFactor21_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.p_read811_out_blk_n);
    assign proc_0_data_PIPO_blk[6] = 1'b0;
    assign proc_0_start_FIFO_blk[6] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_true_true_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_true_true_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[6] = 1'b0;
    assign proc_0_input_sync_blk[6] = 1'b0;
    assign proc_0_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_0[6] = dl_detect_out ? proc_dep_vld_vec_0_reg[6] : (proc_0_data_FIFO_blk[6] | proc_0_data_PIPO_blk[6] | proc_0_start_FIFO_blk[6] | proc_0_TLF_FIFO_blk[6] | proc_0_input_sync_blk[6] | proc_0_output_sync_blk[6]);
    assign proc_0_data_FIFO_blk[7] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerWidth13_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerHeight16_out_blk_n);
    assign proc_0_data_PIPO_blk[7] = 1'b0;
    assign proc_0_start_FIFO_blk[7] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split712_proc_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split712_proc_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[7] = 1'b0;
    assign proc_0_input_sync_blk[7] = 1'b0;
    assign proc_0_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_0[7] = dl_detect_out ? proc_dep_vld_vec_0_reg[7] : (proc_0_data_FIFO_blk[7] | proc_0_data_PIPO_blk[7] | proc_0_start_FIFO_blk[7] | proc_0_TLF_FIFO_blk[7] | proc_0_input_sync_blk[7] | proc_0_output_sync_blk[7]);
    assign proc_0_data_FIFO_blk[8] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerWidth14_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerHeight17_out_blk_n);
    assign proc_0_data_PIPO_blk[8] = 1'b0;
    assign proc_0_start_FIFO_blk[8] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split721_proc_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split721_proc_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[8] = 1'b0;
    assign proc_0_input_sync_blk[8] = 1'b0;
    assign proc_0_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_0[8] = dl_detect_out ? proc_dep_vld_vec_0_reg[8] : (proc_0_data_FIFO_blk[8] | proc_0_data_PIPO_blk[8] | proc_0_start_FIFO_blk[8] | proc_0_TLF_FIFO_blk[8] | proc_0_input_sync_blk[8] | proc_0_output_sync_blk[8]);
    assign proc_0_data_FIFO_blk[9] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerWidth15_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.HwReg_layerHeight18_out_blk_n);
    assign proc_0_data_PIPO_blk[9] = 1'b0;
    assign proc_0_start_FIFO_blk[9] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split730_proc_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_entry493_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split730_proc_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[9] = 1'b0;
    assign proc_0_input_sync_blk[9] = 1'b0;
    assign proc_0_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_0[9] = dl_detect_out ? proc_dep_vld_vec_0_reg[9] : (proc_0_data_FIFO_blk[9] | proc_0_data_PIPO_blk[9] | proc_0_start_FIFO_blk[9] | proc_0_TLF_FIFO_blk[9] | proc_0_input_sync_blk[9] | proc_0_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[33 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_5_0;
    assign in_chan_dep_data_vec_0[67 : 34] = dep_chan_data_5_0;
    assign token_in_vec_0[1] = token_5_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_6_0;
    assign in_chan_dep_data_vec_0[101 : 68] = dep_chan_data_6_0;
    assign token_in_vec_0[2] = token_6_0;
    assign in_chan_dep_vld_vec_0[3] = dep_chan_vld_12_0;
    assign in_chan_dep_data_vec_0[135 : 102] = dep_chan_data_12_0;
    assign token_in_vec_0[3] = token_12_0;
    assign in_chan_dep_vld_vec_0[4] = dep_chan_vld_13_0;
    assign in_chan_dep_data_vec_0[169 : 136] = dep_chan_data_13_0;
    assign token_in_vec_0[4] = token_13_0;
    assign in_chan_dep_vld_vec_0[5] = dep_chan_vld_14_0;
    assign in_chan_dep_data_vec_0[203 : 170] = dep_chan_data_14_0;
    assign token_in_vec_0[5] = token_14_0;
    assign in_chan_dep_vld_vec_0[6] = dep_chan_vld_20_0;
    assign in_chan_dep_data_vec_0[237 : 204] = dep_chan_data_20_0;
    assign token_in_vec_0[6] = token_20_0;
    assign in_chan_dep_vld_vec_0[7] = dep_chan_vld_21_0;
    assign in_chan_dep_data_vec_0[271 : 238] = dep_chan_data_21_0;
    assign token_in_vec_0[7] = token_21_0;
    assign in_chan_dep_vld_vec_0[8] = dep_chan_vld_22_0;
    assign in_chan_dep_data_vec_0[305 : 272] = dep_chan_data_22_0;
    assign token_in_vec_0[8] = token_22_0;
    assign in_chan_dep_vld_vec_0[9] = dep_chan_vld_29_0;
    assign in_chan_dep_data_vec_0[339 : 306] = dep_chan_data_29_0;
    assign token_in_vec_0[9] = token_29_0;
    assign dep_chan_vld_0_12 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_12 = out_chan_dep_data_0;
    assign token_0_12 = token_out_vec_0[0];
    assign dep_chan_vld_0_6 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_6 = out_chan_dep_data_0;
    assign token_0_6 = token_out_vec_0[1];
    assign dep_chan_vld_0_14 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_14 = out_chan_dep_data_0;
    assign token_0_14 = token_out_vec_0[2];
    assign dep_chan_vld_0_22 = out_chan_dep_vld_vec_0[3];
    assign dep_chan_data_0_22 = out_chan_dep_data_0;
    assign token_0_22 = token_out_vec_0[3];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[4];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[4];
    assign dep_chan_vld_0_20 = out_chan_dep_vld_vec_0[5];
    assign dep_chan_data_0_20 = out_chan_dep_data_0;
    assign token_0_20 = token_out_vec_0[5];
    assign dep_chan_vld_0_29 = out_chan_dep_vld_vec_0[6];
    assign dep_chan_data_0_29 = out_chan_dep_data_0;
    assign token_0_29 = token_out_vec_0[6];
    assign dep_chan_vld_0_5 = out_chan_dep_vld_vec_0[7];
    assign dep_chan_data_0_5 = out_chan_dep_data_0;
    assign token_0_5 = token_out_vec_0[7];
    assign dep_chan_vld_0_13 = out_chan_dep_vld_vec_0[8];
    assign dep_chan_data_0_13 = out_chan_dep_data_0;
    assign token_0_13 = token_out_vec_0[8];
    assign dep_chan_vld_0_21 = out_chan_dep_vld_vec_0[9];
    assign dep_chan_data_0_21 = out_chan_dep_data_0;
    assign token_0_21 = token_out_vec_0[9];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 1, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.srcLayer0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.layerEnableFlag_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.Height_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.WidthIn_out_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_10_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_10_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.Height_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.WidthIn_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.layerEnableFlag_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_AXIvideo2MultiPixStream_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.AXIvideo2MultiPixStream_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_AXIvideo2MultiPixStream_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[33 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[67 : 34] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[0];
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 2, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_2 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.height_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.width_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.layerEnableFlag_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_10_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_10_U0_U.if_write);
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.layerEnableFlag_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.height_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.width_out_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_11_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_10_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_11_U0_U.if_read);
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[33 : 0] = dep_chan_data_1_2;
    assign token_in_vec_2[0] = token_1_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[67 : 34] = dep_chan_data_3_2;
    assign token_in_vec_2[1] = token_3_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 3, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_3 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.height_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.width_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.layerEnableFlag_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_11_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_11_U0_U.if_write);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.layerEnableFlag_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.height_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.width_out_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_12_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_11_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_12_U0_U.if_read);
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[33 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[67 : 34] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_12_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 4, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_4 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_12_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_12_U0.height_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_12_U0.width_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_12_U0.layerEnableFlag_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_12_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_12_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_12_U0_U.if_write);
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_12_U0.outImg_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[33 : 0] = dep_chan_data_3_4;
    assign token_in_vec_4[0] = token_3_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_12_4;
    assign in_chan_dep_data_vec_4[67 : 34] = dep_chan_data_12_4;
    assign token_in_vec_4[1] = token_12_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_12 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_12 = out_chan_dep_data_4;
    assign token_4_12 = token_out_vec_4[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 5, 4, 4) bd_v_mix_0_0_hls_deadlock_detect_unit_5 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.HwReg_layerWidth13_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.HwReg_layerHeight16_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split712_proc_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split712_proc_U0_U.if_write);
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.HwReg_layerWidth13_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.HwReg_layerHeight16_out_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.layer1WidthInBytes_out_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.HwReg_layerHeight16_load_out_out_blk_n);
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    assign proc_5_data_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.layer1WidthInBytes_cast_out_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.HwReg_layerHeight16_load_cast_out_out_blk_n);
    assign proc_5_data_PIPO_blk[3] = 1'b0;
    assign proc_5_start_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_17_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split712_proc_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_17_U0_U.if_read);
    assign proc_5_TLF_FIFO_blk[3] = 1'b0;
    assign proc_5_input_sync_blk[3] = 1'b0;
    assign proc_5_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_5[3] = dl_detect_out ? proc_dep_vld_vec_5_reg[3] : (proc_5_data_FIFO_blk[3] | proc_5_data_PIPO_blk[3] | proc_5_start_FIFO_blk[3] | proc_5_TLF_FIFO_blk[3] | proc_5_input_sync_blk[3] | proc_5_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_0_5;
    assign in_chan_dep_data_vec_5[33 : 0] = dep_chan_data_0_5;
    assign token_in_vec_5[0] = token_0_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[67 : 34] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_10_5;
    assign in_chan_dep_data_vec_5[101 : 68] = dep_chan_data_10_5;
    assign token_in_vec_5[2] = token_10_5;
    assign in_chan_dep_vld_vec_5[3] = dep_chan_vld_12_5;
    assign in_chan_dep_data_vec_5[135 : 102] = dep_chan_data_12_5;
    assign token_in_vec_5[3] = token_12_5;
    assign dep_chan_vld_5_0 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_0 = out_chan_dep_data_5;
    assign token_5_0 = token_out_vec_5[0];
    assign dep_chan_vld_5_12 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_12 = out_chan_dep_data_5;
    assign token_5_12 = token_out_vec_5[1];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[2];
    assign dep_chan_vld_5_10 = out_chan_dep_vld_vec_5[3];
    assign dep_chan_data_5_10 = out_chan_dep_data_5;
    assign token_5_10 = token_out_vec_5[3];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 6, 5, 5) bd_v_mix_0_0_hls_deadlock_detect_unit_6 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.bytesLayer1_plane0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.bytesLayer1_plane1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.HwReg_layerHeight16_load_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.layer1WidthInBytes_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.p_read1_out_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_14_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_14_U0_U.if_read);
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.HwReg_layer1_buf1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.HwReg_layer1_buf2_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.p_read46_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.p_read1_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_13_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_VMixHlsDataFlowFunction_entry493_U0_ap_ready);
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.HwReg_layerHeight16_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.layer1WidthInBytes_loc_blk_n);
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0;
    assign proc_6_TLF_FIFO_blk[2] = 1'b0;
    assign proc_6_input_sync_blk[2] = 1'b0;
    assign proc_6_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    assign proc_6_data_FIFO_blk[3] = 1'b0;
    assign proc_6_data_PIPO_blk[3] = 1'b0;
    assign proc_6_start_FIFO_blk[3] = 1'b0;
    assign proc_6_TLF_FIFO_blk[3] = 1'b0;
    assign proc_6_input_sync_blk[3] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_13_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_U0_ap_ready);
    assign proc_6_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_6[3] = dl_detect_out ? proc_dep_vld_vec_6_reg[3] : (proc_6_data_FIFO_blk[3] | proc_6_data_PIPO_blk[3] | proc_6_start_FIFO_blk[3] | proc_6_TLF_FIFO_blk[3] | proc_6_input_sync_blk[3] | proc_6_output_sync_blk[3]);
    assign proc_6_data_FIFO_blk[4] = 1'b0;
    assign proc_6_data_PIPO_blk[4] = 1'b0;
    assign proc_6_start_FIFO_blk[4] = 1'b0;
    assign proc_6_TLF_FIFO_blk[4] = 1'b0;
    assign proc_6_input_sync_blk[4] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_13_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_13_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_1_U0_ap_ready);
    assign proc_6_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_6[4] = dl_detect_out ? proc_dep_vld_vec_6_reg[4] : (proc_6_data_FIFO_blk[4] | proc_6_data_PIPO_blk[4] | proc_6_start_FIFO_blk[4] | proc_6_TLF_FIFO_blk[4] | proc_6_input_sync_blk[4] | proc_6_output_sync_blk[4]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_0_6;
    assign in_chan_dep_data_vec_6[33 : 0] = dep_chan_data_0_6;
    assign token_in_vec_6[0] = token_0_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[67 : 34] = dep_chan_data_5_6;
    assign token_in_vec_6[1] = token_5_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[101 : 68] = dep_chan_data_7_6;
    assign token_in_vec_6[2] = token_7_6;
    assign in_chan_dep_vld_vec_6[3] = dep_chan_vld_14_6;
    assign in_chan_dep_data_vec_6[135 : 102] = dep_chan_data_14_6;
    assign token_in_vec_6[3] = token_14_6;
    assign in_chan_dep_vld_vec_6[4] = dep_chan_vld_22_6;
    assign in_chan_dep_data_vec_6[169 : 136] = dep_chan_data_22_6;
    assign token_in_vec_6[4] = token_22_6;
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[0];
    assign dep_chan_vld_6_0 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_0 = out_chan_dep_data_6;
    assign token_6_0 = token_out_vec_6[1];
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[2];
    assign dep_chan_vld_6_14 = out_chan_dep_vld_vec_6[3];
    assign dep_chan_data_6_14 = out_chan_dep_data_6;
    assign token_6_14 = token_out_vec_6[3];
    assign dep_chan_vld_6_22 = out_chan_dep_vld_vec_6[4];
    assign dep_chan_data_6_22 = out_chan_dep_data_6;
    assign token_6_22 = token_out_vec_6[4];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 7, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_7 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.bytesLayer1_plane0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.bytesLayer1_plane1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.HwReg_layerHeight16_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.layer1WidthInBytes_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.p_read1_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_14_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_14_U0_U.if_write);
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.srcLayer1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.HwReg_layerHeight16_load_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.layer1WidthInBytes_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.p_read1_out_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_15_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_14_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_15_U0_U.if_read);
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[33 : 0] = dep_chan_data_6_7;
    assign token_in_vec_7[0] = token_6_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[67 : 34] = dep_chan_data_8_7;
    assign token_in_vec_7[1] = token_8_7;
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[0];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 8, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_8 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.srcLayer1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.HwReg_layerHeight16_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.layer1WidthInBytes_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.p_read1_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_15_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_15_U0_U.if_write);
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.srcLayer1Yuv422_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.HwReg_layerHeight16_load_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.layer1WidthInBytes_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.p_read1_out_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_16_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_15_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_16_U0_U.if_read);
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[33 : 0] = dep_chan_data_7_8;
    assign token_in_vec_8[0] = token_7_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[67 : 34] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[0];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 9, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_9 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0.srcLayer1Yuv422_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0.HwReg_layerHeight16_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0.layer1WidthInBytes_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0.p_read1_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_16_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_16_U0_U.if_write);
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0.srcLayer1Yuv_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_16_U0.p_read1_out_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[33 : 0] = dep_chan_data_8_9;
    assign token_in_vec_9[0] = token_8_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[67 : 34] = dep_chan_data_10_9;
    assign token_in_vec_9[1] = token_10_9;
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[0];
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 10, 3, 3) bd_v_mix_0_0_hls_deadlock_detect_unit_10 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.srcLayer1Yuv_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.p_read1_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.srcLayer1Rgb_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.HwReg_layerHeight16_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.layer1WidthInBytes_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.p_read1_out_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_18_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_18_U0_U.if_read);
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.HwReg_layerHeight16_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.layer1WidthInBytes_cast_loc_blk_n);
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_17_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_17_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_17_U0_U.if_write);
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0;
    assign proc_10_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_5_10;
    assign in_chan_dep_data_vec_10[33 : 0] = dep_chan_data_5_10;
    assign token_in_vec_10[0] = token_5_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[67 : 34] = dep_chan_data_9_10;
    assign token_in_vec_10[1] = token_9_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[101 : 68] = dep_chan_data_11_10;
    assign token_in_vec_10[2] = token_11_10;
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[0];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[1];
    assign dep_chan_vld_10_5 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_5 = out_chan_dep_data_10;
    assign token_10_5 = token_out_vec_10[2];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_18_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 11, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_11 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_18_U0.srcLayer1Rgb_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_18_U0.HwReg_layerHeight16_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_18_U0.layer1WidthInBytes_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_18_U0.p_read1_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_18_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_18_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_18_U0_U.if_write);
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_18_U0.srcLayer1x_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[33 : 0] = dep_chan_data_10_11;
    assign token_in_vec_11[0] = token_10_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[67 : 34] = dep_chan_data_12_11;
    assign token_in_vec_11[1] = token_12_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 12, 5, 5) bd_v_mix_0_0_hls_deadlock_detect_unit_12 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.outLayer0_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.srcLayer1x_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.outLayer1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_6_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.p_read_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.p_read1_out_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0;
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    assign proc_12_data_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.p_read_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.p_read1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_3_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_4_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_5_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_6_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_151_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_164_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_1913_blk_n);
    assign proc_12_data_PIPO_blk[3] = 1'b0;
    assign proc_12_start_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_19_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_19_U0_U.if_write);
    assign proc_12_TLF_FIFO_blk[3] = 1'b0;
    assign proc_12_input_sync_blk[3] = 1'b0;
    assign proc_12_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_12[3] = dl_detect_out ? proc_dep_vld_vec_12_reg[3] : (proc_12_data_FIFO_blk[3] | proc_12_data_PIPO_blk[3] | proc_12_start_FIFO_blk[3] | proc_12_TLF_FIFO_blk[3] | proc_12_input_sync_blk[3] | proc_12_output_sync_blk[3]);
    assign proc_12_data_FIFO_blk[4] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_177_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_19_U0.hwReg_1810_blk_n);
    assign proc_12_data_PIPO_blk[4] = 1'b0;
    assign proc_12_start_FIFO_blk[4] = 1'b0;
    assign proc_12_TLF_FIFO_blk[4] = 1'b0;
    assign proc_12_input_sync_blk[4] = 1'b0;
    assign proc_12_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_12[4] = dl_detect_out ? proc_dep_vld_vec_12_reg[4] : (proc_12_data_FIFO_blk[4] | proc_12_data_PIPO_blk[4] | proc_12_start_FIFO_blk[4] | proc_12_TLF_FIFO_blk[4] | proc_12_input_sync_blk[4] | proc_12_output_sync_blk[4]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_0_12;
    assign in_chan_dep_data_vec_12[33 : 0] = dep_chan_data_0_12;
    assign token_in_vec_12[0] = token_0_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_4_12;
    assign in_chan_dep_data_vec_12[67 : 34] = dep_chan_data_4_12;
    assign token_in_vec_12[1] = token_4_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_5_12;
    assign in_chan_dep_data_vec_12[101 : 68] = dep_chan_data_5_12;
    assign token_in_vec_12[2] = token_5_12;
    assign in_chan_dep_vld_vec_12[3] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[135 : 102] = dep_chan_data_11_12;
    assign token_in_vec_12[3] = token_11_12;
    assign in_chan_dep_vld_vec_12[4] = dep_chan_vld_20_12;
    assign in_chan_dep_data_vec_12[169 : 136] = dep_chan_data_20_12;
    assign token_in_vec_12[4] = token_20_12;
    assign dep_chan_vld_12_4 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_4 = out_chan_dep_data_12;
    assign token_12_4 = token_out_vec_12[0];
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[1];
    assign dep_chan_vld_12_20 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_20 = out_chan_dep_data_12;
    assign token_12_20 = token_out_vec_12[2];
    assign dep_chan_vld_12_0 = out_chan_dep_vld_vec_12[3];
    assign dep_chan_data_12_0 = out_chan_dep_data_12;
    assign token_12_0 = token_out_vec_12[3];
    assign dep_chan_vld_12_5 = out_chan_dep_vld_vec_12[4];
    assign dep_chan_data_12_5 = out_chan_dep_data_12;
    assign token_12_5 = token_out_vec_12[4];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 13, 3, 3) bd_v_mix_0_0_hls_deadlock_detect_unit_13 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.HwReg_layerWidth14_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.HwReg_layerHeight17_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split721_proc_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split721_proc_U0_U.if_write);
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.layer2WidthInBytes_out_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.HwReg_layerHeight17_load_out_out_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.layer2WidthInBytes_cast_out_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.HwReg_layerHeight17_load_cast_out_out_blk_n);
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split721_proc_U0.real_start & (trans_in_cnt_12 == trans_out_cnt_12) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_U0_U.if_read);
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0;
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_0_13;
    assign in_chan_dep_data_vec_13[33 : 0] = dep_chan_data_0_13;
    assign token_in_vec_13[0] = token_0_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[67 : 34] = dep_chan_data_14_13;
    assign token_in_vec_13[1] = token_14_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_18_13;
    assign in_chan_dep_data_vec_13[101 : 68] = dep_chan_data_18_13;
    assign token_in_vec_13[2] = token_18_13;
    assign dep_chan_vld_13_0 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_0 = out_chan_dep_data_13;
    assign token_13_0 = token_out_vec_13[0];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[1];
    assign dep_chan_vld_13_18 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_18 = out_chan_dep_data_13;
    assign token_13_18 = token_out_vec_13[2];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 14, 5, 5) bd_v_mix_0_0_hls_deadlock_detect_unit_14 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.bytesLayer2_plane0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.bytesLayer2_plane1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.HwReg_layerHeight17_load_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.layer2WidthInBytes_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.p_read2_out_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.real_start & (trans_in_cnt_9 == trans_out_cnt_9) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_U0_U.if_read);
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.HwReg_layer2_buf1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.HwReg_layer2_buf2_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.p_read57_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.p_read2_blk_n);
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0;
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_VMixHlsDataFlowFunction_entry493_U0_ap_ready);
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.HwReg_layerHeight17_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.layer2WidthInBytes_loc_blk_n);
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0;
    assign proc_14_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    assign proc_14_data_FIFO_blk[3] = 1'b0;
    assign proc_14_data_PIPO_blk[3] = 1'b0;
    assign proc_14_start_FIFO_blk[3] = 1'b0;
    assign proc_14_TLF_FIFO_blk[3] = 1'b0;
    assign proc_14_input_sync_blk[3] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_13_U0_ap_ready);
    assign proc_14_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_14[3] = dl_detect_out ? proc_dep_vld_vec_14_reg[3] : (proc_14_data_FIFO_blk[3] | proc_14_data_PIPO_blk[3] | proc_14_start_FIFO_blk[3] | proc_14_TLF_FIFO_blk[3] | proc_14_input_sync_blk[3] | proc_14_output_sync_blk[3]);
    assign proc_14_data_FIFO_blk[4] = 1'b0;
    assign proc_14_data_PIPO_blk[4] = 1'b0;
    assign proc_14_start_FIFO_blk[4] = 1'b0;
    assign proc_14_TLF_FIFO_blk[4] = 1'b0;
    assign proc_14_input_sync_blk[4] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_2_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_1_U0_ap_ready);
    assign proc_14_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_14[4] = dl_detect_out ? proc_dep_vld_vec_14_reg[4] : (proc_14_data_FIFO_blk[4] | proc_14_data_PIPO_blk[4] | proc_14_start_FIFO_blk[4] | proc_14_TLF_FIFO_blk[4] | proc_14_input_sync_blk[4] | proc_14_output_sync_blk[4]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_0_14;
    assign in_chan_dep_data_vec_14[33 : 0] = dep_chan_data_0_14;
    assign token_in_vec_14[0] = token_0_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_6_14;
    assign in_chan_dep_data_vec_14[67 : 34] = dep_chan_data_6_14;
    assign token_in_vec_14[1] = token_6_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[101 : 68] = dep_chan_data_13_14;
    assign token_in_vec_14[2] = token_13_14;
    assign in_chan_dep_vld_vec_14[3] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[135 : 102] = dep_chan_data_15_14;
    assign token_in_vec_14[3] = token_15_14;
    assign in_chan_dep_vld_vec_14[4] = dep_chan_vld_22_14;
    assign in_chan_dep_data_vec_14[169 : 136] = dep_chan_data_22_14;
    assign token_in_vec_14[4] = token_22_14;
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[0];
    assign dep_chan_vld_14_0 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_0 = out_chan_dep_data_14;
    assign token_14_0 = token_out_vec_14[1];
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[2];
    assign dep_chan_vld_14_6 = out_chan_dep_vld_vec_14[3];
    assign dep_chan_data_14_6 = out_chan_dep_data_14;
    assign token_14_6 = token_out_vec_14[3];
    assign dep_chan_vld_14_22 = out_chan_dep_vld_vec_14[4];
    assign dep_chan_data_14_22 = out_chan_dep_data_14;
    assign token_14_22 = token_out_vec_14[4];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 15, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_15 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.bytesLayer2_plane0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.bytesLayer2_plane1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.HwReg_layerHeight17_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.layer2WidthInBytes_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.p_read2_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_19_U0_U.if_write);
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.srcLayer2_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.HwReg_layerHeight17_load_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.layer2WidthInBytes_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.p_read2_out_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_19_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_U0_U.if_read);
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[33 : 0] = dep_chan_data_14_15;
    assign token_in_vec_15[0] = token_14_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_16_15;
    assign in_chan_dep_data_vec_15[67 : 34] = dep_chan_data_16_15;
    assign token_in_vec_15[1] = token_16_15;
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[0];
    assign dep_chan_vld_15_16 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_16 = out_chan_dep_data_15;
    assign token_15_16 = token_out_vec_15[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 16, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_16 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.HwReg_layerHeight17_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.layer2WidthInBytes_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.p_read2_blk_n);
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_true_U0_U.if_write);
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.HwReg_layerHeight17_load_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.layer2WidthInBytes_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.p_read2_out_blk_n);
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_true_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0;
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_15_16;
    assign in_chan_dep_data_vec_16[33 : 0] = dep_chan_data_15_16;
    assign token_in_vec_16[0] = token_15_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[67 : 34] = dep_chan_data_17_16;
    assign token_in_vec_16[1] = token_17_16;
    assign dep_chan_vld_16_15 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_15 = out_chan_dep_data_16;
    assign token_16_15 = token_out_vec_16[0];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 17, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_17 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0.HwReg_layerHeight17_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0.layer2WidthInBytes_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0.p_read2_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_true_U0_U.if_write);
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_true_U0.p_read2_out_blk_n);
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[33 : 0] = dep_chan_data_16_17;
    assign token_in_vec_17[0] = token_16_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_18_17;
    assign in_chan_dep_data_vec_17[67 : 34] = dep_chan_data_18_17;
    assign token_in_vec_17[1] = token_18_17;
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[0];
    assign dep_chan_vld_17_18 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_18 = out_chan_dep_data_17;
    assign token_17_18 = token_out_vec_17[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 18, 3, 3) bd_v_mix_0_0_hls_deadlock_detect_unit_18 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.p_read2_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0;
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.HwReg_layerHeight17_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.layer2WidthInBytes_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.p_read2_out_blk_n);
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_20_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.real_start & (trans_in_cnt_13 == trans_out_cnt_13) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_20_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0;
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    assign proc_18_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.HwReg_layerHeight17_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.layer2WidthInBytes_cast_loc_blk_n);
    assign proc_18_data_PIPO_blk[2] = 1'b0;
    assign proc_18_start_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_true_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_true_U0_U.if_write);
    assign proc_18_TLF_FIFO_blk[2] = 1'b0;
    assign proc_18_input_sync_blk[2] = 1'b0;
    assign proc_18_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_18[2] = dl_detect_out ? proc_dep_vld_vec_18_reg[2] : (proc_18_data_FIFO_blk[2] | proc_18_data_PIPO_blk[2] | proc_18_start_FIFO_blk[2] | proc_18_TLF_FIFO_blk[2] | proc_18_input_sync_blk[2] | proc_18_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_13_18;
    assign in_chan_dep_data_vec_18[33 : 0] = dep_chan_data_13_18;
    assign token_in_vec_18[0] = token_13_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_17_18;
    assign in_chan_dep_data_vec_18[67 : 34] = dep_chan_data_17_18;
    assign token_in_vec_18[1] = token_17_18;
    assign in_chan_dep_vld_vec_18[2] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[101 : 68] = dep_chan_data_19_18;
    assign token_in_vec_18[2] = token_19_18;
    assign dep_chan_vld_18_17 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_17 = out_chan_dep_data_18;
    assign token_18_17 = token_out_vec_18[0];
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[1];
    assign dep_chan_vld_18_13 = out_chan_dep_vld_vec_18[2];
    assign dep_chan_data_18_13 = out_chan_dep_data_18;
    assign token_18_13 = token_out_vec_18[2];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_20_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 19, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_19 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_20_U0.srcLayer2Rgb_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_20_U0.HwReg_layerHeight17_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_20_U0.layer2WidthInBytes_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_20_U0.p_read2_blk_n);
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_20_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_20_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_20_U0_U.if_write);
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_20_U0.srcLayer2x_blk_n);
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0;
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0;
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[33 : 0] = dep_chan_data_18_19;
    assign token_in_vec_19[0] = token_18_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[67 : 34] = dep_chan_data_20_19;
    assign token_in_vec_19[1] = token_20_19;
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[0];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 20, 4, 4) bd_v_mix_0_0_hls_deadlock_detect_unit_20 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.outLayer0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.p_read_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.p_read1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.hwReg_6_blk_n);
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0;
    assign proc_20_TLF_FIFO_blk[0] = 1'b0;
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.srcLayer1x_blk_n);
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0;
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.outLayer1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.hwReg_6_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.p_read_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.p_read1_out_blk_n);
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0;
    assign proc_20_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    assign proc_20_data_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.hwReg_152_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.hwReg_165_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.hwReg_178_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.hwReg_1811_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.hwReg_1914_blk_n);
    assign proc_20_data_PIPO_blk[3] = 1'b0;
    assign proc_20_start_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_21_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_false_false_21_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_false_false_21_U0_U.if_write);
    assign proc_20_TLF_FIFO_blk[3] = 1'b0;
    assign proc_20_input_sync_blk[3] = 1'b0;
    assign proc_20_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_20[3] = dl_detect_out ? proc_dep_vld_vec_20_reg[3] : (proc_20_data_FIFO_blk[3] | proc_20_data_PIPO_blk[3] | proc_20_start_FIFO_blk[3] | proc_20_TLF_FIFO_blk[3] | proc_20_input_sync_blk[3] | proc_20_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_0_20;
    assign in_chan_dep_data_vec_20[33 : 0] = dep_chan_data_0_20;
    assign token_in_vec_20[0] = token_0_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_12_20;
    assign in_chan_dep_data_vec_20[67 : 34] = dep_chan_data_12_20;
    assign token_in_vec_20[1] = token_12_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[101 : 68] = dep_chan_data_19_20;
    assign token_in_vec_20[2] = token_19_20;
    assign in_chan_dep_vld_vec_20[3] = dep_chan_vld_29_20;
    assign in_chan_dep_data_vec_20[135 : 102] = dep_chan_data_29_20;
    assign token_in_vec_20[3] = token_29_20;
    assign dep_chan_vld_20_12 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_12 = out_chan_dep_data_20;
    assign token_20_12 = token_out_vec_20[0];
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[1];
    assign dep_chan_vld_20_29 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_29 = out_chan_dep_data_20;
    assign token_20_29 = token_out_vec_20[2];
    assign dep_chan_vld_20_0 = out_chan_dep_vld_vec_20[3];
    assign dep_chan_data_20_0 = out_chan_dep_data_20;
    assign token_20_0 = token_out_vec_20[3];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 21, 5, 5) bd_v_mix_0_0_hls_deadlock_detect_unit_21 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerWidth15_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerHeight18_blk_n);
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split730_proc_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_VMixHlsDataFlowFunction_Block_split730_proc_U0_U.if_write);
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerWidth15_load_out_out_blk_n);
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0;
    assign proc_21_input_sync_blk[1] = 1'b0;
    assign proc_21_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    assign proc_21_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerWidth15_load_cast_out_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerHeight18_load_cast_out_out_blk_n);
    assign proc_21_data_PIPO_blk[2] = 1'b0;
    assign proc_21_start_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_U0_U.if_read);
    assign proc_21_TLF_FIFO_blk[2] = 1'b0;
    assign proc_21_input_sync_blk[2] = 1'b0;
    assign proc_21_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_21[2] = dl_detect_out ? proc_dep_vld_vec_21_reg[2] : (proc_21_data_FIFO_blk[2] | proc_21_data_PIPO_blk[2] | proc_21_start_FIFO_blk[2] | proc_21_TLF_FIFO_blk[2] | proc_21_input_sync_blk[2] | proc_21_output_sync_blk[2]);
    assign proc_21_data_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerWidth15_load_cast_out_out1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerHeight18_load_cast_out_out2_blk_n);
    assign proc_21_data_PIPO_blk[3] = 1'b0;
    assign proc_21_start_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_alpha_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_alpha_false_U0_U.if_read);
    assign proc_21_TLF_FIFO_blk[3] = 1'b0;
    assign proc_21_input_sync_blk[3] = 1'b0;
    assign proc_21_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_21[3] = dl_detect_out ? proc_dep_vld_vec_21_reg[3] : (proc_21_data_FIFO_blk[3] | proc_21_data_PIPO_blk[3] | proc_21_start_FIFO_blk[3] | proc_21_TLF_FIFO_blk[3] | proc_21_input_sync_blk[3] | proc_21_output_sync_blk[3]);
    assign proc_21_data_FIFO_blk[4] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.VMixHlsDataFlowFunction_Block_split730_proc_U0.HwReg_layerHeight18_load_out_out_blk_n);
    assign proc_21_data_PIPO_blk[4] = 1'b0;
    assign proc_21_start_FIFO_blk[4] = 1'b0;
    assign proc_21_TLF_FIFO_blk[4] = 1'b0;
    assign proc_21_input_sync_blk[4] = 1'b0;
    assign proc_21_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_21[4] = dl_detect_out ? proc_dep_vld_vec_21_reg[4] : (proc_21_data_FIFO_blk[4] | proc_21_data_PIPO_blk[4] | proc_21_start_FIFO_blk[4] | proc_21_TLF_FIFO_blk[4] | proc_21_input_sync_blk[4] | proc_21_output_sync_blk[4]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_0_21;
    assign in_chan_dep_data_vec_21[33 : 0] = dep_chan_data_0_21;
    assign token_in_vec_21[0] = token_0_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_22_21;
    assign in_chan_dep_data_vec_21[67 : 34] = dep_chan_data_22_21;
    assign token_in_vec_21[1] = token_22_21;
    assign in_chan_dep_vld_vec_21[2] = dep_chan_vld_23_21;
    assign in_chan_dep_data_vec_21[101 : 68] = dep_chan_data_23_21;
    assign token_in_vec_21[2] = token_23_21;
    assign in_chan_dep_vld_vec_21[3] = dep_chan_vld_24_21;
    assign in_chan_dep_data_vec_21[135 : 102] = dep_chan_data_24_21;
    assign token_in_vec_21[3] = token_24_21;
    assign in_chan_dep_vld_vec_21[4] = dep_chan_vld_28_21;
    assign in_chan_dep_data_vec_21[169 : 136] = dep_chan_data_28_21;
    assign token_in_vec_21[4] = token_28_21;
    assign dep_chan_vld_21_0 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_0 = out_chan_dep_data_21;
    assign token_21_0 = token_out_vec_21[0];
    assign dep_chan_vld_21_23 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_23 = out_chan_dep_data_21;
    assign token_21_23 = token_out_vec_21[1];
    assign dep_chan_vld_21_24 = out_chan_dep_vld_vec_21[2];
    assign dep_chan_data_21_24 = out_chan_dep_data_21;
    assign token_21_24 = token_out_vec_21[2];
    assign dep_chan_vld_21_28 = out_chan_dep_vld_vec_21[3];
    assign dep_chan_data_21_28 = out_chan_dep_data_21;
    assign token_21_28 = token_out_vec_21[3];
    assign dep_chan_vld_21_22 = out_chan_dep_vld_vec_21[4];
    assign dep_chan_data_21_22 = out_chan_dep_data_21;
    assign token_21_22 = token_out_vec_21[4];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 22, 5, 5) bd_v_mix_0_0_hls_deadlock_detect_unit_22 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.bytesLayer3_plane0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.HwReg_layerHeight18_load_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.p_read3_out_blk_n);
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_26_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.real_start & (trans_in_cnt_14 == trans_out_cnt_14) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_26_U0_U.if_read);
    assign proc_22_TLF_FIFO_blk[0] = 1'b0;
    assign proc_22_input_sync_blk[0] = 1'b0;
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.HwReg_layer3_buf1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.p_read6_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.p_read3_blk_n);
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_1_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_VMixHlsDataFlowFunction_entry493_U0_ap_ready);
    assign proc_22_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    assign proc_22_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.HwReg_layerHeight18_load_loc_blk_n);
    assign proc_22_data_PIPO_blk[2] = 1'b0;
    assign proc_22_start_FIFO_blk[2] = 1'b0;
    assign proc_22_TLF_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.layer3WidthInBytes_loc_channel_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.layer3WidthInBytes_loc_channel_U.if_write);
    assign proc_22_input_sync_blk[2] = 1'b0;
    assign proc_22_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_22[2] = dl_detect_out ? proc_dep_vld_vec_22_reg[2] : (proc_22_data_FIFO_blk[2] | proc_22_data_PIPO_blk[2] | proc_22_start_FIFO_blk[2] | proc_22_TLF_FIFO_blk[2] | proc_22_input_sync_blk[2] | proc_22_output_sync_blk[2]);
    assign proc_22_data_FIFO_blk[3] = 1'b0;
    assign proc_22_data_PIPO_blk[3] = 1'b0;
    assign proc_22_start_FIFO_blk[3] = 1'b0;
    assign proc_22_TLF_FIFO_blk[3] = 1'b0;
    assign proc_22_input_sync_blk[3] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_1_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_13_U0_ap_ready);
    assign proc_22_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_22[3] = dl_detect_out ? proc_dep_vld_vec_22_reg[3] : (proc_22_data_FIFO_blk[3] | proc_22_data_PIPO_blk[3] | proc_22_start_FIFO_blk[3] | proc_22_TLF_FIFO_blk[3] | proc_22_input_sync_blk[3] | proc_22_output_sync_blk[3]);
    assign proc_22_data_FIFO_blk[4] = 1'b0;
    assign proc_22_data_PIPO_blk[4] = 1'b0;
    assign proc_22_start_FIFO_blk[4] = 1'b0;
    assign proc_22_TLF_FIFO_blk[4] = 1'b0;
    assign proc_22_input_sync_blk[4] = 1'b0 | (grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_1_U0_ap_ready & grp_VMixHlsDataFlowFunction_fu_660.AXIMMvideo2Bytes_1_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.ap_sync_AXIMMvideo2Bytes_2_U0_ap_ready);
    assign proc_22_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_22[4] = dl_detect_out ? proc_dep_vld_vec_22_reg[4] : (proc_22_data_FIFO_blk[4] | proc_22_data_PIPO_blk[4] | proc_22_start_FIFO_blk[4] | proc_22_TLF_FIFO_blk[4] | proc_22_input_sync_blk[4] | proc_22_output_sync_blk[4]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_0_22;
    assign in_chan_dep_data_vec_22[33 : 0] = dep_chan_data_0_22;
    assign token_in_vec_22[0] = token_0_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_6_22;
    assign in_chan_dep_data_vec_22[67 : 34] = dep_chan_data_6_22;
    assign token_in_vec_22[1] = token_6_22;
    assign in_chan_dep_vld_vec_22[2] = dep_chan_vld_14_22;
    assign in_chan_dep_data_vec_22[101 : 68] = dep_chan_data_14_22;
    assign token_in_vec_22[2] = token_14_22;
    assign in_chan_dep_vld_vec_22[3] = dep_chan_vld_21_22;
    assign in_chan_dep_data_vec_22[135 : 102] = dep_chan_data_21_22;
    assign token_in_vec_22[3] = token_21_22;
    assign in_chan_dep_vld_vec_22[4] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[169 : 136] = dep_chan_data_23_22;
    assign token_in_vec_22[4] = token_23_22;
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[0];
    assign dep_chan_vld_22_0 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_0 = out_chan_dep_data_22;
    assign token_22_0 = token_out_vec_22[1];
    assign dep_chan_vld_22_21 = out_chan_dep_vld_vec_22[2];
    assign dep_chan_data_22_21 = out_chan_dep_data_22;
    assign token_22_21 = token_out_vec_22[2];
    assign dep_chan_vld_22_6 = out_chan_dep_vld_vec_22[3];
    assign dep_chan_data_22_6 = out_chan_dep_data_22;
    assign token_22_6 = token_out_vec_22[3];
    assign dep_chan_vld_22_14 = out_chan_dep_vld_vec_22[4];
    assign dep_chan_data_22_14 = out_chan_dep_data_22;
    assign token_22_14 = token_out_vec_22[4];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 23, 4, 4) bd_v_mix_0_0_hls_deadlock_detect_unit_23 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.bytesLayer3_plane0_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.HwReg_layerHeight18_load_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.p_read3_blk_n);
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_26_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_Bytes2MultiPixStream_26_U0_U.if_write);
    assign proc_23_TLF_FIFO_blk[0] = 1'b0;
    assign proc_23_input_sync_blk[0] = 1'b0;
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    assign proc_23_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.srcLayer3_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.p_read3_out_blk_n);
    assign proc_23_data_PIPO_blk[1] = 1'b0;
    assign proc_23_start_FIFO_blk[1] = 1'b0;
    assign proc_23_TLF_FIFO_blk[1] = 1'b0;
    assign proc_23_input_sync_blk[1] = 1'b0;
    assign proc_23_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (proc_23_data_FIFO_blk[1] | proc_23_data_PIPO_blk[1] | proc_23_start_FIFO_blk[1] | proc_23_TLF_FIFO_blk[1] | proc_23_input_sync_blk[1] | proc_23_output_sync_blk[1]);
    assign proc_23_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.srcLayer3Alpha_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.p_read3_out1_blk_n);
    assign proc_23_data_PIPO_blk[2] = 1'b0;
    assign proc_23_start_FIFO_blk[2] = 1'b0;
    assign proc_23_TLF_FIFO_blk[2] = 1'b0;
    assign proc_23_input_sync_blk[2] = 1'b0;
    assign proc_23_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_23[2] = dl_detect_out ? proc_dep_vld_vec_23_reg[2] : (proc_23_data_FIFO_blk[2] | proc_23_data_PIPO_blk[2] | proc_23_start_FIFO_blk[2] | proc_23_TLF_FIFO_blk[2] | proc_23_input_sync_blk[2] | proc_23_output_sync_blk[2]);
    assign proc_23_data_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.Bytes2MultiPixStream_26_U0.HwReg_layerWidth15_load_loc_blk_n);
    assign proc_23_data_PIPO_blk[3] = 1'b0;
    assign proc_23_start_FIFO_blk[3] = 1'b0;
    assign proc_23_TLF_FIFO_blk[3] = 1'b0;
    assign proc_23_input_sync_blk[3] = 1'b0;
    assign proc_23_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_23[3] = dl_detect_out ? proc_dep_vld_vec_23_reg[3] : (proc_23_data_FIFO_blk[3] | proc_23_data_PIPO_blk[3] | proc_23_start_FIFO_blk[3] | proc_23_TLF_FIFO_blk[3] | proc_23_input_sync_blk[3] | proc_23_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_21_23;
    assign in_chan_dep_data_vec_23[33 : 0] = dep_chan_data_21_23;
    assign token_in_vec_23[0] = token_21_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[67 : 34] = dep_chan_data_22_23;
    assign token_in_vec_23[1] = token_22_23;
    assign in_chan_dep_vld_vec_23[2] = dep_chan_vld_24_23;
    assign in_chan_dep_data_vec_23[101 : 68] = dep_chan_data_24_23;
    assign token_in_vec_23[2] = token_24_23;
    assign in_chan_dep_vld_vec_23[3] = dep_chan_vld_28_23;
    assign in_chan_dep_data_vec_23[135 : 102] = dep_chan_data_28_23;
    assign token_in_vec_23[3] = token_28_23;
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[0];
    assign dep_chan_vld_23_24 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_24 = out_chan_dep_data_23;
    assign token_23_24 = token_out_vec_23[1];
    assign dep_chan_vld_23_28 = out_chan_dep_vld_vec_23[2];
    assign dep_chan_data_23_28 = out_chan_dep_data_23;
    assign token_23_28 = token_out_vec_23[2];
    assign dep_chan_vld_23_21 = out_chan_dep_vld_vec_23[3];
    assign dep_chan_data_23_21 = out_chan_dep_data_23;
    assign token_23_21 = token_out_vec_23[3];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 24, 3, 3) bd_v_mix_0_0_hls_deadlock_detect_unit_24 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.p_read3_blk_n);
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0;
    assign proc_24_TLF_FIFO_blk[0] = 1'b0;
    assign proc_24_input_sync_blk[0] = 1'b0;
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.HwReg_layerHeight18_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.HwReg_layerWidth15_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.p_read3_out_blk_n);
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.real_start & (trans_in_cnt_16 == trans_out_cnt_16) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_U0_U.if_read);
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0;
    assign proc_24_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    assign proc_24_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.HwReg_layerHeight18_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.HwReg_layerWidth15_load_cast_loc_blk_n);
    assign proc_24_data_PIPO_blk[2] = 1'b0;
    assign proc_24_start_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_420_to_422_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_420_to_422_false_U0_U.if_write);
    assign proc_24_TLF_FIFO_blk[2] = 1'b0;
    assign proc_24_input_sync_blk[2] = 1'b0;
    assign proc_24_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_24[2] = dl_detect_out ? proc_dep_vld_vec_24_reg[2] : (proc_24_data_FIFO_blk[2] | proc_24_data_PIPO_blk[2] | proc_24_start_FIFO_blk[2] | proc_24_TLF_FIFO_blk[2] | proc_24_input_sync_blk[2] | proc_24_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_21_24;
    assign in_chan_dep_data_vec_24[33 : 0] = dep_chan_data_21_24;
    assign token_in_vec_24[0] = token_21_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_23_24;
    assign in_chan_dep_data_vec_24[67 : 34] = dep_chan_data_23_24;
    assign token_in_vec_24[1] = token_23_24;
    assign in_chan_dep_vld_vec_24[2] = dep_chan_vld_25_24;
    assign in_chan_dep_data_vec_24[101 : 68] = dep_chan_data_25_24;
    assign token_in_vec_24[2] = token_25_24;
    assign dep_chan_vld_24_23 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_23 = out_chan_dep_data_24;
    assign token_24_23 = token_out_vec_24[0];
    assign dep_chan_vld_24_25 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_25 = out_chan_dep_data_24;
    assign token_24_25 = token_out_vec_24[1];
    assign dep_chan_vld_24_21 = out_chan_dep_vld_vec_24[2];
    assign dep_chan_data_24_21 = out_chan_dep_data_24;
    assign token_24_21 = token_out_vec_24[2];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 25, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_25 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_25),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_25),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_25),
        .token_in_vec(token_in_vec_25),
        .dl_detect_in(dl_detect_out),
        .origin(origin[25]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_25),
        .out_chan_dep_data(out_chan_dep_data_25),
        .token_out_vec(token_out_vec_25),
        .dl_detect_out(dl_in_vec[25]));

    assign proc_25_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.HwReg_layerHeight18_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.HwReg_layerWidth15_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.p_read3_blk_n);
    assign proc_25_data_PIPO_blk[0] = 1'b0;
    assign proc_25_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_444_false_U0_U.if_write);
    assign proc_25_TLF_FIFO_blk[0] = 1'b0;
    assign proc_25_input_sync_blk[0] = 1'b0;
    assign proc_25_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_25[0] = dl_detect_out ? proc_dep_vld_vec_25_reg[0] : (proc_25_data_FIFO_blk[0] | proc_25_data_PIPO_blk[0] | proc_25_start_FIFO_blk[0] | proc_25_TLF_FIFO_blk[0] | proc_25_input_sync_blk[0] | proc_25_output_sync_blk[0]);
    assign proc_25_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.HwReg_layerHeight18_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.HwReg_layerWidth15_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.p_read3_out_blk_n);
    assign proc_25_data_PIPO_blk[1] = 1'b0;
    assign proc_25_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_444_false_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_U0_U.if_read);
    assign proc_25_TLF_FIFO_blk[1] = 1'b0;
    assign proc_25_input_sync_blk[1] = 1'b0;
    assign proc_25_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_25[1] = dl_detect_out ? proc_dep_vld_vec_25_reg[1] : (proc_25_data_FIFO_blk[1] | proc_25_data_PIPO_blk[1] | proc_25_start_FIFO_blk[1] | proc_25_TLF_FIFO_blk[1] | proc_25_input_sync_blk[1] | proc_25_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_25_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_25_reg <= proc_dep_vld_vec_25;
        end
    end
    assign in_chan_dep_vld_vec_25[0] = dep_chan_vld_24_25;
    assign in_chan_dep_data_vec_25[33 : 0] = dep_chan_data_24_25;
    assign token_in_vec_25[0] = token_24_25;
    assign in_chan_dep_vld_vec_25[1] = dep_chan_vld_26_25;
    assign in_chan_dep_data_vec_25[67 : 34] = dep_chan_data_26_25;
    assign token_in_vec_25[1] = token_26_25;
    assign dep_chan_vld_25_24 = out_chan_dep_vld_vec_25[0];
    assign dep_chan_data_25_24 = out_chan_dep_data_25;
    assign token_25_24 = token_out_vec_25[0];
    assign dep_chan_vld_25_26 = out_chan_dep_vld_vec_25[1];
    assign dep_chan_data_25_26 = out_chan_dep_data_25;
    assign token_25_26 = token_out_vec_25[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 26, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_26 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_26),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_26),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_26),
        .token_in_vec(token_in_vec_26),
        .dl_detect_in(dl_detect_out),
        .origin(origin[26]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_26),
        .out_chan_dep_data(out_chan_dep_data_26),
        .token_out_vec(token_out_vec_26),
        .dl_detect_out(dl_in_vec[26]));

    assign proc_26_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.HwReg_layerHeight18_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.HwReg_layerWidth15_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.p_read3_blk_n);
    assign proc_26_data_PIPO_blk[0] = 1'b0;
    assign proc_26_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_yuv2rgb_false_U0_U.if_write);
    assign proc_26_TLF_FIFO_blk[0] = 1'b0;
    assign proc_26_input_sync_blk[0] = 1'b0;
    assign proc_26_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_26[0] = dl_detect_out ? proc_dep_vld_vec_26_reg[0] : (proc_26_data_FIFO_blk[0] | proc_26_data_PIPO_blk[0] | proc_26_start_FIFO_blk[0] | proc_26_TLF_FIFO_blk[0] | proc_26_input_sync_blk[0] | proc_26_output_sync_blk[0]);
    assign proc_26_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.HwReg_layerHeight18_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.HwReg_layerWidth15_load_cast_loc_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.p_read3_out_blk_n);
    assign proc_26_data_PIPO_blk[1] = 1'b0;
    assign proc_26_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_yuv2rgb_false_U0.real_start & (trans_in_cnt_18 == trans_out_cnt_18) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_U0_U.if_read);
    assign proc_26_TLF_FIFO_blk[1] = 1'b0;
    assign proc_26_input_sync_blk[1] = 1'b0;
    assign proc_26_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_26[1] = dl_detect_out ? proc_dep_vld_vec_26_reg[1] : (proc_26_data_FIFO_blk[1] | proc_26_data_PIPO_blk[1] | proc_26_start_FIFO_blk[1] | proc_26_TLF_FIFO_blk[1] | proc_26_input_sync_blk[1] | proc_26_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_26_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_26_reg <= proc_dep_vld_vec_26;
        end
    end
    assign in_chan_dep_vld_vec_26[0] = dep_chan_vld_25_26;
    assign in_chan_dep_data_vec_26[33 : 0] = dep_chan_data_25_26;
    assign token_in_vec_26[0] = token_25_26;
    assign in_chan_dep_vld_vec_26[1] = dep_chan_vld_27_26;
    assign in_chan_dep_data_vec_26[67 : 34] = dep_chan_data_27_26;
    assign token_in_vec_26[1] = token_27_26;
    assign dep_chan_vld_26_25 = out_chan_dep_vld_vec_26[0];
    assign dep_chan_data_26_25 = out_chan_dep_data_26;
    assign token_26_25 = token_out_vec_26[0];
    assign dep_chan_vld_26_27 = out_chan_dep_vld_vec_26[1];
    assign dep_chan_data_26_27 = out_chan_dep_data_26;
    assign token_26_27 = token_out_vec_26[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 27, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_27 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_27),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_27),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_27),
        .token_in_vec(token_in_vec_27),
        .dl_detect_in(dl_detect_out),
        .origin(origin[27]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_27),
        .out_chan_dep_data(out_chan_dep_data_27),
        .token_out_vec(token_out_vec_27),
        .dl_detect_out(dl_in_vec[27]));

    assign proc_27_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_U0.srcLayer3Rgb_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_U0.HwReg_layerHeight18_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_U0.HwReg_layerWidth15_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_U0.p_read3_blk_n);
    assign proc_27_data_PIPO_blk[0] = 1'b0;
    assign proc_27_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_false_U0_U.if_write);
    assign proc_27_TLF_FIFO_blk[0] = 1'b0;
    assign proc_27_input_sync_blk[0] = 1'b0;
    assign proc_27_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_27[0] = dl_detect_out ? proc_dep_vld_vec_27_reg[0] : (proc_27_data_FIFO_blk[0] | proc_27_data_PIPO_blk[0] | proc_27_start_FIFO_blk[0] | proc_27_TLF_FIFO_blk[0] | proc_27_input_sync_blk[0] | proc_27_output_sync_blk[0]);
    assign proc_27_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_false_U0.srcLayer3x_blk_n);
    assign proc_27_data_PIPO_blk[1] = 1'b0;
    assign proc_27_start_FIFO_blk[1] = 1'b0;
    assign proc_27_TLF_FIFO_blk[1] = 1'b0;
    assign proc_27_input_sync_blk[1] = 1'b0;
    assign proc_27_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_27[1] = dl_detect_out ? proc_dep_vld_vec_27_reg[1] : (proc_27_data_FIFO_blk[1] | proc_27_data_PIPO_blk[1] | proc_27_start_FIFO_blk[1] | proc_27_TLF_FIFO_blk[1] | proc_27_input_sync_blk[1] | proc_27_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_27_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_27_reg <= proc_dep_vld_vec_27;
        end
    end
    assign in_chan_dep_vld_vec_27[0] = dep_chan_vld_26_27;
    assign in_chan_dep_data_vec_27[33 : 0] = dep_chan_data_26_27;
    assign token_in_vec_27[0] = token_26_27;
    assign in_chan_dep_vld_vec_27[1] = dep_chan_vld_29_27;
    assign in_chan_dep_data_vec_27[67 : 34] = dep_chan_data_29_27;
    assign token_in_vec_27[1] = token_29_27;
    assign dep_chan_vld_27_26 = out_chan_dep_vld_vec_27[0];
    assign dep_chan_data_27_26 = out_chan_dep_data_27;
    assign token_27_26 = token_out_vec_27[0];
    assign dep_chan_vld_27_29 = out_chan_dep_vld_vec_27[1];
    assign dep_chan_data_27_29 = out_chan_dep_data_27;
    assign token_27_29 = token_out_vec_27[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_alpha_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 28, 3, 3) bd_v_mix_0_0_hls_deadlock_detect_unit_28 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_28),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_28),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_28),
        .token_in_vec(token_in_vec_28),
        .dl_detect_in(dl_detect_out),
        .origin(origin[28]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_28),
        .out_chan_dep_data(out_chan_dep_data_28),
        .token_out_vec(token_out_vec_28),
        .dl_detect_out(dl_in_vec[28]));

    assign proc_28_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_alpha_false_U0.srcLayer3Alpha_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_alpha_false_U0.p_read3_blk_n);
    assign proc_28_data_PIPO_blk[0] = 1'b0;
    assign proc_28_start_FIFO_blk[0] = 1'b0;
    assign proc_28_TLF_FIFO_blk[0] = 1'b0;
    assign proc_28_input_sync_blk[0] = 1'b0;
    assign proc_28_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_28[0] = dl_detect_out ? proc_dep_vld_vec_28_reg[0] : (proc_28_data_FIFO_blk[0] | proc_28_data_PIPO_blk[0] | proc_28_start_FIFO_blk[0] | proc_28_TLF_FIFO_blk[0] | proc_28_input_sync_blk[0] | proc_28_output_sync_blk[0]);
    assign proc_28_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_alpha_false_U0.srcLayer3Alphax_blk_n);
    assign proc_28_data_PIPO_blk[1] = 1'b0;
    assign proc_28_start_FIFO_blk[1] = 1'b0;
    assign proc_28_TLF_FIFO_blk[1] = 1'b0;
    assign proc_28_input_sync_blk[1] = 1'b0;
    assign proc_28_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_28[1] = dl_detect_out ? proc_dep_vld_vec_28_reg[1] : (proc_28_data_FIFO_blk[1] | proc_28_data_PIPO_blk[1] | proc_28_start_FIFO_blk[1] | proc_28_TLF_FIFO_blk[1] | proc_28_input_sync_blk[1] | proc_28_output_sync_blk[1]);
    assign proc_28_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_alpha_false_U0.HwReg_layerHeight18_load_cast_loc_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_alpha_false_U0.HwReg_layerWidth15_load_cast_loc_blk_n);
    assign proc_28_data_PIPO_blk[2] = 1'b0;
    assign proc_28_start_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_alpha_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_upsample_alpha_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_upsample_alpha_false_U0_U.if_write);
    assign proc_28_TLF_FIFO_blk[2] = 1'b0;
    assign proc_28_input_sync_blk[2] = 1'b0;
    assign proc_28_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_28[2] = dl_detect_out ? proc_dep_vld_vec_28_reg[2] : (proc_28_data_FIFO_blk[2] | proc_28_data_PIPO_blk[2] | proc_28_start_FIFO_blk[2] | proc_28_TLF_FIFO_blk[2] | proc_28_input_sync_blk[2] | proc_28_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_28_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_28_reg <= proc_dep_vld_vec_28;
        end
    end
    assign in_chan_dep_vld_vec_28[0] = dep_chan_vld_21_28;
    assign in_chan_dep_data_vec_28[33 : 0] = dep_chan_data_21_28;
    assign token_in_vec_28[0] = token_21_28;
    assign in_chan_dep_vld_vec_28[1] = dep_chan_vld_23_28;
    assign in_chan_dep_data_vec_28[67 : 34] = dep_chan_data_23_28;
    assign token_in_vec_28[1] = token_23_28;
    assign in_chan_dep_vld_vec_28[2] = dep_chan_vld_29_28;
    assign in_chan_dep_data_vec_28[101 : 68] = dep_chan_data_29_28;
    assign token_in_vec_28[2] = token_29_28;
    assign dep_chan_vld_28_23 = out_chan_dep_vld_vec_28[0];
    assign dep_chan_data_28_23 = out_chan_dep_data_28;
    assign token_28_23 = token_out_vec_28[0];
    assign dep_chan_vld_28_29 = out_chan_dep_vld_vec_28[1];
    assign dep_chan_data_28_29 = out_chan_dep_data_28;
    assign token_28_29 = token_out_vec_28[1];
    assign dep_chan_vld_28_21 = out_chan_dep_vld_vec_28[2];
    assign dep_chan_data_28_21 = out_chan_dep_data_28;
    assign token_28_21 = token_out_vec_28[2];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 29, 5, 5) bd_v_mix_0_0_hls_deadlock_detect_unit_29 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_29),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_29),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_29),
        .token_in_vec(token_in_vec_29),
        .dl_detect_in(dl_detect_out),
        .origin(origin[29]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_29),
        .out_chan_dep_data(out_chan_dep_data_29),
        .token_out_vec(token_out_vec_29),
        .dl_detect_out(dl_in_vec[29]));

    assign proc_29_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.outLayer2_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.p_read_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.p_read1_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.hwReg_layerEnable_blk_n);
    assign proc_29_data_PIPO_blk[0] = 1'b0;
    assign proc_29_start_FIFO_blk[0] = 1'b0;
    assign proc_29_TLF_FIFO_blk[0] = 1'b0;
    assign proc_29_input_sync_blk[0] = 1'b0;
    assign proc_29_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_29[0] = dl_detect_out ? proc_dep_vld_vec_29_reg[0] : (proc_29_data_FIFO_blk[0] | proc_29_data_PIPO_blk[0] | proc_29_start_FIFO_blk[0] | proc_29_TLF_FIFO_blk[0] | proc_29_input_sync_blk[0] | proc_29_output_sync_blk[0]);
    assign proc_29_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.srcLayer3x_blk_n);
    assign proc_29_data_PIPO_blk[1] = 1'b0;
    assign proc_29_start_FIFO_blk[1] = 1'b0;
    assign proc_29_TLF_FIFO_blk[1] = 1'b0;
    assign proc_29_input_sync_blk[1] = 1'b0;
    assign proc_29_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_29[1] = dl_detect_out ? proc_dep_vld_vec_29_reg[1] : (proc_29_data_FIFO_blk[1] | proc_29_data_PIPO_blk[1] | proc_29_start_FIFO_blk[1] | proc_29_TLF_FIFO_blk[1] | proc_29_input_sync_blk[1] | proc_29_output_sync_blk[1]);
    assign proc_29_data_FIFO_blk[2] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.srcLayer3Alphax_blk_n);
    assign proc_29_data_PIPO_blk[2] = 1'b0;
    assign proc_29_start_FIFO_blk[2] = 1'b0;
    assign proc_29_TLF_FIFO_blk[2] = 1'b0;
    assign proc_29_input_sync_blk[2] = 1'b0;
    assign proc_29_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_29[2] = dl_detect_out ? proc_dep_vld_vec_29_reg[2] : (proc_29_data_FIFO_blk[2] | proc_29_data_PIPO_blk[2] | proc_29_start_FIFO_blk[2] | proc_29_TLF_FIFO_blk[2] | proc_29_input_sync_blk[2] | proc_29_output_sync_blk[2]);
    assign proc_29_data_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.outLayer3_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.p_read_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.p_read1_out_blk_n);
    assign proc_29_data_PIPO_blk[3] = 1'b0;
    assign proc_29_start_FIFO_blk[3] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_rgb2yuv_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.real_start & (trans_in_cnt_19 == trans_out_cnt_19) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_rgb2yuv_false_U0_U.if_read);
    assign proc_29_TLF_FIFO_blk[3] = 1'b0;
    assign proc_29_input_sync_blk[3] = 1'b0;
    assign proc_29_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_29[3] = dl_detect_out ? proc_dep_vld_vec_29_reg[3] : (proc_29_data_FIFO_blk[3] | proc_29_data_PIPO_blk[3] | proc_29_start_FIFO_blk[3] | proc_29_TLF_FIFO_blk[3] | proc_29_input_sync_blk[3] | proc_29_output_sync_blk[3]);
    assign proc_29_data_FIFO_blk[4] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.p_read2_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.hwReg_layerStartX6_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.hwReg_layerStartY9_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.hwReg_layerWidth12_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.hwReg_layerHeight15_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.hwReg_layerScaleFactor18_blk_n);
    assign proc_29_data_PIPO_blk[4] = 1'b0;
    assign proc_29_start_FIFO_blk[4] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_true_true_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_core_alpha_true_true_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_core_alpha_true_true_U0_U.if_write);
    assign proc_29_TLF_FIFO_blk[4] = 1'b0;
    assign proc_29_input_sync_blk[4] = 1'b0;
    assign proc_29_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_29[4] = dl_detect_out ? proc_dep_vld_vec_29_reg[4] : (proc_29_data_FIFO_blk[4] | proc_29_data_PIPO_blk[4] | proc_29_start_FIFO_blk[4] | proc_29_TLF_FIFO_blk[4] | proc_29_input_sync_blk[4] | proc_29_output_sync_blk[4]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_29_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_29_reg <= proc_dep_vld_vec_29;
        end
    end
    assign in_chan_dep_vld_vec_29[0] = dep_chan_vld_0_29;
    assign in_chan_dep_data_vec_29[33 : 0] = dep_chan_data_0_29;
    assign token_in_vec_29[0] = token_0_29;
    assign in_chan_dep_vld_vec_29[1] = dep_chan_vld_20_29;
    assign in_chan_dep_data_vec_29[67 : 34] = dep_chan_data_20_29;
    assign token_in_vec_29[1] = token_20_29;
    assign in_chan_dep_vld_vec_29[2] = dep_chan_vld_27_29;
    assign in_chan_dep_data_vec_29[101 : 68] = dep_chan_data_27_29;
    assign token_in_vec_29[2] = token_27_29;
    assign in_chan_dep_vld_vec_29[3] = dep_chan_vld_28_29;
    assign in_chan_dep_data_vec_29[135 : 102] = dep_chan_data_28_29;
    assign token_in_vec_29[3] = token_28_29;
    assign in_chan_dep_vld_vec_29[4] = dep_chan_vld_30_29;
    assign in_chan_dep_data_vec_29[169 : 136] = dep_chan_data_30_29;
    assign token_in_vec_29[4] = token_30_29;
    assign dep_chan_vld_29_20 = out_chan_dep_vld_vec_29[0];
    assign dep_chan_data_29_20 = out_chan_dep_data_29;
    assign token_29_20 = token_out_vec_29[0];
    assign dep_chan_vld_29_27 = out_chan_dep_vld_vec_29[1];
    assign dep_chan_data_29_27 = out_chan_dep_data_29;
    assign token_29_27 = token_out_vec_29[1];
    assign dep_chan_vld_29_28 = out_chan_dep_vld_vec_29[2];
    assign dep_chan_data_29_28 = out_chan_dep_data_29;
    assign token_29_28 = token_out_vec_29[2];
    assign dep_chan_vld_29_30 = out_chan_dep_vld_vec_29[3];
    assign dep_chan_data_29_30 = out_chan_dep_data_29;
    assign token_29_30 = token_out_vec_29[3];
    assign dep_chan_vld_29_0 = out_chan_dep_vld_vec_29[4];
    assign dep_chan_data_29_0 = out_chan_dep_data_29;
    assign token_29_0 = token_out_vec_29[4];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 30, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_30 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_30),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_30),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_30),
        .token_in_vec(token_in_vec_30),
        .dl_detect_in(dl_detect_out),
        .origin(origin[30]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_30),
        .out_chan_dep_data(out_chan_dep_data_30),
        .token_out_vec(token_out_vec_30),
        .dl_detect_out(dl_in_vec[30]));

    assign proc_30_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.height_read_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.width_read_blk_n);
    assign proc_30_data_PIPO_blk[0] = 1'b0;
    assign proc_30_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_rgb2yuv_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_rgb2yuv_false_U0_U.if_write);
    assign proc_30_TLF_FIFO_blk[0] = 1'b0;
    assign proc_30_input_sync_blk[0] = 1'b0;
    assign proc_30_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_30[0] = dl_detect_out ? proc_dep_vld_vec_30_reg[0] : (proc_30_data_FIFO_blk[0] | proc_30_data_PIPO_blk[0] | proc_30_start_FIFO_blk[0] | proc_30_TLF_FIFO_blk[0] | proc_30_input_sync_blk[0] | proc_30_output_sync_blk[0]);
    assign proc_30_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.height_read_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.width_read_out_blk_n);
    assign proc_30_data_PIPO_blk[1] = 1'b0;
    assign proc_30_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_444_to_422_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_rgb2yuv_false_U0.real_start & (trans_in_cnt_20 == trans_out_cnt_20) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_444_to_422_false_U0_U.if_read);
    assign proc_30_TLF_FIFO_blk[1] = 1'b0;
    assign proc_30_input_sync_blk[1] = 1'b0;
    assign proc_30_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_30[1] = dl_detect_out ? proc_dep_vld_vec_30_reg[1] : (proc_30_data_FIFO_blk[1] | proc_30_data_PIPO_blk[1] | proc_30_start_FIFO_blk[1] | proc_30_TLF_FIFO_blk[1] | proc_30_input_sync_blk[1] | proc_30_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_30_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_30_reg <= proc_dep_vld_vec_30;
        end
    end
    assign in_chan_dep_vld_vec_30[0] = dep_chan_vld_29_30;
    assign in_chan_dep_data_vec_30[33 : 0] = dep_chan_data_29_30;
    assign token_in_vec_30[0] = token_29_30;
    assign in_chan_dep_vld_vec_30[1] = dep_chan_vld_31_30;
    assign in_chan_dep_data_vec_30[67 : 34] = dep_chan_data_31_30;
    assign token_in_vec_30[1] = token_31_30;
    assign dep_chan_vld_30_29 = out_chan_dep_vld_vec_30[0];
    assign dep_chan_data_30_29 = out_chan_dep_data_30;
    assign token_30_29 = token_out_vec_30[0];
    assign dep_chan_vld_30_31 = out_chan_dep_vld_vec_30[1];
    assign dep_chan_data_30_31 = out_chan_dep_data_30;
    assign token_30_31 = token_out_vec_30[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 31, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_31 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_31),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_31),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_31),
        .token_in_vec(token_in_vec_31),
        .dl_detect_in(dl_detect_out),
        .origin(origin[31]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_31),
        .out_chan_dep_data(out_chan_dep_data_31),
        .token_out_vec(token_out_vec_31),
        .dl_detect_out(dl_in_vec[31]));

    assign proc_31_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.height_read_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.width_read_blk_n);
    assign proc_31_data_PIPO_blk[0] = 1'b0;
    assign proc_31_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_444_to_422_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_444_to_422_false_U0_U.if_write);
    assign proc_31_TLF_FIFO_blk[0] = 1'b0;
    assign proc_31_input_sync_blk[0] = 1'b0;
    assign proc_31_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_31[0] = dl_detect_out ? proc_dep_vld_vec_31_reg[0] : (proc_31_data_FIFO_blk[0] | proc_31_data_PIPO_blk[0] | proc_31_start_FIFO_blk[0] | proc_31_TLF_FIFO_blk[0] | proc_31_input_sync_blk[0] | proc_31_output_sync_blk[0]);
    assign proc_31_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.height_read_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.width_read_out_blk_n);
    assign proc_31_data_PIPO_blk[1] = 1'b0;
    assign proc_31_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_420_false_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_444_to_422_false_U0.real_start & (trans_in_cnt_21 == trans_out_cnt_21) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_420_false_U0_U.if_read);
    assign proc_31_TLF_FIFO_blk[1] = 1'b0;
    assign proc_31_input_sync_blk[1] = 1'b0;
    assign proc_31_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_31[1] = dl_detect_out ? proc_dep_vld_vec_31_reg[1] : (proc_31_data_FIFO_blk[1] | proc_31_data_PIPO_blk[1] | proc_31_start_FIFO_blk[1] | proc_31_TLF_FIFO_blk[1] | proc_31_input_sync_blk[1] | proc_31_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_31_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_31_reg <= proc_dep_vld_vec_31;
        end
    end
    assign in_chan_dep_vld_vec_31[0] = dep_chan_vld_30_31;
    assign in_chan_dep_data_vec_31[33 : 0] = dep_chan_data_30_31;
    assign token_in_vec_31[0] = token_30_31;
    assign in_chan_dep_vld_vec_31[1] = dep_chan_vld_32_31;
    assign in_chan_dep_data_vec_31[67 : 34] = dep_chan_data_32_31;
    assign token_in_vec_31[1] = token_32_31;
    assign dep_chan_vld_31_30 = out_chan_dep_vld_vec_31[0];
    assign dep_chan_data_31_30 = out_chan_dep_data_31;
    assign token_31_30 = token_out_vec_31[0];
    assign dep_chan_vld_31_32 = out_chan_dep_vld_vec_31[1];
    assign dep_chan_data_31_32 = out_chan_dep_data_31;
    assign token_31_32 = token_out_vec_31[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 32, 2, 2) bd_v_mix_0_0_hls_deadlock_detect_unit_32 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_32),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_32),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_32),
        .token_in_vec(token_in_vec_32),
        .dl_detect_in(dl_detect_out),
        .origin(origin[32]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_32),
        .out_chan_dep_data(out_chan_dep_data_32),
        .token_out_vec(token_out_vec_32),
        .dl_detect_out(dl_in_vec[32]));

    assign proc_32_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.srcImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.height_read_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.width_read_blk_n);
    assign proc_32_data_PIPO_blk[0] = 1'b0;
    assign proc_32_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_420_false_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_v_mix_422_to_420_false_U0_U.if_write);
    assign proc_32_TLF_FIFO_blk[0] = 1'b0;
    assign proc_32_input_sync_blk[0] = 1'b0;
    assign proc_32_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_32[0] = dl_detect_out ? proc_dep_vld_vec_32_reg[0] : (proc_32_data_FIFO_blk[0] | proc_32_data_PIPO_blk[0] | proc_32_start_FIFO_blk[0] | proc_32_TLF_FIFO_blk[0] | proc_32_input_sync_blk[0] | proc_32_output_sync_blk[0]);
    assign proc_32_data_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.outImg_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.height_read_out_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.width_read_out_blk_n);
    assign proc_32_data_PIPO_blk[1] = 1'b0;
    assign proc_32_start_FIFO_blk[1] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_MultiPixStream2AXIvideo_U0_U.if_full_n & grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.ap_start & ~grp_VMixHlsDataFlowFunction_fu_660.v_mix_422_to_420_false_U0.real_start & (trans_in_cnt_22 == trans_out_cnt_22) & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_MultiPixStream2AXIvideo_U0_U.if_read);
    assign proc_32_TLF_FIFO_blk[1] = 1'b0;
    assign proc_32_input_sync_blk[1] = 1'b0;
    assign proc_32_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_32[1] = dl_detect_out ? proc_dep_vld_vec_32_reg[1] : (proc_32_data_FIFO_blk[1] | proc_32_data_PIPO_blk[1] | proc_32_start_FIFO_blk[1] | proc_32_TLF_FIFO_blk[1] | proc_32_input_sync_blk[1] | proc_32_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_32_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_32_reg <= proc_dep_vld_vec_32;
        end
    end
    assign in_chan_dep_vld_vec_32[0] = dep_chan_vld_31_32;
    assign in_chan_dep_data_vec_32[33 : 0] = dep_chan_data_31_32;
    assign token_in_vec_32[0] = token_31_32;
    assign in_chan_dep_vld_vec_32[1] = dep_chan_vld_33_32;
    assign in_chan_dep_data_vec_32[67 : 34] = dep_chan_data_33_32;
    assign token_in_vec_32[1] = token_33_32;
    assign dep_chan_vld_32_31 = out_chan_dep_vld_vec_32[0];
    assign dep_chan_data_32_31 = out_chan_dep_data_32;
    assign token_32_31 = token_out_vec_32[0];
    assign dep_chan_vld_32_33 = out_chan_dep_vld_vec_32[1];
    assign dep_chan_data_32_33 = out_chan_dep_data_32;
    assign token_32_33 = token_out_vec_32[1];

    // Process: grp_VMixHlsDataFlowFunction_fu_660.MultiPixStream2AXIvideo_U0
    bd_v_mix_0_0_hls_deadlock_detect_unit #(34, 33, 1, 1) bd_v_mix_0_0_hls_deadlock_detect_unit_33 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_33),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_33),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_33),
        .token_in_vec(token_in_vec_33),
        .dl_detect_in(dl_detect_out),
        .origin(origin[33]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_33),
        .out_chan_dep_data(out_chan_dep_data_33),
        .token_out_vec(token_out_vec_33),
        .dl_detect_out(dl_in_vec[33]));

    assign proc_33_data_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.MultiPixStream2AXIvideo_U0.out420_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.MultiPixStream2AXIvideo_U0.p_read_blk_n) | (~grp_VMixHlsDataFlowFunction_fu_660.MultiPixStream2AXIvideo_U0.p_read1_blk_n);
    assign proc_33_data_PIPO_blk[0] = 1'b0;
    assign proc_33_start_FIFO_blk[0] = 1'b0 | (~grp_VMixHlsDataFlowFunction_fu_660.start_for_MultiPixStream2AXIvideo_U0_U.if_empty_n & grp_VMixHlsDataFlowFunction_fu_660.MultiPixStream2AXIvideo_U0.ap_idle & ~grp_VMixHlsDataFlowFunction_fu_660.start_for_MultiPixStream2AXIvideo_U0_U.if_write);
    assign proc_33_TLF_FIFO_blk[0] = 1'b0;
    assign proc_33_input_sync_blk[0] = 1'b0;
    assign proc_33_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_33[0] = dl_detect_out ? proc_dep_vld_vec_33_reg[0] : (proc_33_data_FIFO_blk[0] | proc_33_data_PIPO_blk[0] | proc_33_start_FIFO_blk[0] | proc_33_TLF_FIFO_blk[0] | proc_33_input_sync_blk[0] | proc_33_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_33_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_33_reg <= proc_dep_vld_vec_33;
        end
    end
    assign in_chan_dep_vld_vec_33[0] = dep_chan_vld_32_33;
    assign in_chan_dep_data_vec_33[33 : 0] = dep_chan_data_32_33;
    assign token_in_vec_33[0] = token_32_33;
    assign dep_chan_vld_33_32 = out_chan_dep_vld_vec_33[0];
    assign dep_chan_data_33_32 = out_chan_dep_data_33;
    assign token_33_32 = token_out_vec_33[0];


`include "bd_v_mix_0_0_hls_deadlock_report_unit.vh"
