// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module bd_v_mix_0_0_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 12,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire                          flush,
    input  wire                          flush_done,
    output wire [15:0]                   width,
    output wire [15:0]                   height,
    output wire [15:0]                   video_format,
    output wire [15:0]                   background_Y_R,
    output wire [15:0]                   background_U_G,
    output wire [15:0]                   background_V_B,
    output wire [31:0]                   layerEnable,
    output wire [15:0]                   layerAlpha_0,
    output wire [15:0]                   layerStartX_0,
    output wire [15:0]                   layerStartY_0,
    output wire [15:0]                   layerWidth_0,
    output wire [15:0]                   layerStride_0,
    output wire [15:0]                   layerHeight_0,
    output wire [7:0]                    layerScaleFactor_0,
    output wire [7:0]                    layerVideoFormat_0,
    output wire [15:0]                   layerAlpha_1,
    output wire [15:0]                   layerStartX_1,
    output wire [15:0]                   layerStartY_1,
    output wire [15:0]                   layerWidth_1,
    output wire [15:0]                   layerStride_1,
    output wire [15:0]                   layerHeight_1,
    output wire [7:0]                    layerScaleFactor_1,
    output wire [7:0]                    layerVideoFormat_1,
    output wire [63:0]                   layer1_buf1,
    output wire [63:0]                   layer1_buf2,
    output wire [15:0]                   layerAlpha_2,
    output wire [15:0]                   layerStartX_2,
    output wire [15:0]                   layerStartY_2,
    output wire [15:0]                   layerWidth_2,
    output wire [15:0]                   layerStride_2,
    output wire [15:0]                   layerHeight_2,
    output wire [7:0]                    layerScaleFactor_2,
    output wire [7:0]                    layerVideoFormat_2,
    output wire [63:0]                   layer2_buf1,
    output wire [63:0]                   layer2_buf2,
    output wire [15:0]                   layerAlpha_3,
    output wire [15:0]                   layerStartX_3,
    output wire [15:0]                   layerStartY_3,
    output wire [15:0]                   layerWidth_3,
    output wire [15:0]                   layerStride_3,
    output wire [15:0]                   layerHeight_3,
    output wire [7:0]                    layerScaleFactor_3,
    output wire [7:0]                    layerVideoFormat_3,
    output wire [63:0]                   layer3_buf1,
    output wire [63:0]                   layer3_buf2,
    output wire [15:0]                   reserve,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 5  - flush (Read/Write)
//         bit 6  - flush_done (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - enable ap_done interrupt (Read/Write)
//         bit 1  - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - ap_done (COR/TOW)
//         bit 1  - ap_ready (COR/TOW)
//         others - reserved
// 0x010 : Data signal of width
//         bit 15~0 - width[15:0] (Read/Write)
//         others   - reserved
// 0x014 : reserved
// 0x018 : Data signal of height
//         bit 15~0 - height[15:0] (Read/Write)
//         others   - reserved
// 0x01c : reserved
// 0x020 : Data signal of video_format
//         bit 15~0 - video_format[15:0] (Read/Write)
//         others   - reserved
// 0x024 : reserved
// 0x028 : Data signal of background_Y_R
//         bit 15~0 - background_Y_R[15:0] (Read/Write)
//         others   - reserved
// 0x02c : reserved
// 0x030 : Data signal of background_U_G
//         bit 15~0 - background_U_G[15:0] (Read/Write)
//         others   - reserved
// 0x034 : reserved
// 0x038 : Data signal of background_V_B
//         bit 15~0 - background_V_B[15:0] (Read/Write)
//         others   - reserved
// 0x03c : reserved
// 0x040 : Data signal of layerEnable
//         bit 31~0 - layerEnable[31:0] (Read/Write)
// 0x044 : reserved
// 0x100 : Data signal of layerAlpha_0
//         bit 15~0 - layerAlpha_0[15:0] (Read/Write)
//         others   - reserved
// 0x104 : reserved
// 0x108 : Data signal of layerStartX_0
//         bit 15~0 - layerStartX_0[15:0] (Read/Write)
//         others   - reserved
// 0x10c : reserved
// 0x110 : Data signal of layerStartY_0
//         bit 15~0 - layerStartY_0[15:0] (Read/Write)
//         others   - reserved
// 0x114 : reserved
// 0x118 : Data signal of layerWidth_0
//         bit 15~0 - layerWidth_0[15:0] (Read/Write)
//         others   - reserved
// 0x11c : reserved
// 0x120 : Data signal of layerStride_0
//         bit 15~0 - layerStride_0[15:0] (Read/Write)
//         others   - reserved
// 0x124 : reserved
// 0x128 : Data signal of layerHeight_0
//         bit 15~0 - layerHeight_0[15:0] (Read/Write)
//         others   - reserved
// 0x12c : reserved
// 0x130 : Data signal of layerScaleFactor_0
//         bit 7~0 - layerScaleFactor_0[7:0] (Read/Write)
//         others  - reserved
// 0x134 : reserved
// 0x138 : Data signal of layerVideoFormat_0
//         bit 7~0 - layerVideoFormat_0[7:0] (Read/Write)
//         others  - reserved
// 0x13c : reserved
// 0x200 : Data signal of layerAlpha_1
//         bit 15~0 - layerAlpha_1[15:0] (Read/Write)
//         others   - reserved
// 0x204 : reserved
// 0x208 : Data signal of layerStartX_1
//         bit 15~0 - layerStartX_1[15:0] (Read/Write)
//         others   - reserved
// 0x20c : reserved
// 0x210 : Data signal of layerStartY_1
//         bit 15~0 - layerStartY_1[15:0] (Read/Write)
//         others   - reserved
// 0x214 : reserved
// 0x218 : Data signal of layerWidth_1
//         bit 15~0 - layerWidth_1[15:0] (Read/Write)
//         others   - reserved
// 0x21c : reserved
// 0x220 : Data signal of layerStride_1
//         bit 15~0 - layerStride_1[15:0] (Read/Write)
//         others   - reserved
// 0x224 : reserved
// 0x228 : Data signal of layerHeight_1
//         bit 15~0 - layerHeight_1[15:0] (Read/Write)
//         others   - reserved
// 0x22c : reserved
// 0x230 : Data signal of layerScaleFactor_1
//         bit 7~0 - layerScaleFactor_1[7:0] (Read/Write)
//         others  - reserved
// 0x234 : reserved
// 0x238 : Data signal of layerVideoFormat_1
//         bit 7~0 - layerVideoFormat_1[7:0] (Read/Write)
//         others  - reserved
// 0x23c : reserved
// 0x240 : Data signal of layer1_buf1
//         bit 31~0 - layer1_buf1[31:0] (Read/Write)
// 0x244 : Data signal of layer1_buf1
//         bit 31~0 - layer1_buf1[63:32] (Read/Write)
// 0x248 : reserved
// 0x24c : Data signal of layer1_buf2
//         bit 31~0 - layer1_buf2[31:0] (Read/Write)
// 0x250 : Data signal of layer1_buf2
//         bit 31~0 - layer1_buf2[63:32] (Read/Write)
// 0x254 : reserved
// 0x300 : Data signal of layerAlpha_2
//         bit 15~0 - layerAlpha_2[15:0] (Read/Write)
//         others   - reserved
// 0x304 : reserved
// 0x308 : Data signal of layerStartX_2
//         bit 15~0 - layerStartX_2[15:0] (Read/Write)
//         others   - reserved
// 0x30c : reserved
// 0x310 : Data signal of layerStartY_2
//         bit 15~0 - layerStartY_2[15:0] (Read/Write)
//         others   - reserved
// 0x314 : reserved
// 0x318 : Data signal of layerWidth_2
//         bit 15~0 - layerWidth_2[15:0] (Read/Write)
//         others   - reserved
// 0x31c : reserved
// 0x320 : Data signal of layerStride_2
//         bit 15~0 - layerStride_2[15:0] (Read/Write)
//         others   - reserved
// 0x324 : reserved
// 0x328 : Data signal of layerHeight_2
//         bit 15~0 - layerHeight_2[15:0] (Read/Write)
//         others   - reserved
// 0x32c : reserved
// 0x330 : Data signal of layerScaleFactor_2
//         bit 7~0 - layerScaleFactor_2[7:0] (Read/Write)
//         others  - reserved
// 0x334 : reserved
// 0x338 : Data signal of layerVideoFormat_2
//         bit 7~0 - layerVideoFormat_2[7:0] (Read/Write)
//         others  - reserved
// 0x33c : reserved
// 0x340 : Data signal of layer2_buf1
//         bit 31~0 - layer2_buf1[31:0] (Read/Write)
// 0x344 : Data signal of layer2_buf1
//         bit 31~0 - layer2_buf1[63:32] (Read/Write)
// 0x348 : reserved
// 0x34c : Data signal of layer2_buf2
//         bit 31~0 - layer2_buf2[31:0] (Read/Write)
// 0x350 : Data signal of layer2_buf2
//         bit 31~0 - layer2_buf2[63:32] (Read/Write)
// 0x354 : reserved
// 0x400 : Data signal of layerAlpha_3
//         bit 15~0 - layerAlpha_3[15:0] (Read/Write)
//         others   - reserved
// 0x404 : reserved
// 0x408 : Data signal of layerStartX_3
//         bit 15~0 - layerStartX_3[15:0] (Read/Write)
//         others   - reserved
// 0x40c : reserved
// 0x410 : Data signal of layerStartY_3
//         bit 15~0 - layerStartY_3[15:0] (Read/Write)
//         others   - reserved
// 0x414 : reserved
// 0x418 : Data signal of layerWidth_3
//         bit 15~0 - layerWidth_3[15:0] (Read/Write)
//         others   - reserved
// 0x41c : reserved
// 0x420 : Data signal of layerStride_3
//         bit 15~0 - layerStride_3[15:0] (Read/Write)
//         others   - reserved
// 0x424 : reserved
// 0x428 : Data signal of layerHeight_3
//         bit 15~0 - layerHeight_3[15:0] (Read/Write)
//         others   - reserved
// 0x42c : reserved
// 0x430 : Data signal of layerScaleFactor_3
//         bit 7~0 - layerScaleFactor_3[7:0] (Read/Write)
//         others  - reserved
// 0x434 : reserved
// 0x438 : Data signal of layerVideoFormat_3
//         bit 7~0 - layerVideoFormat_3[7:0] (Read/Write)
//         others  - reserved
// 0x43c : reserved
// 0x440 : Data signal of layer3_buf1
//         bit 31~0 - layer3_buf1[31:0] (Read/Write)
// 0x444 : Data signal of layer3_buf1
//         bit 31~0 - layer3_buf1[63:32] (Read/Write)
// 0x448 : reserved
// 0x44c : Data signal of layer3_buf2
//         bit 31~0 - layer3_buf2[31:0] (Read/Write)
// 0x450 : Data signal of layer3_buf2
//         bit 31~0 - layer3_buf2[63:32] (Read/Write)
// 0x454 : reserved
// 0xff0 : Data signal of reserve
//         bit 15~0 - reserve[15:0] (Read/Write)
//         others   - reserved
// 0xff4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                   = 12'h000,
    ADDR_GIE                       = 12'h004,
    ADDR_IER                       = 12'h008,
    ADDR_ISR                       = 12'h00c,
    ADDR_WIDTH_DATA_0              = 12'h010,
    ADDR_WIDTH_CTRL                = 12'h014,
    ADDR_HEIGHT_DATA_0             = 12'h018,
    ADDR_HEIGHT_CTRL               = 12'h01c,
    ADDR_VIDEO_FORMAT_DATA_0       = 12'h020,
    ADDR_VIDEO_FORMAT_CTRL         = 12'h024,
    ADDR_BACKGROUND_Y_R_DATA_0     = 12'h028,
    ADDR_BACKGROUND_Y_R_CTRL       = 12'h02c,
    ADDR_BACKGROUND_U_G_DATA_0     = 12'h030,
    ADDR_BACKGROUND_U_G_CTRL       = 12'h034,
    ADDR_BACKGROUND_V_B_DATA_0     = 12'h038,
    ADDR_BACKGROUND_V_B_CTRL       = 12'h03c,
    ADDR_LAYERENABLE_DATA_0        = 12'h040,
    ADDR_LAYERENABLE_CTRL          = 12'h044,
    ADDR_LAYERALPHA_0_DATA_0       = 12'h100,
    ADDR_LAYERALPHA_0_CTRL         = 12'h104,
    ADDR_LAYERSTARTX_0_DATA_0      = 12'h108,
    ADDR_LAYERSTARTX_0_CTRL        = 12'h10c,
    ADDR_LAYERSTARTY_0_DATA_0      = 12'h110,
    ADDR_LAYERSTARTY_0_CTRL        = 12'h114,
    ADDR_LAYERWIDTH_0_DATA_0       = 12'h118,
    ADDR_LAYERWIDTH_0_CTRL         = 12'h11c,
    ADDR_LAYERSTRIDE_0_DATA_0      = 12'h120,
    ADDR_LAYERSTRIDE_0_CTRL        = 12'h124,
    ADDR_LAYERHEIGHT_0_DATA_0      = 12'h128,
    ADDR_LAYERHEIGHT_0_CTRL        = 12'h12c,
    ADDR_LAYERSCALEFACTOR_0_DATA_0 = 12'h130,
    ADDR_LAYERSCALEFACTOR_0_CTRL   = 12'h134,
    ADDR_LAYERVIDEOFORMAT_0_DATA_0 = 12'h138,
    ADDR_LAYERVIDEOFORMAT_0_CTRL   = 12'h13c,
    ADDR_LAYERALPHA_1_DATA_0       = 12'h200,
    ADDR_LAYERALPHA_1_CTRL         = 12'h204,
    ADDR_LAYERSTARTX_1_DATA_0      = 12'h208,
    ADDR_LAYERSTARTX_1_CTRL        = 12'h20c,
    ADDR_LAYERSTARTY_1_DATA_0      = 12'h210,
    ADDR_LAYERSTARTY_1_CTRL        = 12'h214,
    ADDR_LAYERWIDTH_1_DATA_0       = 12'h218,
    ADDR_LAYERWIDTH_1_CTRL         = 12'h21c,
    ADDR_LAYERSTRIDE_1_DATA_0      = 12'h220,
    ADDR_LAYERSTRIDE_1_CTRL        = 12'h224,
    ADDR_LAYERHEIGHT_1_DATA_0      = 12'h228,
    ADDR_LAYERHEIGHT_1_CTRL        = 12'h22c,
    ADDR_LAYERSCALEFACTOR_1_DATA_0 = 12'h230,
    ADDR_LAYERSCALEFACTOR_1_CTRL   = 12'h234,
    ADDR_LAYERVIDEOFORMAT_1_DATA_0 = 12'h238,
    ADDR_LAYERVIDEOFORMAT_1_CTRL   = 12'h23c,
    ADDR_LAYER1_BUF1_DATA_0        = 12'h240,
    ADDR_LAYER1_BUF1_DATA_1        = 12'h244,
    ADDR_LAYER1_BUF1_CTRL          = 12'h248,
    ADDR_LAYER1_BUF2_DATA_0        = 12'h24c,
    ADDR_LAYER1_BUF2_DATA_1        = 12'h250,
    ADDR_LAYER1_BUF2_CTRL          = 12'h254,
    ADDR_LAYERALPHA_2_DATA_0       = 12'h300,
    ADDR_LAYERALPHA_2_CTRL         = 12'h304,
    ADDR_LAYERSTARTX_2_DATA_0      = 12'h308,
    ADDR_LAYERSTARTX_2_CTRL        = 12'h30c,
    ADDR_LAYERSTARTY_2_DATA_0      = 12'h310,
    ADDR_LAYERSTARTY_2_CTRL        = 12'h314,
    ADDR_LAYERWIDTH_2_DATA_0       = 12'h318,
    ADDR_LAYERWIDTH_2_CTRL         = 12'h31c,
    ADDR_LAYERSTRIDE_2_DATA_0      = 12'h320,
    ADDR_LAYERSTRIDE_2_CTRL        = 12'h324,
    ADDR_LAYERHEIGHT_2_DATA_0      = 12'h328,
    ADDR_LAYERHEIGHT_2_CTRL        = 12'h32c,
    ADDR_LAYERSCALEFACTOR_2_DATA_0 = 12'h330,
    ADDR_LAYERSCALEFACTOR_2_CTRL   = 12'h334,
    ADDR_LAYERVIDEOFORMAT_2_DATA_0 = 12'h338,
    ADDR_LAYERVIDEOFORMAT_2_CTRL   = 12'h33c,
    ADDR_LAYER2_BUF1_DATA_0        = 12'h340,
    ADDR_LAYER2_BUF1_DATA_1        = 12'h344,
    ADDR_LAYER2_BUF1_CTRL          = 12'h348,
    ADDR_LAYER2_BUF2_DATA_0        = 12'h34c,
    ADDR_LAYER2_BUF2_DATA_1        = 12'h350,
    ADDR_LAYER2_BUF2_CTRL          = 12'h354,
    ADDR_LAYERALPHA_3_DATA_0       = 12'h400,
    ADDR_LAYERALPHA_3_CTRL         = 12'h404,
    ADDR_LAYERSTARTX_3_DATA_0      = 12'h408,
    ADDR_LAYERSTARTX_3_CTRL        = 12'h40c,
    ADDR_LAYERSTARTY_3_DATA_0      = 12'h410,
    ADDR_LAYERSTARTY_3_CTRL        = 12'h414,
    ADDR_LAYERWIDTH_3_DATA_0       = 12'h418,
    ADDR_LAYERWIDTH_3_CTRL         = 12'h41c,
    ADDR_LAYERSTRIDE_3_DATA_0      = 12'h420,
    ADDR_LAYERSTRIDE_3_CTRL        = 12'h424,
    ADDR_LAYERHEIGHT_3_DATA_0      = 12'h428,
    ADDR_LAYERHEIGHT_3_CTRL        = 12'h42c,
    ADDR_LAYERSCALEFACTOR_3_DATA_0 = 12'h430,
    ADDR_LAYERSCALEFACTOR_3_CTRL   = 12'h434,
    ADDR_LAYERVIDEOFORMAT_3_DATA_0 = 12'h438,
    ADDR_LAYERVIDEOFORMAT_3_CTRL   = 12'h43c,
    ADDR_LAYER3_BUF1_DATA_0        = 12'h440,
    ADDR_LAYER3_BUF1_DATA_1        = 12'h444,
    ADDR_LAYER3_BUF1_CTRL          = 12'h448,
    ADDR_LAYER3_BUF2_DATA_0        = 12'h44c,
    ADDR_LAYER3_BUF2_DATA_1        = 12'h450,
    ADDR_LAYER3_BUF2_CTRL          = 12'h454,
    ADDR_RESERVE_DATA_0            = 12'hff0,
    ADDR_RESERVE_CTRL              = 12'hff4,
    WRIDLE                         = 2'd0,
    WRDATA                         = 2'd1,
    WRRESP                         = 2'd2,
    WRRESET                        = 2'd3,
    RDIDLE                         = 2'd0,
    RDDATA                         = 2'd1,
    RDRESET                        = 2'd2,
    ADDR_BITS                = 12;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_flush = 1'b0;
    reg                           int_flush_done = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [15:0]                   int_width = 'b0;
    reg  [15:0]                   int_height = 'b0;
    reg  [15:0]                   int_video_format = 'b0;
    reg  [15:0]                   int_background_Y_R = 'b0;
    reg  [15:0]                   int_background_U_G = 'b0;
    reg  [15:0]                   int_background_V_B = 'b0;
    reg  [31:0]                   int_layerEnable = 'b0;
    reg  [15:0]                   int_layerAlpha_0 = 'b0;
    reg  [15:0]                   int_layerStartX_0 = 'b0;
    reg  [15:0]                   int_layerStartY_0 = 'b0;
    reg  [15:0]                   int_layerWidth_0 = 'b0;
    reg  [15:0]                   int_layerStride_0 = 'b0;
    reg  [15:0]                   int_layerHeight_0 = 'b0;
    reg  [7:0]                    int_layerScaleFactor_0 = 'b0;
    reg  [7:0]                    int_layerVideoFormat_0 = 'b0;
    reg  [15:0]                   int_layerAlpha_1 = 'b0;
    reg  [15:0]                   int_layerStartX_1 = 'b0;
    reg  [15:0]                   int_layerStartY_1 = 'b0;
    reg  [15:0]                   int_layerWidth_1 = 'b0;
    reg  [15:0]                   int_layerStride_1 = 'b0;
    reg  [15:0]                   int_layerHeight_1 = 'b0;
    reg  [7:0]                    int_layerScaleFactor_1 = 'b0;
    reg  [7:0]                    int_layerVideoFormat_1 = 'b0;
    reg  [63:0]                   int_layer1_buf1 = 'b0;
    reg  [63:0]                   int_layer1_buf2 = 'b0;
    reg  [15:0]                   int_layerAlpha_2 = 'b0;
    reg  [15:0]                   int_layerStartX_2 = 'b0;
    reg  [15:0]                   int_layerStartY_2 = 'b0;
    reg  [15:0]                   int_layerWidth_2 = 'b0;
    reg  [15:0]                   int_layerStride_2 = 'b0;
    reg  [15:0]                   int_layerHeight_2 = 'b0;
    reg  [7:0]                    int_layerScaleFactor_2 = 'b0;
    reg  [7:0]                    int_layerVideoFormat_2 = 'b0;
    reg  [63:0]                   int_layer2_buf1 = 'b0;
    reg  [63:0]                   int_layer2_buf2 = 'b0;
    reg  [15:0]                   int_layerAlpha_3 = 'b0;
    reg  [15:0]                   int_layerStartX_3 = 'b0;
    reg  [15:0]                   int_layerStartY_3 = 'b0;
    reg  [15:0]                   int_layerWidth_3 = 'b0;
    reg  [15:0]                   int_layerStride_3 = 'b0;
    reg  [15:0]                   int_layerHeight_3 = 'b0;
    reg  [7:0]                    int_layerScaleFactor_3 = 'b0;
    reg  [7:0]                    int_layerVideoFormat_3 = 'b0;
    reg  [63:0]                   int_layer3_buf1 = 'b0;
    reg  [63:0]                   int_layer3_buf2 = 'b0;
    reg  [15:0]                   int_reserve = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[5] <= int_flush;
                    rdata[6] <= int_flush_done;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_WIDTH_DATA_0: begin
                    rdata <= int_width[15:0];
                end
                ADDR_HEIGHT_DATA_0: begin
                    rdata <= int_height[15:0];
                end
                ADDR_VIDEO_FORMAT_DATA_0: begin
                    rdata <= int_video_format[15:0];
                end
                ADDR_BACKGROUND_Y_R_DATA_0: begin
                    rdata <= int_background_Y_R[15:0];
                end
                ADDR_BACKGROUND_U_G_DATA_0: begin
                    rdata <= int_background_U_G[15:0];
                end
                ADDR_BACKGROUND_V_B_DATA_0: begin
                    rdata <= int_background_V_B[15:0];
                end
                ADDR_LAYERENABLE_DATA_0: begin
                    rdata <= int_layerEnable[31:0];
                end
                ADDR_LAYERALPHA_0_DATA_0: begin
                    rdata <= int_layerAlpha_0[15:0];
                end
                ADDR_LAYERSTARTX_0_DATA_0: begin
                    rdata <= int_layerStartX_0[15:0];
                end
                ADDR_LAYERSTARTY_0_DATA_0: begin
                    rdata <= int_layerStartY_0[15:0];
                end
                ADDR_LAYERWIDTH_0_DATA_0: begin
                    rdata <= int_layerWidth_0[15:0];
                end
                ADDR_LAYERSTRIDE_0_DATA_0: begin
                    rdata <= int_layerStride_0[15:0];
                end
                ADDR_LAYERHEIGHT_0_DATA_0: begin
                    rdata <= int_layerHeight_0[15:0];
                end
                ADDR_LAYERSCALEFACTOR_0_DATA_0: begin
                    rdata <= int_layerScaleFactor_0[7:0];
                end
                ADDR_LAYERVIDEOFORMAT_0_DATA_0: begin
                    rdata <= int_layerVideoFormat_0[7:0];
                end
                ADDR_LAYERALPHA_1_DATA_0: begin
                    rdata <= int_layerAlpha_1[15:0];
                end
                ADDR_LAYERSTARTX_1_DATA_0: begin
                    rdata <= int_layerStartX_1[15:0];
                end
                ADDR_LAYERSTARTY_1_DATA_0: begin
                    rdata <= int_layerStartY_1[15:0];
                end
                ADDR_LAYERWIDTH_1_DATA_0: begin
                    rdata <= int_layerWidth_1[15:0];
                end
                ADDR_LAYERSTRIDE_1_DATA_0: begin
                    rdata <= int_layerStride_1[15:0];
                end
                ADDR_LAYERHEIGHT_1_DATA_0: begin
                    rdata <= int_layerHeight_1[15:0];
                end
                ADDR_LAYERSCALEFACTOR_1_DATA_0: begin
                    rdata <= int_layerScaleFactor_1[7:0];
                end
                ADDR_LAYERVIDEOFORMAT_1_DATA_0: begin
                    rdata <= int_layerVideoFormat_1[7:0];
                end
                ADDR_LAYER1_BUF1_DATA_0: begin
                    rdata <= int_layer1_buf1[31:0];
                end
                ADDR_LAYER1_BUF1_DATA_1: begin
                    rdata <= int_layer1_buf1[63:32];
                end
                ADDR_LAYER1_BUF2_DATA_0: begin
                    rdata <= int_layer1_buf2[31:0];
                end
                ADDR_LAYER1_BUF2_DATA_1: begin
                    rdata <= int_layer1_buf2[63:32];
                end
                ADDR_LAYERALPHA_2_DATA_0: begin
                    rdata <= int_layerAlpha_2[15:0];
                end
                ADDR_LAYERSTARTX_2_DATA_0: begin
                    rdata <= int_layerStartX_2[15:0];
                end
                ADDR_LAYERSTARTY_2_DATA_0: begin
                    rdata <= int_layerStartY_2[15:0];
                end
                ADDR_LAYERWIDTH_2_DATA_0: begin
                    rdata <= int_layerWidth_2[15:0];
                end
                ADDR_LAYERSTRIDE_2_DATA_0: begin
                    rdata <= int_layerStride_2[15:0];
                end
                ADDR_LAYERHEIGHT_2_DATA_0: begin
                    rdata <= int_layerHeight_2[15:0];
                end
                ADDR_LAYERSCALEFACTOR_2_DATA_0: begin
                    rdata <= int_layerScaleFactor_2[7:0];
                end
                ADDR_LAYERVIDEOFORMAT_2_DATA_0: begin
                    rdata <= int_layerVideoFormat_2[7:0];
                end
                ADDR_LAYER2_BUF1_DATA_0: begin
                    rdata <= int_layer2_buf1[31:0];
                end
                ADDR_LAYER2_BUF1_DATA_1: begin
                    rdata <= int_layer2_buf1[63:32];
                end
                ADDR_LAYER2_BUF2_DATA_0: begin
                    rdata <= int_layer2_buf2[31:0];
                end
                ADDR_LAYER2_BUF2_DATA_1: begin
                    rdata <= int_layer2_buf2[63:32];
                end
                ADDR_LAYERALPHA_3_DATA_0: begin
                    rdata <= int_layerAlpha_3[15:0];
                end
                ADDR_LAYERSTARTX_3_DATA_0: begin
                    rdata <= int_layerStartX_3[15:0];
                end
                ADDR_LAYERSTARTY_3_DATA_0: begin
                    rdata <= int_layerStartY_3[15:0];
                end
                ADDR_LAYERWIDTH_3_DATA_0: begin
                    rdata <= int_layerWidth_3[15:0];
                end
                ADDR_LAYERSTRIDE_3_DATA_0: begin
                    rdata <= int_layerStride_3[15:0];
                end
                ADDR_LAYERHEIGHT_3_DATA_0: begin
                    rdata <= int_layerHeight_3[15:0];
                end
                ADDR_LAYERSCALEFACTOR_3_DATA_0: begin
                    rdata <= int_layerScaleFactor_3[7:0];
                end
                ADDR_LAYERVIDEOFORMAT_3_DATA_0: begin
                    rdata <= int_layerVideoFormat_3[7:0];
                end
                ADDR_LAYER3_BUF1_DATA_0: begin
                    rdata <= int_layer3_buf1[31:0];
                end
                ADDR_LAYER3_BUF1_DATA_1: begin
                    rdata <= int_layer3_buf1[63:32];
                end
                ADDR_LAYER3_BUF2_DATA_0: begin
                    rdata <= int_layer3_buf2[31:0];
                end
                ADDR_LAYER3_BUF2_DATA_1: begin
                    rdata <= int_layer3_buf2[63:32];
                end
                ADDR_RESERVE_DATA_0: begin
                    rdata <= int_reserve[15:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt          = int_gie & (|int_isr);
assign ap_start           = int_ap_start;
assign flush              = int_flush;
assign width              = int_width;
assign height             = int_height;
assign video_format       = int_video_format;
assign background_Y_R     = int_background_Y_R;
assign background_U_G     = int_background_U_G;
assign background_V_B     = int_background_V_B;
assign layerEnable        = int_layerEnable;
assign layerAlpha_0       = int_layerAlpha_0;
assign layerStartX_0      = int_layerStartX_0;
assign layerStartY_0      = int_layerStartY_0;
assign layerWidth_0       = int_layerWidth_0;
assign layerStride_0      = int_layerStride_0;
assign layerHeight_0      = int_layerHeight_0;
assign layerScaleFactor_0 = int_layerScaleFactor_0;
assign layerVideoFormat_0 = int_layerVideoFormat_0;
assign layerAlpha_1       = int_layerAlpha_1;
assign layerStartX_1      = int_layerStartX_1;
assign layerStartY_1      = int_layerStartY_1;
assign layerWidth_1       = int_layerWidth_1;
assign layerStride_1      = int_layerStride_1;
assign layerHeight_1      = int_layerHeight_1;
assign layerScaleFactor_1 = int_layerScaleFactor_1;
assign layerVideoFormat_1 = int_layerVideoFormat_1;
assign layer1_buf1        = int_layer1_buf1;
assign layer1_buf2        = int_layer1_buf2;
assign layerAlpha_2       = int_layerAlpha_2;
assign layerStartX_2      = int_layerStartX_2;
assign layerStartY_2      = int_layerStartY_2;
assign layerWidth_2       = int_layerWidth_2;
assign layerStride_2      = int_layerStride_2;
assign layerHeight_2      = int_layerHeight_2;
assign layerScaleFactor_2 = int_layerScaleFactor_2;
assign layerVideoFormat_2 = int_layerVideoFormat_2;
assign layer2_buf1        = int_layer2_buf1;
assign layer2_buf2        = int_layer2_buf2;
assign layerAlpha_3       = int_layerAlpha_3;
assign layerStartX_3      = int_layerStartX_3;
assign layerStartY_3      = int_layerStartY_3;
assign layerWidth_3       = int_layerWidth_3;
assign layerStride_3      = int_layerStride_3;
assign layerHeight_3      = int_layerHeight_3;
assign layerScaleFactor_3 = int_layerScaleFactor_3;
assign layerVideoFormat_3 = int_layerVideoFormat_3;
assign layer3_buf1        = int_layer3_buf1;
assign layer3_buf2        = int_layer3_buf2;
assign reserve            = int_reserve;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_flush
always @(posedge ACLK) begin
    if (ARESET)
        int_flush <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[5])
            int_flush <= 1'b1;
    end
end

// int_flush_done
always @(posedge ACLK) begin
    if (ARESET)
        int_flush_done <= 1'b0;
    else if (ACLK_EN) begin
            int_flush_done <= flush_done;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTH_DATA_0)
            int_width[15:0] <= (WDATA[31:0] & wmask) | (int_width[15:0] & ~wmask);
    end
end

// int_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HEIGHT_DATA_0)
            int_height[15:0] <= (WDATA[31:0] & wmask) | (int_height[15:0] & ~wmask);
    end
end

// int_video_format[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_video_format[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VIDEO_FORMAT_DATA_0)
            int_video_format[15:0] <= (WDATA[31:0] & wmask) | (int_video_format[15:0] & ~wmask);
    end
end

// int_background_Y_R[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_background_Y_R[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BACKGROUND_Y_R_DATA_0)
            int_background_Y_R[15:0] <= (WDATA[31:0] & wmask) | (int_background_Y_R[15:0] & ~wmask);
    end
end

// int_background_U_G[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_background_U_G[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BACKGROUND_U_G_DATA_0)
            int_background_U_G[15:0] <= (WDATA[31:0] & wmask) | (int_background_U_G[15:0] & ~wmask);
    end
end

// int_background_V_B[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_background_V_B[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BACKGROUND_V_B_DATA_0)
            int_background_V_B[15:0] <= (WDATA[31:0] & wmask) | (int_background_V_B[15:0] & ~wmask);
    end
end

// int_layerEnable[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerEnable[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERENABLE_DATA_0)
            int_layerEnable[31:0] <= (WDATA[31:0] & wmask) | (int_layerEnable[31:0] & ~wmask);
    end
end

// int_layerAlpha_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerAlpha_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERALPHA_0_DATA_0)
            int_layerAlpha_0[15:0] <= (WDATA[31:0] & wmask) | (int_layerAlpha_0[15:0] & ~wmask);
    end
end

// int_layerStartX_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartX_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTX_0_DATA_0)
            int_layerStartX_0[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartX_0[15:0] & ~wmask);
    end
end

// int_layerStartY_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartY_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTY_0_DATA_0)
            int_layerStartY_0[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartY_0[15:0] & ~wmask);
    end
end

// int_layerWidth_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerWidth_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERWIDTH_0_DATA_0)
            int_layerWidth_0[15:0] <= (WDATA[31:0] & wmask) | (int_layerWidth_0[15:0] & ~wmask);
    end
end

// int_layerStride_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStride_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTRIDE_0_DATA_0)
            int_layerStride_0[15:0] <= (WDATA[31:0] & wmask) | (int_layerStride_0[15:0] & ~wmask);
    end
end

// int_layerHeight_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerHeight_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERHEIGHT_0_DATA_0)
            int_layerHeight_0[15:0] <= (WDATA[31:0] & wmask) | (int_layerHeight_0[15:0] & ~wmask);
    end
end

// int_layerScaleFactor_0[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerScaleFactor_0[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSCALEFACTOR_0_DATA_0)
            int_layerScaleFactor_0[7:0] <= (WDATA[31:0] & wmask) | (int_layerScaleFactor_0[7:0] & ~wmask);
    end
end

// int_layerVideoFormat_0[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerVideoFormat_0[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERVIDEOFORMAT_0_DATA_0)
            int_layerVideoFormat_0[7:0] <= (WDATA[31:0] & wmask) | (int_layerVideoFormat_0[7:0] & ~wmask);
    end
end

// int_layerAlpha_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerAlpha_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERALPHA_1_DATA_0)
            int_layerAlpha_1[15:0] <= (WDATA[31:0] & wmask) | (int_layerAlpha_1[15:0] & ~wmask);
    end
end

// int_layerStartX_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartX_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTX_1_DATA_0)
            int_layerStartX_1[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartX_1[15:0] & ~wmask);
    end
end

// int_layerStartY_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartY_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTY_1_DATA_0)
            int_layerStartY_1[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartY_1[15:0] & ~wmask);
    end
end

// int_layerWidth_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerWidth_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERWIDTH_1_DATA_0)
            int_layerWidth_1[15:0] <= (WDATA[31:0] & wmask) | (int_layerWidth_1[15:0] & ~wmask);
    end
end

// int_layerStride_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStride_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTRIDE_1_DATA_0)
            int_layerStride_1[15:0] <= (WDATA[31:0] & wmask) | (int_layerStride_1[15:0] & ~wmask);
    end
end

// int_layerHeight_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerHeight_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERHEIGHT_1_DATA_0)
            int_layerHeight_1[15:0] <= (WDATA[31:0] & wmask) | (int_layerHeight_1[15:0] & ~wmask);
    end
end

// int_layerScaleFactor_1[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerScaleFactor_1[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSCALEFACTOR_1_DATA_0)
            int_layerScaleFactor_1[7:0] <= (WDATA[31:0] & wmask) | (int_layerScaleFactor_1[7:0] & ~wmask);
    end
end

// int_layerVideoFormat_1[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerVideoFormat_1[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERVIDEOFORMAT_1_DATA_0)
            int_layerVideoFormat_1[7:0] <= (WDATA[31:0] & wmask) | (int_layerVideoFormat_1[7:0] & ~wmask);
    end
end

// int_layer1_buf1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer1_buf1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_BUF1_DATA_0)
            int_layer1_buf1[31:0] <= (WDATA[31:0] & wmask) | (int_layer1_buf1[31:0] & ~wmask);
    end
end

// int_layer1_buf1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer1_buf1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_BUF1_DATA_1)
            int_layer1_buf1[63:32] <= (WDATA[31:0] & wmask) | (int_layer1_buf1[63:32] & ~wmask);
    end
end

// int_layer1_buf2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer1_buf2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_BUF2_DATA_0)
            int_layer1_buf2[31:0] <= (WDATA[31:0] & wmask) | (int_layer1_buf2[31:0] & ~wmask);
    end
end

// int_layer1_buf2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer1_buf2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_BUF2_DATA_1)
            int_layer1_buf2[63:32] <= (WDATA[31:0] & wmask) | (int_layer1_buf2[63:32] & ~wmask);
    end
end

// int_layerAlpha_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerAlpha_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERALPHA_2_DATA_0)
            int_layerAlpha_2[15:0] <= (WDATA[31:0] & wmask) | (int_layerAlpha_2[15:0] & ~wmask);
    end
end

// int_layerStartX_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartX_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTX_2_DATA_0)
            int_layerStartX_2[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartX_2[15:0] & ~wmask);
    end
end

// int_layerStartY_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartY_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTY_2_DATA_0)
            int_layerStartY_2[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartY_2[15:0] & ~wmask);
    end
end

// int_layerWidth_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerWidth_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERWIDTH_2_DATA_0)
            int_layerWidth_2[15:0] <= (WDATA[31:0] & wmask) | (int_layerWidth_2[15:0] & ~wmask);
    end
end

// int_layerStride_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStride_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTRIDE_2_DATA_0)
            int_layerStride_2[15:0] <= (WDATA[31:0] & wmask) | (int_layerStride_2[15:0] & ~wmask);
    end
end

// int_layerHeight_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerHeight_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERHEIGHT_2_DATA_0)
            int_layerHeight_2[15:0] <= (WDATA[31:0] & wmask) | (int_layerHeight_2[15:0] & ~wmask);
    end
end

// int_layerScaleFactor_2[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerScaleFactor_2[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSCALEFACTOR_2_DATA_0)
            int_layerScaleFactor_2[7:0] <= (WDATA[31:0] & wmask) | (int_layerScaleFactor_2[7:0] & ~wmask);
    end
end

// int_layerVideoFormat_2[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerVideoFormat_2[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERVIDEOFORMAT_2_DATA_0)
            int_layerVideoFormat_2[7:0] <= (WDATA[31:0] & wmask) | (int_layerVideoFormat_2[7:0] & ~wmask);
    end
end

// int_layer2_buf1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer2_buf1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER2_BUF1_DATA_0)
            int_layer2_buf1[31:0] <= (WDATA[31:0] & wmask) | (int_layer2_buf1[31:0] & ~wmask);
    end
end

// int_layer2_buf1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer2_buf1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER2_BUF1_DATA_1)
            int_layer2_buf1[63:32] <= (WDATA[31:0] & wmask) | (int_layer2_buf1[63:32] & ~wmask);
    end
end

// int_layer2_buf2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer2_buf2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER2_BUF2_DATA_0)
            int_layer2_buf2[31:0] <= (WDATA[31:0] & wmask) | (int_layer2_buf2[31:0] & ~wmask);
    end
end

// int_layer2_buf2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer2_buf2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER2_BUF2_DATA_1)
            int_layer2_buf2[63:32] <= (WDATA[31:0] & wmask) | (int_layer2_buf2[63:32] & ~wmask);
    end
end

// int_layerAlpha_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerAlpha_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERALPHA_3_DATA_0)
            int_layerAlpha_3[15:0] <= (WDATA[31:0] & wmask) | (int_layerAlpha_3[15:0] & ~wmask);
    end
end

// int_layerStartX_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartX_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTX_3_DATA_0)
            int_layerStartX_3[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartX_3[15:0] & ~wmask);
    end
end

// int_layerStartY_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStartY_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTARTY_3_DATA_0)
            int_layerStartY_3[15:0] <= (WDATA[31:0] & wmask) | (int_layerStartY_3[15:0] & ~wmask);
    end
end

// int_layerWidth_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerWidth_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERWIDTH_3_DATA_0)
            int_layerWidth_3[15:0] <= (WDATA[31:0] & wmask) | (int_layerWidth_3[15:0] & ~wmask);
    end
end

// int_layerStride_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerStride_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSTRIDE_3_DATA_0)
            int_layerStride_3[15:0] <= (WDATA[31:0] & wmask) | (int_layerStride_3[15:0] & ~wmask);
    end
end

// int_layerHeight_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerHeight_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERHEIGHT_3_DATA_0)
            int_layerHeight_3[15:0] <= (WDATA[31:0] & wmask) | (int_layerHeight_3[15:0] & ~wmask);
    end
end

// int_layerScaleFactor_3[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerScaleFactor_3[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERSCALEFACTOR_3_DATA_0)
            int_layerScaleFactor_3[7:0] <= (WDATA[31:0] & wmask) | (int_layerScaleFactor_3[7:0] & ~wmask);
    end
end

// int_layerVideoFormat_3[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layerVideoFormat_3[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYERVIDEOFORMAT_3_DATA_0)
            int_layerVideoFormat_3[7:0] <= (WDATA[31:0] & wmask) | (int_layerVideoFormat_3[7:0] & ~wmask);
    end
end

// int_layer3_buf1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer3_buf1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER3_BUF1_DATA_0)
            int_layer3_buf1[31:0] <= (WDATA[31:0] & wmask) | (int_layer3_buf1[31:0] & ~wmask);
    end
end

// int_layer3_buf1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer3_buf1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER3_BUF1_DATA_1)
            int_layer3_buf1[63:32] <= (WDATA[31:0] & wmask) | (int_layer3_buf1[63:32] & ~wmask);
    end
end

// int_layer3_buf2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer3_buf2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER3_BUF2_DATA_0)
            int_layer3_buf2[31:0] <= (WDATA[31:0] & wmask) | (int_layer3_buf2[31:0] & ~wmask);
    end
end

// int_layer3_buf2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_layer3_buf2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER3_BUF2_DATA_1)
            int_layer3_buf2[63:32] <= (WDATA[31:0] & wmask) | (int_layer3_buf2[63:32] & ~wmask);
    end
end

// int_reserve[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_reserve[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RESERVE_DATA_0)
            int_reserve[15:0] <= (WDATA[31:0] & wmask) | (int_reserve[15:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
