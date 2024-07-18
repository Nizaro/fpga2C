// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module main_design_v_mix_0_0_CTRL_s_axi
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
    output wire [15:0]                   width,
    output wire [15:0]                   height,
    output wire [15:0]                   video_format,
    output wire [15:0]                   background_Y_R,
    output wire [15:0]                   background_U_G,
    output wire [15:0]                   background_V_B,
    output wire [31:0]                   layerEnable,
    output wire [15:0]                   layerAlpha_1,
    output wire [15:0]                   layerStartX_1,
    output wire [15:0]                   layerStartY_1,
    output wire [15:0]                   layerWidth_1,
    output wire [15:0]                   layerStride_1,
    output wire [15:0]                   layerHeight_1,
    output wire [7:0]                    layerScaleFactor_1,
    output wire [15:0]                   layerAlpha_2,
    output wire [15:0]                   layerStartX_2,
    output wire [15:0]                   layerStartY_2,
    output wire [15:0]                   layerWidth_2,
    output wire [15:0]                   layerStride_2,
    output wire [15:0]                   layerHeight_2,
    output wire [7:0]                    layerScaleFactor_2,
    output wire [15:0]                   reserve,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
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
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
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
    reg  [15:0]                   int_layerAlpha_1 = 'b0;
    reg  [15:0]                   int_layerStartX_1 = 'b0;
    reg  [15:0]                   int_layerStartY_1 = 'b0;
    reg  [15:0]                   int_layerWidth_1 = 'b0;
    reg  [15:0]                   int_layerStride_1 = 'b0;
    reg  [15:0]                   int_layerHeight_1 = 'b0;
    reg  [7:0]                    int_layerScaleFactor_1 = 'b0;
    reg  [15:0]                   int_layerAlpha_2 = 'b0;
    reg  [15:0]                   int_layerStartX_2 = 'b0;
    reg  [15:0]                   int_layerStartY_2 = 'b0;
    reg  [15:0]                   int_layerWidth_2 = 'b0;
    reg  [15:0]                   int_layerStride_2 = 'b0;
    reg  [15:0]                   int_layerHeight_2 = 'b0;
    reg  [7:0]                    int_layerScaleFactor_2 = 'b0;
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
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
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
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
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
                ADDR_RESERVE_DATA_0: begin
                    rdata <= int_reserve[15:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt          = int_interrupt;
assign ap_start           = int_ap_start;
assign task_ap_done       = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready      = ap_ready && !int_auto_restart;
assign auto_restart_done  = auto_restart_status && (ap_idle && !int_ap_idle);
assign width              = int_width;
assign height             = int_height;
assign video_format       = int_video_format;
assign background_Y_R     = int_background_Y_R;
assign background_U_G     = int_background_U_G;
assign background_V_B     = int_background_V_B;
assign layerEnable        = int_layerEnable;
assign layerAlpha_1       = int_layerAlpha_1;
assign layerStartX_1      = int_layerStartX_1;
assign layerStartY_1      = int_layerStartY_1;
assign layerWidth_1       = int_layerWidth_1;
assign layerStride_1      = int_layerStride_1;
assign layerHeight_1      = int_layerHeight_1;
assign layerScaleFactor_1 = int_layerScaleFactor_1;
assign layerAlpha_2       = int_layerAlpha_2;
assign layerStartX_2      = int_layerStartX_2;
assign layerStartY_2      = int_layerStartY_2;
assign layerWidth_2       = int_layerWidth_2;
assign layerStride_2      = int_layerStride_2;
assign layerHeight_2      = int_layerHeight_2;
assign layerScaleFactor_2 = int_layerScaleFactor_2;
assign reserve            = int_reserve;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

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
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
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
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
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

// int_reserve[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_reserve[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RESERVE_DATA_0)
            int_reserve[15:0] <= (WDATA[31:0] & wmask) | (int_reserve[15:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
