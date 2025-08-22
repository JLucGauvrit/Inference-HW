// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module bd_v_multi_scaler_0_0_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 14,
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
    output wire [7:0]                    num_outs,
    output wire [15:0]                   WidthIn,
    output wire [15:0]                   WidthOut,
    output wire [15:0]                   HeightIn,
    output wire [15:0]                   HeightOut,
    output wire [31:0]                   LineRate,
    output wire [31:0]                   PixelRate,
    output wire [7:0]                    InPixelFmt,
    output wire [7:0]                    OutPixelFmt,
    output wire [15:0]                   InStride,
    output wire [15:0]                   OutStride,
    output wire [63:0]                   srcImgBuf0_0,
    output wire [63:0]                   srcImgBuf1_0,
    output wire [63:0]                   dstImgBuf0_0,
    output wire [63:0]                   dstImgBuf1_0,
    input  wire [8:0]                    mm_vfltCoeff_address0,
    input  wire                          mm_vfltCoeff_ce0,
    output wire [15:0]                   mm_vfltCoeff_q0,
    input  wire [8:0]                    mm_hfltCoeff_address0,
    input  wire                          mm_hfltCoeff_ce0,
    output wire [15:0]                   mm_hfltCoeff_q0,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read)
//          bit 5  - flush (Read/Write)
//          bit 6  - flush_done (Read)
//          bit 7  - auto_restart (Read/Write)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0  - enable ap_done interrupt (Read/Write)
//          bit 1  - enable ap_ready interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0  - ap_done (COR/TOW)
//          bit 1  - ap_ready (COR/TOW)
//          others - reserved
// 0x0010 : Data signal of num_outs
//          bit 7~0 - num_outs[7:0] (Read/Write)
//          others  - reserved
// 0x0014 : reserved
// 0x0100 : Data signal of WidthIn
//          bit 15~0 - WidthIn[15:0] (Read/Write)
//          others   - reserved
// 0x0104 : reserved
// 0x0108 : Data signal of WidthOut
//          bit 15~0 - WidthOut[15:0] (Read/Write)
//          others   - reserved
// 0x010c : reserved
// 0x0110 : Data signal of HeightIn
//          bit 15~0 - HeightIn[15:0] (Read/Write)
//          others   - reserved
// 0x0114 : reserved
// 0x0118 : Data signal of HeightOut
//          bit 15~0 - HeightOut[15:0] (Read/Write)
//          others   - reserved
// 0x011c : reserved
// 0x0120 : Data signal of LineRate
//          bit 31~0 - LineRate[31:0] (Read/Write)
// 0x0124 : reserved
// 0x0128 : Data signal of PixelRate
//          bit 31~0 - PixelRate[31:0] (Read/Write)
// 0x012c : reserved
// 0x0130 : Data signal of InPixelFmt
//          bit 7~0 - InPixelFmt[7:0] (Read/Write)
//          others  - reserved
// 0x0134 : reserved
// 0x0138 : Data signal of OutPixelFmt
//          bit 7~0 - OutPixelFmt[7:0] (Read/Write)
//          others  - reserved
// 0x013c : reserved
// 0x0150 : Data signal of InStride
//          bit 15~0 - InStride[15:0] (Read/Write)
//          others   - reserved
// 0x0154 : reserved
// 0x0158 : Data signal of OutStride
//          bit 15~0 - OutStride[15:0] (Read/Write)
//          others   - reserved
// 0x015c : reserved
// 0x0160 : Data signal of srcImgBuf0_0
//          bit 31~0 - srcImgBuf0_0[31:0] (Read/Write)
// 0x0164 : Data signal of srcImgBuf0_0
//          bit 31~0 - srcImgBuf0_0[63:32] (Read/Write)
// 0x0168 : reserved
// 0x0170 : Data signal of srcImgBuf1_0
//          bit 31~0 - srcImgBuf1_0[31:0] (Read/Write)
// 0x0174 : Data signal of srcImgBuf1_0
//          bit 31~0 - srcImgBuf1_0[63:32] (Read/Write)
// 0x0178 : reserved
// 0x0190 : Data signal of dstImgBuf0_0
//          bit 31~0 - dstImgBuf0_0[31:0] (Read/Write)
// 0x0194 : Data signal of dstImgBuf0_0
//          bit 31~0 - dstImgBuf0_0[63:32] (Read/Write)
// 0x0198 : reserved
// 0x0200 : Data signal of dstImgBuf1_0
//          bit 31~0 - dstImgBuf1_0[31:0] (Read/Write)
// 0x0204 : Data signal of dstImgBuf1_0
//          bit 31~0 - dstImgBuf1_0[63:32] (Read/Write)
// 0x0208 : reserved
// 0x2000 ~
// 0x23ff : Memory 'mm_vfltCoeff' (384 * 16b)
//          Word n : bit [15: 0] - mm_vfltCoeff[2n]
//                   bit [31:16] - mm_vfltCoeff[2n+1]
// 0x2800 ~
// 0x2bff : Memory 'mm_hfltCoeff' (384 * 16b)
//          Word n : bit [15: 0] - mm_hfltCoeff[2n]
//                   bit [31:16] - mm_hfltCoeff[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL             = 14'h0000,
    ADDR_GIE                 = 14'h0004,
    ADDR_IER                 = 14'h0008,
    ADDR_ISR                 = 14'h000c,
    ADDR_NUM_OUTS_DATA_0     = 14'h0010,
    ADDR_NUM_OUTS_CTRL       = 14'h0014,
    ADDR_WIDTHIN_DATA_0      = 14'h0100,
    ADDR_WIDTHIN_CTRL        = 14'h0104,
    ADDR_WIDTHOUT_DATA_0     = 14'h0108,
    ADDR_WIDTHOUT_CTRL       = 14'h010c,
    ADDR_HEIGHTIN_DATA_0     = 14'h0110,
    ADDR_HEIGHTIN_CTRL       = 14'h0114,
    ADDR_HEIGHTOUT_DATA_0    = 14'h0118,
    ADDR_HEIGHTOUT_CTRL      = 14'h011c,
    ADDR_LINERATE_DATA_0     = 14'h0120,
    ADDR_LINERATE_CTRL       = 14'h0124,
    ADDR_PIXELRATE_DATA_0    = 14'h0128,
    ADDR_PIXELRATE_CTRL      = 14'h012c,
    ADDR_INPIXELFMT_DATA_0   = 14'h0130,
    ADDR_INPIXELFMT_CTRL     = 14'h0134,
    ADDR_OUTPIXELFMT_DATA_0  = 14'h0138,
    ADDR_OUTPIXELFMT_CTRL    = 14'h013c,
    ADDR_INSTRIDE_DATA_0     = 14'h0150,
    ADDR_INSTRIDE_CTRL       = 14'h0154,
    ADDR_OUTSTRIDE_DATA_0    = 14'h0158,
    ADDR_OUTSTRIDE_CTRL      = 14'h015c,
    ADDR_SRCIMGBUF0_0_DATA_0 = 14'h0160,
    ADDR_SRCIMGBUF0_0_DATA_1 = 14'h0164,
    ADDR_SRCIMGBUF0_0_CTRL   = 14'h0168,
    ADDR_SRCIMGBUF1_0_DATA_0 = 14'h0170,
    ADDR_SRCIMGBUF1_0_DATA_1 = 14'h0174,
    ADDR_SRCIMGBUF1_0_CTRL   = 14'h0178,
    ADDR_DSTIMGBUF0_0_DATA_0 = 14'h0190,
    ADDR_DSTIMGBUF0_0_DATA_1 = 14'h0194,
    ADDR_DSTIMGBUF0_0_CTRL   = 14'h0198,
    ADDR_DSTIMGBUF1_0_DATA_0 = 14'h0200,
    ADDR_DSTIMGBUF1_0_DATA_1 = 14'h0204,
    ADDR_DSTIMGBUF1_0_CTRL   = 14'h0208,
    ADDR_MM_VFLTCOEFF_BASE   = 14'h2000,
    ADDR_MM_VFLTCOEFF_HIGH   = 14'h23ff,
    ADDR_MM_HFLTCOEFF_BASE   = 14'h2800,
    ADDR_MM_HFLTCOEFF_HIGH   = 14'h2bff,
    WRIDLE                   = 2'd0,
    WRDATA                   = 2'd1,
    WRRESP                   = 2'd2,
    WRRESET                  = 2'd3,
    RDIDLE                   = 2'd0,
    RDDATA                   = 2'd1,
    RDRESET                  = 2'd2,
    ADDR_BITS                = 14;

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
    reg  [7:0]                    int_num_outs = 'b0;
    reg  [15:0]                   int_WidthIn = 'b0;
    reg  [15:0]                   int_WidthOut = 'b0;
    reg  [15:0]                   int_HeightIn = 'b0;
    reg  [15:0]                   int_HeightOut = 'b0;
    reg  [31:0]                   int_LineRate = 'b0;
    reg  [31:0]                   int_PixelRate = 'b0;
    reg  [7:0]                    int_InPixelFmt = 'b0;
    reg  [7:0]                    int_OutPixelFmt = 'b0;
    reg  [15:0]                   int_InStride = 'b0;
    reg  [15:0]                   int_OutStride = 'b0;
    reg  [63:0]                   int_srcImgBuf0_0 = 'b0;
    reg  [63:0]                   int_srcImgBuf1_0 = 'b0;
    reg  [63:0]                   int_dstImgBuf0_0 = 'b0;
    reg  [63:0]                   int_dstImgBuf1_0 = 'b0;
    // memory signals
    wire [7:0]                    int_mm_vfltCoeff_address0;
    wire                          int_mm_vfltCoeff_ce0;
    wire                          int_mm_vfltCoeff_we0;
    wire [3:0]                    int_mm_vfltCoeff_be0;
    wire [31:0]                   int_mm_vfltCoeff_d0;
    wire [31:0]                   int_mm_vfltCoeff_q0;
    wire [7:0]                    int_mm_vfltCoeff_address1;
    wire                          int_mm_vfltCoeff_ce1;
    wire                          int_mm_vfltCoeff_we1;
    wire [3:0]                    int_mm_vfltCoeff_be1;
    wire [31:0]                   int_mm_vfltCoeff_d1;
    wire [31:0]                   int_mm_vfltCoeff_q1;
    reg                           int_mm_vfltCoeff_read;
    reg                           int_mm_vfltCoeff_write;
    reg  [0:0]                    int_mm_vfltCoeff_shift;
    wire [7:0]                    int_mm_hfltCoeff_address0;
    wire                          int_mm_hfltCoeff_ce0;
    wire                          int_mm_hfltCoeff_we0;
    wire [3:0]                    int_mm_hfltCoeff_be0;
    wire [31:0]                   int_mm_hfltCoeff_d0;
    wire [31:0]                   int_mm_hfltCoeff_q0;
    wire [7:0]                    int_mm_hfltCoeff_address1;
    wire                          int_mm_hfltCoeff_ce1;
    wire                          int_mm_hfltCoeff_we1;
    wire [3:0]                    int_mm_hfltCoeff_be1;
    wire [31:0]                   int_mm_hfltCoeff_d1;
    wire [31:0]                   int_mm_hfltCoeff_q1;
    reg                           int_mm_hfltCoeff_read;
    reg                           int_mm_hfltCoeff_write;
    reg  [0:0]                    int_mm_hfltCoeff_shift;

//------------------------Instantiation------------------
// int_mm_vfltCoeff
bd_v_multi_scaler_0_0_CTRL_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 192 )
) int_mm_vfltCoeff (
    .clk0     ( ACLK ),
    .address0 ( int_mm_vfltCoeff_address0 ),
    .ce0      ( int_mm_vfltCoeff_ce0 ),
    .we0      ( int_mm_vfltCoeff_we0 ),
    .be0      ( int_mm_vfltCoeff_be0 ),
    .d0       ( int_mm_vfltCoeff_d0 ),
    .q0       ( int_mm_vfltCoeff_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_mm_vfltCoeff_address1 ),
    .ce1      ( int_mm_vfltCoeff_ce1 ),
    .we1      ( int_mm_vfltCoeff_we1 ),
    .be1      ( int_mm_vfltCoeff_be1 ),
    .d1       ( int_mm_vfltCoeff_d1 ),
    .q1       ( int_mm_vfltCoeff_q1 )
);
// int_mm_hfltCoeff
bd_v_multi_scaler_0_0_CTRL_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 192 )
) int_mm_hfltCoeff (
    .clk0     ( ACLK ),
    .address0 ( int_mm_hfltCoeff_address0 ),
    .ce0      ( int_mm_hfltCoeff_ce0 ),
    .we0      ( int_mm_hfltCoeff_we0 ),
    .be0      ( int_mm_hfltCoeff_be0 ),
    .d0       ( int_mm_hfltCoeff_d0 ),
    .q0       ( int_mm_hfltCoeff_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_mm_hfltCoeff_address1 ),
    .ce1      ( int_mm_hfltCoeff_ce1 ),
    .we1      ( int_mm_hfltCoeff_we1 ),
    .be1      ( int_mm_hfltCoeff_be1 ),
    .d1       ( int_mm_hfltCoeff_d1 ),
    .q1       ( int_mm_hfltCoeff_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
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
            if (w_hs)
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
assign RVALID  = (rstate == RDDATA) & !int_mm_vfltCoeff_read & !int_mm_hfltCoeff_read;
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
                ADDR_NUM_OUTS_DATA_0: begin
                    rdata <= int_num_outs[7:0];
                end
                ADDR_WIDTHIN_DATA_0: begin
                    rdata <= int_WidthIn[15:0];
                end
                ADDR_WIDTHOUT_DATA_0: begin
                    rdata <= int_WidthOut[15:0];
                end
                ADDR_HEIGHTIN_DATA_0: begin
                    rdata <= int_HeightIn[15:0];
                end
                ADDR_HEIGHTOUT_DATA_0: begin
                    rdata <= int_HeightOut[15:0];
                end
                ADDR_LINERATE_DATA_0: begin
                    rdata <= int_LineRate[31:0];
                end
                ADDR_PIXELRATE_DATA_0: begin
                    rdata <= int_PixelRate[31:0];
                end
                ADDR_INPIXELFMT_DATA_0: begin
                    rdata <= int_InPixelFmt[7:0];
                end
                ADDR_OUTPIXELFMT_DATA_0: begin
                    rdata <= int_OutPixelFmt[7:0];
                end
                ADDR_INSTRIDE_DATA_0: begin
                    rdata <= int_InStride[15:0];
                end
                ADDR_OUTSTRIDE_DATA_0: begin
                    rdata <= int_OutStride[15:0];
                end
                ADDR_SRCIMGBUF0_0_DATA_0: begin
                    rdata <= int_srcImgBuf0_0[31:0];
                end
                ADDR_SRCIMGBUF0_0_DATA_1: begin
                    rdata <= int_srcImgBuf0_0[63:32];
                end
                ADDR_SRCIMGBUF1_0_DATA_0: begin
                    rdata <= int_srcImgBuf1_0[31:0];
                end
                ADDR_SRCIMGBUF1_0_DATA_1: begin
                    rdata <= int_srcImgBuf1_0[63:32];
                end
                ADDR_DSTIMGBUF0_0_DATA_0: begin
                    rdata <= int_dstImgBuf0_0[31:0];
                end
                ADDR_DSTIMGBUF0_0_DATA_1: begin
                    rdata <= int_dstImgBuf0_0[63:32];
                end
                ADDR_DSTIMGBUF1_0_DATA_0: begin
                    rdata <= int_dstImgBuf1_0[31:0];
                end
                ADDR_DSTIMGBUF1_0_DATA_1: begin
                    rdata <= int_dstImgBuf1_0[63:32];
                end
            endcase
        end
        else if (int_mm_vfltCoeff_read) begin
            rdata <= int_mm_vfltCoeff_q1;
        end
        else if (int_mm_hfltCoeff_read) begin
            rdata <= int_mm_hfltCoeff_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt    = int_gie & (|int_isr);
assign ap_start     = int_ap_start;
assign flush        = int_flush;
assign num_outs     = int_num_outs;
assign WidthIn      = int_WidthIn;
assign WidthOut     = int_WidthOut;
assign HeightIn     = int_HeightIn;
assign HeightOut    = int_HeightOut;
assign LineRate     = int_LineRate;
assign PixelRate    = int_PixelRate;
assign InPixelFmt   = int_InPixelFmt;
assign OutPixelFmt  = int_OutPixelFmt;
assign InStride     = int_InStride;
assign OutStride    = int_OutStride;
assign srcImgBuf0_0 = int_srcImgBuf0_0;
assign srcImgBuf1_0 = int_srcImgBuf1_0;
assign dstImgBuf0_0 = int_dstImgBuf0_0;
assign dstImgBuf1_0 = int_dstImgBuf1_0;
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

// int_num_outs[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_num_outs[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NUM_OUTS_DATA_0)
            int_num_outs[7:0] <= (WDATA[31:0] & wmask) | (int_num_outs[7:0] & ~wmask);
    end
end

// int_WidthIn[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_WidthIn[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTHIN_DATA_0)
            int_WidthIn[15:0] <= (WDATA[31:0] & wmask) | (int_WidthIn[15:0] & ~wmask);
    end
end

// int_WidthOut[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_WidthOut[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTHOUT_DATA_0)
            int_WidthOut[15:0] <= (WDATA[31:0] & wmask) | (int_WidthOut[15:0] & ~wmask);
    end
end

// int_HeightIn[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HeightIn[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HEIGHTIN_DATA_0)
            int_HeightIn[15:0] <= (WDATA[31:0] & wmask) | (int_HeightIn[15:0] & ~wmask);
    end
end

// int_HeightOut[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HeightOut[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HEIGHTOUT_DATA_0)
            int_HeightOut[15:0] <= (WDATA[31:0] & wmask) | (int_HeightOut[15:0] & ~wmask);
    end
end

// int_LineRate[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_LineRate[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LINERATE_DATA_0)
            int_LineRate[31:0] <= (WDATA[31:0] & wmask) | (int_LineRate[31:0] & ~wmask);
    end
end

// int_PixelRate[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_PixelRate[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PIXELRATE_DATA_0)
            int_PixelRate[31:0] <= (WDATA[31:0] & wmask) | (int_PixelRate[31:0] & ~wmask);
    end
end

// int_InPixelFmt[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_InPixelFmt[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPIXELFMT_DATA_0)
            int_InPixelFmt[7:0] <= (WDATA[31:0] & wmask) | (int_InPixelFmt[7:0] & ~wmask);
    end
end

// int_OutPixelFmt[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_OutPixelFmt[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPIXELFMT_DATA_0)
            int_OutPixelFmt[7:0] <= (WDATA[31:0] & wmask) | (int_OutPixelFmt[7:0] & ~wmask);
    end
end

// int_InStride[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_InStride[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INSTRIDE_DATA_0)
            int_InStride[15:0] <= (WDATA[31:0] & wmask) | (int_InStride[15:0] & ~wmask);
    end
end

// int_OutStride[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_OutStride[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTSTRIDE_DATA_0)
            int_OutStride[15:0] <= (WDATA[31:0] & wmask) | (int_OutStride[15:0] & ~wmask);
    end
end

// int_srcImgBuf0_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_srcImgBuf0_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SRCIMGBUF0_0_DATA_0)
            int_srcImgBuf0_0[31:0] <= (WDATA[31:0] & wmask) | (int_srcImgBuf0_0[31:0] & ~wmask);
    end
end

// int_srcImgBuf0_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_srcImgBuf0_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SRCIMGBUF0_0_DATA_1)
            int_srcImgBuf0_0[63:32] <= (WDATA[31:0] & wmask) | (int_srcImgBuf0_0[63:32] & ~wmask);
    end
end

// int_srcImgBuf1_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_srcImgBuf1_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SRCIMGBUF1_0_DATA_0)
            int_srcImgBuf1_0[31:0] <= (WDATA[31:0] & wmask) | (int_srcImgBuf1_0[31:0] & ~wmask);
    end
end

// int_srcImgBuf1_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_srcImgBuf1_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SRCIMGBUF1_0_DATA_1)
            int_srcImgBuf1_0[63:32] <= (WDATA[31:0] & wmask) | (int_srcImgBuf1_0[63:32] & ~wmask);
    end
end

// int_dstImgBuf0_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dstImgBuf0_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DSTIMGBUF0_0_DATA_0)
            int_dstImgBuf0_0[31:0] <= (WDATA[31:0] & wmask) | (int_dstImgBuf0_0[31:0] & ~wmask);
    end
end

// int_dstImgBuf0_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_dstImgBuf0_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DSTIMGBUF0_0_DATA_1)
            int_dstImgBuf0_0[63:32] <= (WDATA[31:0] & wmask) | (int_dstImgBuf0_0[63:32] & ~wmask);
    end
end

// int_dstImgBuf1_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dstImgBuf1_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DSTIMGBUF1_0_DATA_0)
            int_dstImgBuf1_0[31:0] <= (WDATA[31:0] & wmask) | (int_dstImgBuf1_0[31:0] & ~wmask);
    end
end

// int_dstImgBuf1_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_dstImgBuf1_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DSTIMGBUF1_0_DATA_1)
            int_dstImgBuf1_0[63:32] <= (WDATA[31:0] & wmask) | (int_dstImgBuf1_0[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// mm_vfltCoeff
assign int_mm_vfltCoeff_address0 = mm_vfltCoeff_address0 >> 1;
assign int_mm_vfltCoeff_ce0      = mm_vfltCoeff_ce0;
assign int_mm_vfltCoeff_we0      = 1'b0;
assign int_mm_vfltCoeff_be0      = 1'b0;
assign int_mm_vfltCoeff_d0       = 1'b0;
assign mm_vfltCoeff_q0           = int_mm_vfltCoeff_q0 >> (int_mm_vfltCoeff_shift * 16);
assign int_mm_vfltCoeff_address1 = ar_hs? raddr[9:2] : waddr[9:2];
assign int_mm_vfltCoeff_ce1      = ar_hs | (int_mm_vfltCoeff_write & WVALID);
assign int_mm_vfltCoeff_we1      = int_mm_vfltCoeff_write & w_hs;
assign int_mm_vfltCoeff_be1      = WSTRB;
assign int_mm_vfltCoeff_d1       = WDATA;
// mm_hfltCoeff
assign int_mm_hfltCoeff_address0 = mm_hfltCoeff_address0 >> 1;
assign int_mm_hfltCoeff_ce0      = mm_hfltCoeff_ce0;
assign int_mm_hfltCoeff_we0      = 1'b0;
assign int_mm_hfltCoeff_be0      = 1'b0;
assign int_mm_hfltCoeff_d0       = 1'b0;
assign mm_hfltCoeff_q0           = int_mm_hfltCoeff_q0 >> (int_mm_hfltCoeff_shift * 16);
assign int_mm_hfltCoeff_address1 = ar_hs? raddr[9:2] : waddr[9:2];
assign int_mm_hfltCoeff_ce1      = ar_hs | (int_mm_hfltCoeff_write & WVALID);
assign int_mm_hfltCoeff_we1      = int_mm_hfltCoeff_write & w_hs;
assign int_mm_hfltCoeff_be1      = WSTRB;
assign int_mm_hfltCoeff_d1       = WDATA;
// int_mm_vfltCoeff_read
always @(posedge ACLK) begin
    if (ARESET)
        int_mm_vfltCoeff_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_MM_VFLTCOEFF_BASE && raddr <= ADDR_MM_VFLTCOEFF_HIGH)
            int_mm_vfltCoeff_read <= 1'b1;
        else
            int_mm_vfltCoeff_read <= 1'b0;
    end
end

// int_mm_vfltCoeff_write
always @(posedge ACLK) begin
    if (ARESET)
        int_mm_vfltCoeff_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_MM_VFLTCOEFF_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_MM_VFLTCOEFF_HIGH)
            int_mm_vfltCoeff_write <= 1'b1;
        else if (w_hs)
            int_mm_vfltCoeff_write <= 1'b0;
    end
end

// int_mm_vfltCoeff_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (mm_vfltCoeff_ce0)
            int_mm_vfltCoeff_shift <= mm_vfltCoeff_address0[0];
    end
end

// int_mm_hfltCoeff_read
always @(posedge ACLK) begin
    if (ARESET)
        int_mm_hfltCoeff_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_MM_HFLTCOEFF_BASE && raddr <= ADDR_MM_HFLTCOEFF_HIGH)
            int_mm_hfltCoeff_read <= 1'b1;
        else
            int_mm_hfltCoeff_read <= 1'b0;
    end
end

// int_mm_hfltCoeff_write
always @(posedge ACLK) begin
    if (ARESET)
        int_mm_hfltCoeff_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_MM_HFLTCOEFF_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_MM_HFLTCOEFF_HIGH)
            int_mm_hfltCoeff_write <= 1'b1;
        else if (w_hs)
            int_mm_hfltCoeff_write <= 1'b0;
    end
end

// int_mm_hfltCoeff_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (mm_hfltCoeff_ce0)
            int_mm_hfltCoeff_shift <= mm_hfltCoeff_address0[0];
    end
end


endmodule


`timescale 1ns/1ps

module bd_v_multi_scaler_0_0_CTRL_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

