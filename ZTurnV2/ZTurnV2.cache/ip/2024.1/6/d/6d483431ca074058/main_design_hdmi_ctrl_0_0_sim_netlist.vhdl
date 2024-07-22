-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Jul 22 09:16:37 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ main_design_hdmi_ctrl_0_0_sim_netlist.vhdl
-- Design      : main_design_hdmi_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S00_AXIS is
  port (
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S00_AXIS is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^s00_axis_tready\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair0";
begin
  s00_axis_tready <= \^s00_axis_tready\;
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^s00_axis_tready\,
      I2 => writes_done,
      I3 => s00_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^s00_axis_tready\,
      R => '0'
    );
writes_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => writes_done,
      I1 => s00_axis_tvalid,
      I2 => \^s00_axis_tready\,
      I3 => s00_axis_tlast,
      I4 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S01_AXIS is
  port (
    s01_axis_tready : out STD_LOGIC;
    s01_axis_aclk : in STD_LOGIC;
    s01_axis_tvalid : in STD_LOGIC;
    s01_axis_aresetn : in STD_LOGIC;
    s01_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S01_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S01_AXIS is
  signal \mst_exec_state_i_1__0_n_0\ : STD_LOGIC;
  signal \^s01_axis_tready\ : STD_LOGIC;
  signal \writes_done_i_1__0_n_0\ : STD_LOGIC;
  signal writes_done_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mst_exec_state_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \writes_done_i_1__0\ : label is "soft_lutpair1";
begin
  s01_axis_tready <= \^s01_axis_tready\;
\mst_exec_state_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s01_axis_tvalid,
      I1 => \^s01_axis_tready\,
      I2 => writes_done_reg_n_0,
      I3 => s01_axis_aresetn,
      O => \mst_exec_state_i_1__0_n_0\
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s01_axis_aclk,
      CE => '1',
      D => \mst_exec_state_i_1__0_n_0\,
      Q => \^s01_axis_tready\,
      R => '0'
    );
\writes_done_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => writes_done_reg_n_0,
      I1 => s01_axis_tvalid,
      I2 => \^s01_axis_tready\,
      I3 => s01_axis_tlast,
      I4 => s01_axis_aresetn,
      O => \writes_done_i_1__0_n_0\
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s01_axis_aclk,
      CE => '1',
      D => \writes_done_i_1__0_n_0\,
      Q => writes_done_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl is
  port (
    hdmi_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axis_tready : out STD_LOGIC;
    s01_axis_tready : out STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s01_axis_tvalid : in STD_LOGIC;
    s01_axis_aresetn : in STD_LOGIC;
    s01_axis_tlast : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s01_axis_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl is
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \red_reg[4]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \red_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \red_reg[4]\ : label is "VCC:GE GND:CLR";
begin
hdmi_ctrl_slave_stream_v1_0_S00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S00_AXIS
     port map (
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
hdmi_ctrl_slave_stream_v1_0_S01_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl_slave_stream_v1_0_S01_AXIS
     port map (
      s01_axis_aclk => s01_axis_aclk,
      s01_axis_aresetn => s01_axis_aresetn,
      s01_axis_tlast => s01_axis_tlast,
      s01_axis_tready => s01_axis_tready,
      s01_axis_tvalid => s01_axis_tvalid
    );
\red_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => s00_axis_aresetn,
      G => s00_axis_aresetn,
      GE => '1',
      Q => hdmi_data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    hdmi_pclk : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_vsync : out STD_LOGIC;
    hdmi_hsync : out STD_LOGIC;
    hdmi_de : out STD_LOGIC;
    hdmi_int : inout STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s01_axis_aclk : in STD_LOGIC;
    s01_axis_aresetn : in STD_LOGIC;
    s01_axis_tready : out STD_LOGIC;
    s01_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axis_tlast : in STD_LOGIC;
    s01_axis_tvalid : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "main_design_hdmi_ctrl_0_0,hdmi_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hdmi_ctrl,Vivado 2024.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^hdmi_data\ : STD_LOGIC_VECTOR ( 14 to 14 );
  signal \^s00_axis_aclk\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of hdmi_de : signal is "xilinx.com:interface:hdmi:1.0 HDMI DE";
  attribute x_interface_info of hdmi_hsync : signal is "xilinx.com:interface:hdmi:1.0 HDMI HSYNC";
  attribute x_interface_info of hdmi_pclk : signal is "xilinx.com:interface:hdmi:1.0 HDMI CLK";
  attribute x_interface_info of hdmi_vsync : signal is "xilinx.com:interface:hdmi:1.0 HDMI VSYNC";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of s01_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S01_AXIS_CLK CLK";
  attribute x_interface_parameter of s01_axis_aclk : signal is "XIL_INTERFACENAME S01_AXIS_CLK, ASSOCIATED_BUSIF S01_AXIS, ASSOCIATED_RESET s01_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s01_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S01_AXIS_RST RST";
  attribute x_interface_parameter of s01_axis_aresetn : signal is "XIL_INTERFACENAME S01_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s01_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S01_AXIS TLAST";
  attribute x_interface_info of s01_axis_tready : signal is "xilinx.com:interface:axis:1.0 S01_AXIS TREADY";
  attribute x_interface_parameter of s01_axis_tready : signal is "XIL_INTERFACENAME S01_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s01_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S01_AXIS TVALID";
  attribute x_interface_info of hdmi_data : signal is "xilinx.com:interface:hdmi:1.0 HDMI DATA";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
  attribute x_interface_info of s01_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S01_AXIS TDATA";
  attribute x_interface_info of s01_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S01_AXIS TSTRB";
begin
  \^s00_axis_aclk\ <= s00_axis_aclk;
  hdmi_data(15) <= \^hdmi_data\(14);
  hdmi_data(14) <= \^hdmi_data\(14);
  hdmi_data(13) <= \^hdmi_data\(14);
  hdmi_data(12) <= \^hdmi_data\(14);
  hdmi_data(11) <= \^hdmi_data\(14);
  hdmi_data(10) <= \^hdmi_data\(14);
  hdmi_data(9) <= \^hdmi_data\(14);
  hdmi_data(8) <= \^hdmi_data\(14);
  hdmi_data(7) <= \^hdmi_data\(14);
  hdmi_data(6) <= \^hdmi_data\(14);
  hdmi_data(5) <= \^hdmi_data\(14);
  hdmi_data(4) <= \^hdmi_data\(14);
  hdmi_data(3) <= \^hdmi_data\(14);
  hdmi_data(2) <= \^hdmi_data\(14);
  hdmi_data(1) <= \^hdmi_data\(14);
  hdmi_data(0) <= \^hdmi_data\(14);
  hdmi_de <= \<const0>\;
  hdmi_hsync <= \<const0>\;
  hdmi_pclk <= \^s00_axis_aclk\;
  hdmi_vsync <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_ctrl
     port map (
      hdmi_data(0) => \^hdmi_data\(14),
      s00_axis_aclk => \^s00_axis_aclk\,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      s01_axis_aclk => s01_axis_aclk,
      s01_axis_aresetn => s01_axis_aresetn,
      s01_axis_tlast => s01_axis_tlast,
      s01_axis_tready => s01_axis_tready,
      s01_axis_tvalid => s01_axis_tvalid
    );
end STRUCTURE;
