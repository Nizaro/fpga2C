-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
-- Tool Version Limit: 2024.05
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity main_design_v_mix_0_0_CTRL_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 12;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    width                 :out  STD_LOGIC_VECTOR(15 downto 0);
    height                :out  STD_LOGIC_VECTOR(15 downto 0);
    video_format          :out  STD_LOGIC_VECTOR(15 downto 0);
    background_Y_R        :out  STD_LOGIC_VECTOR(15 downto 0);
    background_U_G        :out  STD_LOGIC_VECTOR(15 downto 0);
    background_V_B        :out  STD_LOGIC_VECTOR(15 downto 0);
    layerEnable           :out  STD_LOGIC_VECTOR(31 downto 0);
    layerAlpha_1          :out  STD_LOGIC_VECTOR(15 downto 0);
    layerStartX_1         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerStartY_1         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerWidth_1          :out  STD_LOGIC_VECTOR(15 downto 0);
    layerStride_1         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerHeight_1         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerScaleFactor_1    :out  STD_LOGIC_VECTOR(7 downto 0);
    layerAlpha_2          :out  STD_LOGIC_VECTOR(15 downto 0);
    layerStartX_2         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerStartY_2         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerWidth_2          :out  STD_LOGIC_VECTOR(15 downto 0);
    layerStride_2         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerHeight_2         :out  STD_LOGIC_VECTOR(15 downto 0);
    layerScaleFactor_2    :out  STD_LOGIC_VECTOR(7 downto 0);
    reserve               :out  STD_LOGIC_VECTOR(15 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity main_design_v_mix_0_0_CTRL_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_hs
--
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read/COR)
--         bit 7  - auto_restart (Read/Write)
--         bit 9  - interrupt (Read)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0 - enable ap_done interrupt (Read/Write)
--         bit 1 - enable ap_ready interrupt (Read/Write)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0 - ap_done (Read/TOW)
--         bit 1 - ap_ready (Read/TOW)
--         others - reserved
-- 0x010 : Data signal of width
--         bit 15~0 - width[15:0] (Read/Write)
--         others   - reserved
-- 0x014 : reserved
-- 0x018 : Data signal of height
--         bit 15~0 - height[15:0] (Read/Write)
--         others   - reserved
-- 0x01c : reserved
-- 0x020 : Data signal of video_format
--         bit 15~0 - video_format[15:0] (Read/Write)
--         others   - reserved
-- 0x024 : reserved
-- 0x028 : Data signal of background_Y_R
--         bit 15~0 - background_Y_R[15:0] (Read/Write)
--         others   - reserved
-- 0x02c : reserved
-- 0x030 : Data signal of background_U_G
--         bit 15~0 - background_U_G[15:0] (Read/Write)
--         others   - reserved
-- 0x034 : reserved
-- 0x038 : Data signal of background_V_B
--         bit 15~0 - background_V_B[15:0] (Read/Write)
--         others   - reserved
-- 0x03c : reserved
-- 0x040 : Data signal of layerEnable
--         bit 31~0 - layerEnable[31:0] (Read/Write)
-- 0x044 : reserved
-- 0x200 : Data signal of layerAlpha_1
--         bit 15~0 - layerAlpha_1[15:0] (Read/Write)
--         others   - reserved
-- 0x204 : reserved
-- 0x208 : Data signal of layerStartX_1
--         bit 15~0 - layerStartX_1[15:0] (Read/Write)
--         others   - reserved
-- 0x20c : reserved
-- 0x210 : Data signal of layerStartY_1
--         bit 15~0 - layerStartY_1[15:0] (Read/Write)
--         others   - reserved
-- 0x214 : reserved
-- 0x218 : Data signal of layerWidth_1
--         bit 15~0 - layerWidth_1[15:0] (Read/Write)
--         others   - reserved
-- 0x21c : reserved
-- 0x220 : Data signal of layerStride_1
--         bit 15~0 - layerStride_1[15:0] (Read/Write)
--         others   - reserved
-- 0x224 : reserved
-- 0x228 : Data signal of layerHeight_1
--         bit 15~0 - layerHeight_1[15:0] (Read/Write)
--         others   - reserved
-- 0x22c : reserved
-- 0x230 : Data signal of layerScaleFactor_1
--         bit 7~0 - layerScaleFactor_1[7:0] (Read/Write)
--         others  - reserved
-- 0x234 : reserved
-- 0x300 : Data signal of layerAlpha_2
--         bit 15~0 - layerAlpha_2[15:0] (Read/Write)
--         others   - reserved
-- 0x304 : reserved
-- 0x308 : Data signal of layerStartX_2
--         bit 15~0 - layerStartX_2[15:0] (Read/Write)
--         others   - reserved
-- 0x30c : reserved
-- 0x310 : Data signal of layerStartY_2
--         bit 15~0 - layerStartY_2[15:0] (Read/Write)
--         others   - reserved
-- 0x314 : reserved
-- 0x318 : Data signal of layerWidth_2
--         bit 15~0 - layerWidth_2[15:0] (Read/Write)
--         others   - reserved
-- 0x31c : reserved
-- 0x320 : Data signal of layerStride_2
--         bit 15~0 - layerStride_2[15:0] (Read/Write)
--         others   - reserved
-- 0x324 : reserved
-- 0x328 : Data signal of layerHeight_2
--         bit 15~0 - layerHeight_2[15:0] (Read/Write)
--         others   - reserved
-- 0x32c : reserved
-- 0x330 : Data signal of layerScaleFactor_2
--         bit 7~0 - layerScaleFactor_2[7:0] (Read/Write)
--         others  - reserved
-- 0x334 : reserved
-- 0xff0 : Data signal of reserve
--         bit 15~0 - reserve[15:0] (Read/Write)
--         others   - reserved
-- 0xff4 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of main_design_v_mix_0_0_CTRL_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                   : INTEGER := 16#000#;
    constant ADDR_GIE                       : INTEGER := 16#004#;
    constant ADDR_IER                       : INTEGER := 16#008#;
    constant ADDR_ISR                       : INTEGER := 16#00c#;
    constant ADDR_WIDTH_DATA_0              : INTEGER := 16#010#;
    constant ADDR_WIDTH_CTRL                : INTEGER := 16#014#;
    constant ADDR_HEIGHT_DATA_0             : INTEGER := 16#018#;
    constant ADDR_HEIGHT_CTRL               : INTEGER := 16#01c#;
    constant ADDR_VIDEO_FORMAT_DATA_0       : INTEGER := 16#020#;
    constant ADDR_VIDEO_FORMAT_CTRL         : INTEGER := 16#024#;
    constant ADDR_BACKGROUND_Y_R_DATA_0     : INTEGER := 16#028#;
    constant ADDR_BACKGROUND_Y_R_CTRL       : INTEGER := 16#02c#;
    constant ADDR_BACKGROUND_U_G_DATA_0     : INTEGER := 16#030#;
    constant ADDR_BACKGROUND_U_G_CTRL       : INTEGER := 16#034#;
    constant ADDR_BACKGROUND_V_B_DATA_0     : INTEGER := 16#038#;
    constant ADDR_BACKGROUND_V_B_CTRL       : INTEGER := 16#03c#;
    constant ADDR_LAYERENABLE_DATA_0        : INTEGER := 16#040#;
    constant ADDR_LAYERENABLE_CTRL          : INTEGER := 16#044#;
    constant ADDR_LAYERALPHA_1_DATA_0       : INTEGER := 16#200#;
    constant ADDR_LAYERALPHA_1_CTRL         : INTEGER := 16#204#;
    constant ADDR_LAYERSTARTX_1_DATA_0      : INTEGER := 16#208#;
    constant ADDR_LAYERSTARTX_1_CTRL        : INTEGER := 16#20c#;
    constant ADDR_LAYERSTARTY_1_DATA_0      : INTEGER := 16#210#;
    constant ADDR_LAYERSTARTY_1_CTRL        : INTEGER := 16#214#;
    constant ADDR_LAYERWIDTH_1_DATA_0       : INTEGER := 16#218#;
    constant ADDR_LAYERWIDTH_1_CTRL         : INTEGER := 16#21c#;
    constant ADDR_LAYERSTRIDE_1_DATA_0      : INTEGER := 16#220#;
    constant ADDR_LAYERSTRIDE_1_CTRL        : INTEGER := 16#224#;
    constant ADDR_LAYERHEIGHT_1_DATA_0      : INTEGER := 16#228#;
    constant ADDR_LAYERHEIGHT_1_CTRL        : INTEGER := 16#22c#;
    constant ADDR_LAYERSCALEFACTOR_1_DATA_0 : INTEGER := 16#230#;
    constant ADDR_LAYERSCALEFACTOR_1_CTRL   : INTEGER := 16#234#;
    constant ADDR_LAYERALPHA_2_DATA_0       : INTEGER := 16#300#;
    constant ADDR_LAYERALPHA_2_CTRL         : INTEGER := 16#304#;
    constant ADDR_LAYERSTARTX_2_DATA_0      : INTEGER := 16#308#;
    constant ADDR_LAYERSTARTX_2_CTRL        : INTEGER := 16#30c#;
    constant ADDR_LAYERSTARTY_2_DATA_0      : INTEGER := 16#310#;
    constant ADDR_LAYERSTARTY_2_CTRL        : INTEGER := 16#314#;
    constant ADDR_LAYERWIDTH_2_DATA_0       : INTEGER := 16#318#;
    constant ADDR_LAYERWIDTH_2_CTRL         : INTEGER := 16#31c#;
    constant ADDR_LAYERSTRIDE_2_DATA_0      : INTEGER := 16#320#;
    constant ADDR_LAYERSTRIDE_2_CTRL        : INTEGER := 16#324#;
    constant ADDR_LAYERHEIGHT_2_DATA_0      : INTEGER := 16#328#;
    constant ADDR_LAYERHEIGHT_2_CTRL        : INTEGER := 16#32c#;
    constant ADDR_LAYERSCALEFACTOR_2_DATA_0 : INTEGER := 16#330#;
    constant ADDR_LAYERSCALEFACTOR_2_CTRL   : INTEGER := 16#334#;
    constant ADDR_RESERVE_DATA_0            : INTEGER := 16#ff0#;
    constant ADDR_RESERVE_CTRL              : INTEGER := 16#ff4#;
    constant ADDR_BITS         : INTEGER := 12;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_width           : UNSIGNED(15 downto 0) := (others => '0');
    signal int_height          : UNSIGNED(15 downto 0) := (others => '0');
    signal int_video_format    : UNSIGNED(15 downto 0) := (others => '0');
    signal int_background_Y_R  : UNSIGNED(15 downto 0) := (others => '0');
    signal int_background_U_G  : UNSIGNED(15 downto 0) := (others => '0');
    signal int_background_V_B  : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerEnable     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_layerAlpha_1    : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerStartX_1   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerStartY_1   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerWidth_1    : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerStride_1   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerHeight_1   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerScaleFactor_1 : UNSIGNED(7 downto 0) := (others => '0');
    signal int_layerAlpha_2    : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerStartX_2   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerStartY_2   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerWidth_2    : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerStride_2   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerHeight_2   : UNSIGNED(15 downto 0) := (others => '0');
    signal int_layerScaleFactor_2 : UNSIGNED(7 downto 0) := (others => '0');
    signal int_reserve         : UNSIGNED(15 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_WIDTH_DATA_0 =>
                        rdata_data <= RESIZE(int_width(15 downto 0), 32);
                    when ADDR_HEIGHT_DATA_0 =>
                        rdata_data <= RESIZE(int_height(15 downto 0), 32);
                    when ADDR_VIDEO_FORMAT_DATA_0 =>
                        rdata_data <= RESIZE(int_video_format(15 downto 0), 32);
                    when ADDR_BACKGROUND_Y_R_DATA_0 =>
                        rdata_data <= RESIZE(int_background_Y_R(15 downto 0), 32);
                    when ADDR_BACKGROUND_U_G_DATA_0 =>
                        rdata_data <= RESIZE(int_background_U_G(15 downto 0), 32);
                    when ADDR_BACKGROUND_V_B_DATA_0 =>
                        rdata_data <= RESIZE(int_background_V_B(15 downto 0), 32);
                    when ADDR_LAYERENABLE_DATA_0 =>
                        rdata_data <= RESIZE(int_layerEnable(31 downto 0), 32);
                    when ADDR_LAYERALPHA_1_DATA_0 =>
                        rdata_data <= RESIZE(int_layerAlpha_1(15 downto 0), 32);
                    when ADDR_LAYERSTARTX_1_DATA_0 =>
                        rdata_data <= RESIZE(int_layerStartX_1(15 downto 0), 32);
                    when ADDR_LAYERSTARTY_1_DATA_0 =>
                        rdata_data <= RESIZE(int_layerStartY_1(15 downto 0), 32);
                    when ADDR_LAYERWIDTH_1_DATA_0 =>
                        rdata_data <= RESIZE(int_layerWidth_1(15 downto 0), 32);
                    when ADDR_LAYERSTRIDE_1_DATA_0 =>
                        rdata_data <= RESIZE(int_layerStride_1(15 downto 0), 32);
                    when ADDR_LAYERHEIGHT_1_DATA_0 =>
                        rdata_data <= RESIZE(int_layerHeight_1(15 downto 0), 32);
                    when ADDR_LAYERSCALEFACTOR_1_DATA_0 =>
                        rdata_data <= RESIZE(int_layerScaleFactor_1(7 downto 0), 32);
                    when ADDR_LAYERALPHA_2_DATA_0 =>
                        rdata_data <= RESIZE(int_layerAlpha_2(15 downto 0), 32);
                    when ADDR_LAYERSTARTX_2_DATA_0 =>
                        rdata_data <= RESIZE(int_layerStartX_2(15 downto 0), 32);
                    when ADDR_LAYERSTARTY_2_DATA_0 =>
                        rdata_data <= RESIZE(int_layerStartY_2(15 downto 0), 32);
                    when ADDR_LAYERWIDTH_2_DATA_0 =>
                        rdata_data <= RESIZE(int_layerWidth_2(15 downto 0), 32);
                    when ADDR_LAYERSTRIDE_2_DATA_0 =>
                        rdata_data <= RESIZE(int_layerStride_2(15 downto 0), 32);
                    when ADDR_LAYERHEIGHT_2_DATA_0 =>
                        rdata_data <= RESIZE(int_layerHeight_2(15 downto 0), 32);
                    when ADDR_LAYERSCALEFACTOR_2_DATA_0 =>
                        rdata_data <= RESIZE(int_layerScaleFactor_2(7 downto 0), 32);
                    when ADDR_RESERVE_DATA_0 =>
                        rdata_data <= RESIZE(int_reserve(15 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    width                <= STD_LOGIC_VECTOR(int_width);
    height               <= STD_LOGIC_VECTOR(int_height);
    video_format         <= STD_LOGIC_VECTOR(int_video_format);
    background_Y_R       <= STD_LOGIC_VECTOR(int_background_Y_R);
    background_U_G       <= STD_LOGIC_VECTOR(int_background_U_G);
    background_V_B       <= STD_LOGIC_VECTOR(int_background_V_B);
    layerEnable          <= STD_LOGIC_VECTOR(int_layerEnable);
    layerAlpha_1         <= STD_LOGIC_VECTOR(int_layerAlpha_1);
    layerStartX_1        <= STD_LOGIC_VECTOR(int_layerStartX_1);
    layerStartY_1        <= STD_LOGIC_VECTOR(int_layerStartY_1);
    layerWidth_1         <= STD_LOGIC_VECTOR(int_layerWidth_1);
    layerStride_1        <= STD_LOGIC_VECTOR(int_layerStride_1);
    layerHeight_1        <= STD_LOGIC_VECTOR(int_layerHeight_1);
    layerScaleFactor_1   <= STD_LOGIC_VECTOR(int_layerScaleFactor_1);
    layerAlpha_2         <= STD_LOGIC_VECTOR(int_layerAlpha_2);
    layerStartX_2        <= STD_LOGIC_VECTOR(int_layerStartX_2);
    layerStartY_2        <= STD_LOGIC_VECTOR(int_layerStartY_2);
    layerWidth_2         <= STD_LOGIC_VECTOR(int_layerWidth_2);
    layerStride_2        <= STD_LOGIC_VECTOR(int_layerStride_2);
    layerHeight_2        <= STD_LOGIC_VECTOR(int_layerHeight_2);
    layerScaleFactor_2   <= STD_LOGIC_VECTOR(int_layerScaleFactor_2);
    reserve              <= STD_LOGIC_VECTOR(int_reserve);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_width(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WIDTH_DATA_0) then
                    int_width(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_width(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_height(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_HEIGHT_DATA_0) then
                    int_height(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_height(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_video_format(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VIDEO_FORMAT_DATA_0) then
                    int_video_format(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_video_format(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_background_Y_R(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BACKGROUND_Y_R_DATA_0) then
                    int_background_Y_R(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_background_Y_R(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_background_U_G(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BACKGROUND_U_G_DATA_0) then
                    int_background_U_G(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_background_U_G(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_background_V_B(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BACKGROUND_V_B_DATA_0) then
                    int_background_V_B(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_background_V_B(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerEnable(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERENABLE_DATA_0) then
                    int_layerEnable(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_layerEnable(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerAlpha_1(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERALPHA_1_DATA_0) then
                    int_layerAlpha_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerAlpha_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerStartX_1(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSTARTX_1_DATA_0) then
                    int_layerStartX_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerStartX_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerStartY_1(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSTARTY_1_DATA_0) then
                    int_layerStartY_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerStartY_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerWidth_1(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERWIDTH_1_DATA_0) then
                    int_layerWidth_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerWidth_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerStride_1(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSTRIDE_1_DATA_0) then
                    int_layerStride_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerStride_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerHeight_1(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERHEIGHT_1_DATA_0) then
                    int_layerHeight_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerHeight_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerScaleFactor_1(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSCALEFACTOR_1_DATA_0) then
                    int_layerScaleFactor_1(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_layerScaleFactor_1(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerAlpha_2(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERALPHA_2_DATA_0) then
                    int_layerAlpha_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerAlpha_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerStartX_2(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSTARTX_2_DATA_0) then
                    int_layerStartX_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerStartX_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerStartY_2(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSTARTY_2_DATA_0) then
                    int_layerStartY_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerStartY_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerWidth_2(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERWIDTH_2_DATA_0) then
                    int_layerWidth_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerWidth_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerStride_2(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSTRIDE_2_DATA_0) then
                    int_layerStride_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerStride_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerHeight_2(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERHEIGHT_2_DATA_0) then
                    int_layerHeight_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_layerHeight_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_layerScaleFactor_2(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAYERSCALEFACTOR_2_DATA_0) then
                    int_layerScaleFactor_2(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_layerScaleFactor_2(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_reserve(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESERVE_DATA_0) then
                    int_reserve(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_reserve(15 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
