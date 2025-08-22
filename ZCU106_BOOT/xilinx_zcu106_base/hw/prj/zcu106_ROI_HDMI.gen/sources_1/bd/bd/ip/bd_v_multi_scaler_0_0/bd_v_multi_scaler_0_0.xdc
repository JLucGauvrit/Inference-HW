

set_false_path -from [get_cells CTRL_s_axi_U/int_num_outs_reg[*]]


set_false_path -from [get_cells CTRL_s_axi_U/int_WidthIn_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_HeightIn_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_WidthOut_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_HeightOut_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_InStride_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_OutStride_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_LineRate_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_PixelRate_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_InPixelFmt_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_OutPixelFmt_reg[*]]

set_false_path -from [get_cells CTRL_s_axi_U/int_srcImgBuf?_?_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_dstImgBuf?_?_reg[*]]

#
#set_false_path -from [get_cells CTRL_s_axi_U/int_mm_hfltCoeff_*]
#
#
#set_false_path -from [get_cells CTRL_s_axi_U/int_mm_vfltCoeff_*]
#
