# aclk {FREQ_HZ 300000000 CLK_DOMAIN bd_clk_wiz_1_0_clk_out1 PHASE 0.0} aclk1 {FREQ_HZ 300000000 CLK_DOMAIN bd_clk_wiz_1_0_clk_out1 PHASE 0.0}
# Clock Domain: bd_clk_wiz_1_0_clk_out1
create_clock -name aclk -period 3.333 [get_ports aclk]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -divide_by 1 [get_ports aclk1]
