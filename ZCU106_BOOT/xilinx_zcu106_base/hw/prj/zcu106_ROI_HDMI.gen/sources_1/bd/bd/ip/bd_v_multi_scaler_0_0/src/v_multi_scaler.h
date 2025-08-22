#ifndef _V_MULTI_SCALER_H_
#define _V_MULTI_SCALER_H_

#include "hls_video.h"
#include "ap_int.h"
#include "v_multi_scaler_config.h"

typedef unsigned char       U8;
typedef unsigned short      U16;
typedef unsigned int        U32;
typedef signed char         I8;
typedef signed short        I16;
typedef signed int          I32;
typedef signed long long    I64;
typedef unsigned long long  U64;

#define Y_CH    (0)
#define U_CH    (1)
#define V_CH    (2)

#define HSC_MAX_BITS    (HSC_BITS_PER_COMPONENT*HSC_SAMPLES_PER_CLOCK)
#define VSC_MAX_BITS    (VSC_BITS_PER_COMPONENT*VSC_SAMPLES_PER_CLOCK)
#define MIN_PIXELS      (16)

#define STEP_PRECISION_SHIFT   (16)
#define STEP_PRECISION         (1<<STEP_PRECISION_SHIFT)
#define COEFF_PRECISION_SHIFT  (12)
#define COEFF_PRECISION        (1<<COEFF_PRECISION_SHIFT)
#define PIXEL_MAX              (1 << HSC_BITS_PER_COMPONENT) - 1

#define CLAMP(a,lo,hi) ((a)<(lo)?(lo) : ((a)>(hi) ? (hi) : (a)))
#define MAX(a,b)       (((a)>(b))?(a):(b))
#define MIN(a,b)       (((a)<(b))?(a):(b))

typedef ap_uint<HSC_BITS_PER_COMPONENT>                                         PIXEL_TYPE;
typedef ap_uint<HSC_NR_COMPONENTS*HSC_SAMPLES_PER_CLOCK*HSC_BITS_PER_COMPONENT> MEM_PIXEL_TYPE;
typedef hls::Scalar<HSC_NR_COMPONENTS, PIXEL_TYPE>                              YUV_PIXEL;
typedef hls::Scalar<HSC_NR_COMPONENTS*HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE>        YUV_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE>                                              Y_PIXEL;
typedef hls::Scalar<HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE>                          Y_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE>                                              C_PIXEL;
typedef hls::Scalar<HSC_SAMPLES_PER_CLOCK, PIXEL_TYPE>                          C_MULTI_PIXEL;

//typedef for dma
typedef ap_uint<AXIMM_DATA_WIDTH>*                                          AXIMM;
typedef hls::stream<ap_uint<AXIMM_DATA_WIDTH> >                             STREAM_BYTES;

typedef struct {
    STREAM_BYTES plane0;
#if (MAX_NR_PLANES==2)
    STREAM_BYTES plane1;
#endif
} STREAM_PLANES;

// Streaming video formats
#define RGB444                  0
#define YUV444                  1
#define YUV422                  2
#define YUV420                  3
#define Y                       4
#define RGBA                    5
#define YUVA444                 6

// Video in memory formats
#define RGBX8                   10  // [31:0] x:B:G:R 8:8:8:8
#define YUVX8                   11  // [31:0] x:V:U:Y 8:8:8:8
#define YUYV8                   12  // [31:0] V:Y:U:Y 8:8:8:8
#define RGBA8                   13  // [31:0] A:B:G:R 8:8:8:8
#define YUVA8                   14  // [31:0] A:V:U:Y 8:8:8:8
#define RGBX10                  15  // [31:0] x:B:G:R 2:10:10:10
#define YUVX10                  16  // [31:0] x:V:U:Y 2:10:10:10
#define RGB565                  17  // [15:0] B:G:R 5:6:5
#define Y_UV8                   18  // [15:0] Y:Y 8:8, [15:0] V:U 8:8
#define Y_UV8_420               19  // [15:0] Y:Y 8:8, [15:0] V:U 8:8
#define RGB8                    20  // [23:0] B:G:R 8:8:8
#define YUV8                    21  // [24:0] V:U:Y 8:8:8
#define Y_UV10                  22  // [31:0] x:Y:Y:Y 2:10:10:10, [31:0] x:U:V:U 2:10:10:10
#define Y_UV10_420              23  // [31:0] x:Y:Y:Y 2:10:10:10, [31:0] x:U:V:U 2:10:10:10
#define Y8                      24  // [31:0] Y3:Y2:Y1:Y0 8:8:8:8
#define Y10                     25  // [31:0] x:Y2:Y1:Y0 2:10:10:10
#define BGRA8                   26  // [31:0] A:R:G:B 8:8:8:8
#define BGRX8                   27  // [31:0] X:R:G:B 8:8:8:8
#define UYVY8                   28  // [31:0] Y:V:Y:U 8:8:8:8
#define BGR8                    29  // [23:0] R:G:B 8:8:8

#define IS_PIXEL_ALPHA(a)       ((a)==RGBA8 || (a)==YUVA8 || (a)==BGRA8)
#define IS_YUV(a)               ((a)==YUV444 || (a)==YUV422 || (a)==YUV420 || (a)==YUVA444 || (a)==YUVX8 || (a)==YUYV8 || (a)==YUVA8 || (a)==YUVX10 || (a)==Y_UV8 || (a)==Y_UV8_420 || (a)==YUV8 || (a)==Y_UV10 || (a)==Y_UV10_420 || (a)==Y8 || (a)==Y10 || (a)==UYVY8 )
#define IS_444(a)               ((a)==YUV444 || (a)==YUVA444 || (a)==YUVX8 || (a)==YUVA8 || (a)==YUVX10 || (a)==YUV8 || (a)==Y8 || (a)==Y10 )
#define IS_422(a)               ((a)==YUV422 || (a)==YUYV8 || (a)==Y_UV8 || (a)==Y_UV10 || (a)==UYVY8 )
#define NR_PLANES(a)            (((a)==Y_UV8 || (a)==Y_UV8_420 || (a)==Y_UV10 || (a)==Y_UV10_420) ? 2 :1)
#define IS_420(a)               ((a)==YUV420 || (a)==Y_UV8_420 || (a)==Y_UV10_420)
#define DEPTH(a)                (((a)==RGBX10 || (a)==YUVX10 || (a)==Y_UV10 || (a)==Y_UV10_420 || (a)==Y10) ? 10 : 8)

const int BYTES_PER_PIXEL[] =
{
    // Streaming video formats
    0, // RGB444
    0, // YUV444
    0, // YUV422
    0, // YUV420
    0, // unused
    0, // RGBA
    0, // YUVA444
    0, // unused
    0, // unused
    0, // unused

    // Video in memory formats
    4, // RGBX8
    4, // YUVX8
    2, // YUYV8
    4, // RGBA8
    4, // YUVA8
    4, // RGBX10
    4, // YUVX10
    2, // unused
    1, // Y_UV8
    1, // Y_UV8_420
    3, // RGB8
    3, // YUV8
    4, // Y_UV10        4 bytes per 3 pixels
    4, // Y_UV10_420    4 bytes per 3 pixels
    1, // Y8
    4, // Y10           4 bytes per 3 pixels
    4, // BGRA8
    4, // BGRX8
    2, // UYVY8
    3  // BGR8
};

const int MEMORY2LIVE[] =
{
    // Streaming video formats
    0, // RGB444
    1, // YUV444
    2, // YUV422
    3, // YUV420
    0, // unused
    5, // unused
    6, // unused
    0, // unused
    0, // unused
    0, // unused

    // Video in memory formats
    0, // RGBX8
    1, // YUVX8
    2, // YUYV8
    5, // unused
    6, // unused
    0, // RGBX10
    1, // YUVX10
    0, // unused
    2, // Y_UV8
    3, // Y_UV8_420
    0, // RGB8
    1, // YUV8
    2, // Y_UV10
    3, // Y_UV10_420
    1, // Y8
    1, // Y10
    5, // unused
    0, // BGRX8
    2, // UYVY8
    0  // BGR8
};

//typedef for hscaler
typedef hls::stream<ap_axiu<(HSC_MAX_BITS*HSC_NR_COMPONENTS),1,1,1> >   HSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<(HSC_MAX_BITS*HSC_NR_COMPONENTS),1,1,1> >   HSC_AXI_STREAM_OUT;
typedef hls::Mat<HSC_MAX_HEIGHT, HSC_MAX_WIDTH, HLS_8UC3>               HSC_YUV_IMAGE;
typedef hls::stream<YUV_MULTI_PIXEL>                                    HSC_STREAM_MULTIPIX;

//typedef for vscaler
typedef hls::LineBuffer<VSC_TAPS, (VSC_MAX_WIDTH/VSC_SAMPLES_PER_CLOCK), MEM_PIXEL_TYPE>    MEM_LINE_BUFFER;
typedef hls::stream<ap_axiu<(VSC_MAX_BITS*VSC_NR_COMPONENTS),1,1,1> >                       VSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<(VSC_MAX_BITS*VSC_NR_COMPONENTS),1,1,1> >                       VSC_AXI_STREAM_OUT;
typedef hls::Mat<VSC_MAX_HEIGHT, VSC_MAX_WIDTH, HLS_8UC3>                                   VSC_YUV_IMAGE;
typedef hls::stream<YUV_MULTI_PIXEL>                                                        VSC_STREAM_MULTIPIX;

#if HSC_SAMPLES_PER_CLOCK==4
#define HSC_PHASE_CTRL_INDEX_BITS   3
#else
#define HSC_PHASE_CTRL_INDEX_BITS   2
#endif
#define HSC_PHASE_CTRL_EN_BITS      1
#define HSC_PHASE_CTRL_PHASE_BITS   HSC_PHASE_SHIFT

#define HSC_PHASE_CTRL_BITS         (HSC_PHASE_CTRL_PHASE_BITS+HSC_PHASE_CTRL_EN_BITS+HSC_PHASE_CTRL_INDEX_BITS)

#define HSC_PHASE_CTRL_PHASE_LSB    0
#define HSC_PHASE_CTRL_PHASE_MSB    (HSC_PHASE_CTRL_PHASE_LSB+HSC_PHASE_CTRL_PHASE_BITS-1)

#define HSC_PHASE_CTRL_INDEX_LSB    (HSC_PHASE_CTRL_PHASE_MSB+1)
#define HSC_PHASE_CTRL_INDEX_MSB    (HSC_PHASE_CTRL_INDEX_LSB+HSC_PHASE_CTRL_INDEX_BITS-1)

#define HSC_PHASE_CTRL_ENABLE_LSB   (HSC_PHASE_CTRL_BITS-1)
typedef ap_uint<(HSC_PHASE_CTRL_BITS*HSC_SAMPLES_PER_CLOCK)> HSC_PHASE_CTRL;

// HW Registers
// The number of bits of some registers depend on the MAX values specified in
// the config.h file. TODO - how to take that in to account while defining the
// registers ?

typedef struct
{
    AXIMM srcImgBuf0_0;
    AXIMM srcImgBuf1_0;
#if (MAX_OUTS>1)
    AXIMM srcImgBuf0_1;
    AXIMM srcImgBuf1_1;
#endif
#if (MAX_OUTS>2)
    AXIMM srcImgBuf0_2;
    AXIMM srcImgBuf1_2;
#endif
#if (MAX_OUTS>3)
    AXIMM srcImgBuf0_3;
    AXIMM srcImgBuf1_3;
#endif
#if (MAX_OUTS>4)
    AXIMM srcImgBuf0_4;
    AXIMM srcImgBuf1_4;
#endif
#if (MAX_OUTS>5)
    AXIMM srcImgBuf0_5;
    AXIMM srcImgBuf1_5;
#endif
#if (MAX_OUTS>6)
    AXIMM srcImgBuf0_6;
    AXIMM srcImgBuf1_6;
#endif
#if (MAX_OUTS>7)
    AXIMM srcImgBuf0_7;
    AXIMM srcImgBuf1_7;
#endif
    U8  num_outs;
    U16 HeightIn[MAX_OUTS];
    U16 HeightOut[MAX_OUTS];
    U16 WidthIn[MAX_OUTS];
    U16 WidthOut[MAX_OUTS];
    U8  InPixelFmt[MAX_OUTS];
    U8  OutPixelFmt[MAX_OUTS];
    U32 PixelRate[MAX_OUTS];
    U32 LineRate[MAX_OUTS];
    //U8  FiltIdx[MAX_OUTS];
    U16 InStride[MAX_OUTS];
    U16 OutStride[MAX_OUTS];
#if (HSC_SCALE_MODE == HSC_POLYPHASE)
	I16 mm_hfltCoeff[MAX_OUTS][HSC_PHASES][HSC_TAPS];
	I16 mm_vfltCoeff[MAX_OUTS][VSC_PHASES][VSC_TAPS];
#endif
    AXIMM  dstImgBuf0_0;
    AXIMM  dstImgBuf1_0;
#if (MAX_OUTS>1)
    AXIMM  dstImgBuf0_1;
    AXIMM  dstImgBuf1_1;
#endif
#if (MAX_OUTS>2)
    AXIMM  dstImgBuf0_2;
    AXIMM  dstImgBuf1_2;
#endif
#if (MAX_OUTS>3)
    AXIMM  dstImgBuf0_3;
    AXIMM  dstImgBuf1_3;
#endif
#if (MAX_OUTS>4)
    AXIMM  dstImgBuf0_4;
    AXIMM  dstImgBuf1_4;
#endif
#if (MAX_OUTS>5)
    AXIMM  dstImgBuf0_5;
    AXIMM  dstImgBuf1_5;
#endif
#if (MAX_OUTS>6)
    AXIMM  dstImgBuf0_6;
    AXIMM  dstImgBuf1_6;
#endif
#if (MAX_OUTS>7)
    AXIMM  dstImgBuf0_7;
    AXIMM  dstImgBuf1_7;
#endif
}HSC_HW_STRUCT_REG;

// top level function for VDMA
void AXIMMvideo2Bytes(
    AXIMM srcImg,
    AXIMM srcImg2,
    STREAM_PLANES& img,
    const U16 Height,
    const U16 WidthInBytes,
    const U16 StrideInBytes,
    const U8  VideoFormat);

void Bytes2MultiPixStream(
    STREAM_PLANES& bytes,
    HSC_STREAM_MULTIPIX& img,
    const U16 Height,
    const U16 Width,
    const U16 WidthInBytes,
    const U16 StrideInBytes,
    const U8  VideoFormat);

void MultiPixStream2Bytes(
    HSC_STREAM_MULTIPIX& StrmMPix,
    STREAM_PLANES& bytes,
    U16 Height,
    U16 WidthInPix,
    U16 WidthInBytes,
    U16 StrideInBytes,
    U8 VideoFormat);

void Bytes2AXIMMvideo(
    STREAM_PLANES& bytes,
    AXIMM dstImg,
    AXIMM dstImg2,
    U16 Height,
    U16 WidthInBytes,
    U16 StrideInBytes,
    U8 VideoFormat);

// top level function for v_vresampler
void v_vcresampler(VSC_STREAM_MULTIPIX& srcImg,
                   U16 height,
                   U16 width,
                   U8 inColorMode,
                   bool bPassThru,
                   VSC_STREAM_MULTIPIX& outImg);


// top level function for v_hresampler
void v_hcresampler(HSC_STREAM_MULTIPIX& srcImg,
                   U16 height,
                   U16 width,
                   U8 inColorMode,
                   bool bPassThru,
                   HSC_STREAM_MULTIPIX& outImg);

// top level funtion for hscaler
void v_hscaler  (HSC_STREAM_MULTIPIX& stream_in,
                 U16 Height,
                 U16 WidthIn,
                 U16 WidthOut,
                 U32 PixelRate,
                 U8  ColorMode,
#if (HSC_SCALE_MODE == HSC_POLYPHASE)
                 I16 hfltCoeff[HSC_PHASES][HSC_TAPS],
#endif
                 HSC_PHASE_CTRL PhasesH[HSC_MAX_WIDTH/HSC_SAMPLES_PER_CLOCK],
                 HSC_STREAM_MULTIPIX& stream_out
                 );

// top level funtion for vscaler
void v_vscaler  (HSC_STREAM_MULTIPIX& stream_in,
                 U16 HeightIn,
                 U16 WidthIn,
                 U16 HeightOut,
                 U32 LineRate,
#if  (VSC_SCALE_MODE == VSC_POLYPHASE)
                 I16 vfltCoeff[VSC_PHASES][VSC_TAPS],
#endif
                 HSC_STREAM_MULTIPIX& stream_out
                 );

void v_csc (HSC_STREAM_MULTIPIX& srcImg,
			U16 height,
			U16 width,
			U8 colorMode,
			bool bPassThru,
			HSC_STREAM_MULTIPIX& outImg);

// top level function for HW synthesis
extern 
void v_multi_scaler (
    AXIMM srcImgBuf0_0,
    AXIMM srcImgBuf1_0
#if (MAX_OUTS>1)
    ,AXIMM srcImgBuf0_1,
    AXIMM srcImgBuf1_1
#endif
#if (MAX_OUTS>2)
    ,AXIMM srcImgBuf0_2,
    AXIMM srcImgBuf1_2
#endif
#if (MAX_OUTS>3)
    ,AXIMM srcImgBuf0_3,
    AXIMM srcImgBuf1_3
#endif
#if (MAX_OUTS>4)
    ,AXIMM srcImgBuf0_4,
    AXIMM srcImgBuf1_4
#endif
#if (MAX_OUTS>5)
    ,AXIMM srcImgBuf0_5,
    AXIMM srcImgBuf1_5
#endif
#if (MAX_OUTS>6)
    ,AXIMM srcImgBuf0_6,
    AXIMM srcImgBuf1_6
#endif
#if (MAX_OUTS>7)
    ,AXIMM srcImgBuf0_7,
    AXIMM srcImgBuf1_7
#endif
    ,U8  num_outs,
    U16 HeightIn[MAX_OUTS],
    U16 HeightOut[MAX_OUTS],
    U16 WidthIn[MAX_OUTS],
    U16 WidthOut[MAX_OUTS],
    U8  InPixelFmt[MAX_OUTS],
    U8  OutPixelFmt[MAX_OUTS],
    U32 PixelRate[MAX_OUTS],
    U32 LineRate[MAX_OUTS],
    //U8  FiltIdx[MAX_OUTS],
    U16 InStride[MAX_OUTS],
    U16 OutStride[MAX_OUTS]
#if (HSC_SCALE_MODE == HSC_POLYPHASE)
	,I16 mm_hfltCoeff[MAX_OUTS][HSC_PHASES][HSC_TAPS],
	I16 mm_vfltCoeff[MAX_OUTS][VSC_PHASES][VSC_TAPS]
#endif
    ,AXIMM  dstImgBuf0_0,
    AXIMM  dstImgBuf1_0
#if (MAX_OUTS>1)
    ,AXIMM  dstImgBuf0_1,
    AXIMM  dstImgBuf1_1
#endif
#if (MAX_OUTS>2)
    ,AXIMM  dstImgBuf0_2,
    AXIMM  dstImgBuf1_2
#endif
#if (MAX_OUTS>3)
    ,AXIMM  dstImgBuf0_3,
    AXIMM  dstImgBuf1_3
#endif
#if (MAX_OUTS>4)
    ,AXIMM  dstImgBuf0_4,
    AXIMM  dstImgBuf1_4
#endif
#if (MAX_OUTS>5)
    ,AXIMM  dstImgBuf0_5,
    AXIMM  dstImgBuf1_5
#endif
#if (MAX_OUTS>6)
    ,AXIMM  dstImgBuf0_6,
    AXIMM  dstImgBuf1_6
#endif
#if (MAX_OUTS>7)
    ,AXIMM  dstImgBuf0_7,
    AXIMM  dstImgBuf1_7
#endif
);

#endif
