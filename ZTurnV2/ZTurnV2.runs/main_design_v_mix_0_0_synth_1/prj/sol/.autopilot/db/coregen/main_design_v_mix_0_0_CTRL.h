// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
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
// 0xff0 : Data signal of reserve
//         bit 15~0 - reserve[15:0] (Read/Write)
//         others   - reserved
// 0xff4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL                 0x000
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_GIE                     0x004
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_IER                     0x008
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_ISR                     0x00c
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_WIDTH_DATA              0x010
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_WIDTH_DATA              16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_HEIGHT_DATA             0x018
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_HEIGHT_DATA             16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA       0x020
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_VIDEO_FORMAT_DATA       16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_Y_R_DATA     0x028
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_BACKGROUND_Y_R_DATA     16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_U_G_DATA     0x030
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_BACKGROUND_U_G_DATA     16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_V_B_DATA     0x038
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_BACKGROUND_V_B_DATA     16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERENABLE_DATA        0x040
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERENABLE_DATA        32
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERALPHA_1_DATA       0x200
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERALPHA_1_DATA       16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTX_1_DATA      0x208
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSTARTX_1_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTY_1_DATA      0x210
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSTARTY_1_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERWIDTH_1_DATA       0x218
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERWIDTH_1_DATA       16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTRIDE_1_DATA      0x220
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSTRIDE_1_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERHEIGHT_1_DATA      0x228
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERHEIGHT_1_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSCALEFACTOR_1_DATA 0x230
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSCALEFACTOR_1_DATA 8
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERALPHA_2_DATA       0x300
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERALPHA_2_DATA       16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTX_2_DATA      0x308
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSTARTX_2_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTY_2_DATA      0x310
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSTARTY_2_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERWIDTH_2_DATA       0x318
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERWIDTH_2_DATA       16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTRIDE_2_DATA      0x320
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSTRIDE_2_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERHEIGHT_2_DATA      0x328
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERHEIGHT_2_DATA      16
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSCALEFACTOR_2_DATA 0x330
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_LAYERSCALEFACTOR_2_DATA 8
#define MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_RESERVE_DATA            0xff0
#define MAIN_DESIGN_V_MIX_0_0_CTRL_BITS_RESERVE_DATA            16
