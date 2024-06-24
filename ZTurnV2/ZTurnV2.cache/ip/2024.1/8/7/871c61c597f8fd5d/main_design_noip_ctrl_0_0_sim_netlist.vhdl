-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Jun 24 11:22:29 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ main_design_noip_ctrl_0_0_sim_netlist.vhdl
-- Design      : main_design_noip_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    axi_bvalid_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    \sw_enable_n_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sw_enable_n_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_StartupState_reg[2]\ : out STD_LOGIC;
    \slv_reg0_reg[3]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_SPIState_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_SPIState_reg[3]\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    sw_enable_n : in STD_LOGIC_VECTOR ( 0 to 1 );
    mosi_i_4_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_SPIState_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    StartupState : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_SPIState_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_SPIState_reg[0]_2\ : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    mosi_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mosi_reg_0 : in STD_LOGIC;
    mosi_reg_1 : in STD_LOGIC;
    mosi_reg_2 : in STD_LOGIC;
    mosi_reg_3 : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    \startup_process.id_reg[0]\ : in STD_LOGIC;
    \rising_spi_process.mode_reg\ : in STD_LOGIC;
    mosi : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_SPIState[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal id : STD_LOGIC;
  signal mosi_i_10_n_0 : STD_LOGIC;
  signal mosi_i_15_n_0 : STD_LOGIC;
  signal mosi_i_16_n_0 : STD_LOGIC;
  signal mosi_i_17_n_0 : STD_LOGIC;
  signal mosi_i_18_n_0 : STD_LOGIC;
  signal mosi_i_19_n_0 : STD_LOGIC;
  signal mosi_i_20_n_0 : STD_LOGIC;
  signal mosi_i_21_n_0 : STD_LOGIC;
  signal mosi_i_22_n_0 : STD_LOGIC;
  signal mosi_i_23_n_0 : STD_LOGIC;
  signal mosi_i_24_n_0 : STD_LOGIC;
  signal mosi_i_2_n_0 : STD_LOGIC;
  signal mosi_i_3_n_0 : STD_LOGIC;
  signal mosi_i_4_n_0 : STD_LOGIC;
  signal mosi_i_9_n_0 : STD_LOGIC;
  signal mosi_reg_i_5_n_0 : STD_LOGIC;
  signal mosi_reg_i_6_n_0 : STD_LOGIC;
  signal mosi_reg_i_7_n_0 : STD_LOGIC;
  signal mosi_reg_i_8_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 24 downto 3 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal spi_addr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state_write[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rising_spi_process.mode_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ss_n[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \startup_process.id[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sw_enable_n[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sw_enable_n[1]_i_1\ : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_SPIState[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEAFFEA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg[0]_1\,
      I1 => \FSM_onehot_SPIState_reg[0]_2\,
      I2 => \FSM_onehot_SPIState_reg[0]_0\(1),
      I3 => \FSM_onehot_SPIState_reg[0]_0\(3),
      I4 => \FSM_onehot_SPIState[4]_i_4_n_0\,
      I5 => \FSM_onehot_SPIState_reg[0]_0\(0),
      O => E(0)
    );
\FSM_onehot_SPIState[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \^axi_bvalid_reg_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \FSM_onehot_SPIState[4]_i_4_n_0\
    );
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFAAFFBFFF00"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => axi_wready,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => axi_wready,
      S => \^s00_axi_aresetn_0\
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[1]\,
      R => \^s00_axi_aresetn_0\
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[2]\,
      R => \^s00_axi_aresetn_0\
    );
\FSM_sequential_StartupState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FEEEEEEE"
    )
        port map (
      I0 => StartupState(2),
      I1 => StartupState(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^axi_bvalid_reg_0\,
      I5 => StartupState(0),
      O => \FSM_sequential_StartupState_reg[2]\
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => \^s00_axi_aresetn_0\
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \^s00_axi_aresetn_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => \^s00_axi_aresetn_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => s00_axi_aresetn,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => s00_axi_aresetn,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF2AAA2A"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => s00_axi_wvalid,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I5 => axi_wready,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => \^s00_axi_aresetn_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCECFFFFFCECF000"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I1 => axi_wready,
      I2 => s00_axi_wvalid,
      I3 => axi_bvalid_i_2_n_0,
      I4 => axi_bvalid_i_3_n_0,
      I5 => \^axi_bvalid_reg_0\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F88800"
    )
        port map (
      I0 => \^axi_bvalid_reg_0\,
      I1 => s00_axi_bready,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_3_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid_reg_0\,
      R => \^s00_axi_aresetn_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \^s00_axi_aresetn_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => \^s00_axi_aresetn_0\
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFE00"
    )
        port map (
      I0 => mosi_i_2_n_0,
      I1 => mosi_i_3_n_0,
      I2 => mosi_i_4_n_0,
      I3 => \FSM_onehot_SPIState_reg[0]_0\(2),
      I4 => \FSM_onehot_SPIState_reg[0]_0\(1),
      I5 => mosi,
      O => \FSM_onehot_SPIState_reg[3]\
    );
mosi_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => mosi_i_4_0(3),
      I1 => mosi_i_23_n_0,
      I2 => mosi_i_4_0(2),
      I3 => mosi_i_24_n_0,
      O => mosi_i_10_n_0
    );
mosi_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => mosi_reg(1),
      I3 => \slv_reg0_reg_n_0_[17]\,
      I4 => mosi_reg(0),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => mosi_i_15_n_0
    );
mosi_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => mosi_reg(1),
      I3 => \slv_reg0_reg_n_0_[21]\,
      I4 => mosi_reg(0),
      I5 => \slv_reg0_reg_n_0_[20]\,
      O => mosi_i_16_n_0
    );
mosi_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => mosi_reg(1),
      I3 => \slv_reg0_reg_n_0_[25]\,
      I4 => mosi_reg(0),
      I5 => \slv_reg0_reg_n_0_[24]\,
      O => mosi_i_17_n_0
    );
mosi_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => mosi_reg(1),
      I3 => \slv_reg0_reg_n_0_[29]\,
      I4 => mosi_reg(0),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => mosi_i_18_n_0
    );
mosi_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => mosi_reg(1),
      I3 => \^q\(1),
      I4 => mosi_reg(0),
      I5 => \^q\(0),
      O => mosi_i_19_n_0
    );
mosi_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => mosi_reg_i_5_n_0,
      I1 => mosi_reg(3),
      I2 => mosi_reg_i_6_n_0,
      I3 => \FSM_onehot_SPIState_reg[0]_0\(2),
      I4 => mosi_reg(4),
      O => mosi_i_2_n_0
    );
mosi_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(3),
      I1 => spi_addr(2),
      I2 => mosi_reg(1),
      I3 => spi_addr(1),
      I4 => mosi_reg(0),
      I5 => spi_addr(0),
      O => mosi_i_20_n_0
    );
mosi_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(7),
      I1 => spi_addr(6),
      I2 => mosi_reg(1),
      I3 => spi_addr(5),
      I4 => mosi_reg(0),
      I5 => spi_addr(4),
      O => mosi_i_21_n_0
    );
mosi_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[15]\,
      I1 => \slv_reg0_reg_n_0_[14]\,
      I2 => mosi_reg(1),
      I3 => \slv_reg0_reg_n_0_[13]\,
      I4 => mosi_reg(0),
      I5 => spi_addr(8),
      O => mosi_i_22_n_0
    );
mosi_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(3),
      I1 => spi_addr(2),
      I2 => mosi_i_4_0(1),
      I3 => spi_addr(1),
      I4 => mosi_i_4_0(0),
      I5 => spi_addr(0),
      O => mosi_i_23_n_0
    );
mosi_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(7),
      I1 => spi_addr(6),
      I2 => mosi_i_4_0(1),
      I3 => spi_addr(5),
      I4 => mosi_i_4_0(0),
      I5 => spi_addr(4),
      O => mosi_i_24_n_0
    );
mosi_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => mosi_reg_i_7_n_0,
      I1 => mosi_reg(3),
      I2 => mosi_reg_i_8_n_0,
      I3 => mosi_reg(4),
      I4 => \FSM_onehot_SPIState_reg[0]_0\(2),
      O => mosi_i_3_n_0
    );
mosi_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444F44"
    )
        port map (
      I0 => mosi_i_9_n_0,
      I1 => mosi_i_10_n_0,
      I2 => mosi_reg_0,
      I3 => mosi_reg_1,
      I4 => mosi_reg_2,
      I5 => mosi_reg_3,
      O => mosi_i_4_n_0
    );
mosi_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => spi_addr(8),
      I1 => mosi_i_4_0(3),
      I2 => \FSM_onehot_SPIState_reg[0]_0\(1),
      O => mosi_i_9_n_0
    );
mosi_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_15_n_0,
      I1 => mosi_i_16_n_0,
      O => mosi_reg_i_5_n_0,
      S => mosi_reg(2)
    );
mosi_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_17_n_0,
      I1 => mosi_i_18_n_0,
      O => mosi_reg_i_6_n_0,
      S => mosi_reg(2)
    );
mosi_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_19_n_0,
      I1 => mosi_i_20_n_0,
      O => mosi_reg_i_7_n_0,
      S => mosi_reg(2)
    );
mosi_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_21_n_0,
      I1 => mosi_i_22_n_0,
      O => mosi_reg_i_8_n_0,
      S => mosi_reg(2)
    );
\rising_spi_process.mode_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0800"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg[0]_0\(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^axi_bvalid_reg_0\,
      I4 => \rising_spi_process.mode_reg\,
      O => \FSM_onehot_SPIState_reg[0]\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(8)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(16)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(24)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => axi_awaddr(3),
      I3 => s00_axi_awaddr(0),
      I4 => axi_awaddr(2),
      I5 => s00_axi_wvalid,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => \slv_reg0[31]_i_2_n_0\,
      O => p_1_in(3)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(10),
      Q => spi_addr(6),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(11),
      Q => spi_addr(7),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(12),
      Q => spi_addr(8),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(4),
      Q => spi_addr(0),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(5),
      Q => spi_addr(1),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(6),
      Q => spi_addr(2),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(7),
      Q => spi_addr(3),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(8),
      Q => spi_addr(4),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(9),
      Q => spi_addr(5),
      R => \^s00_axi_aresetn_0\
    );
\ss_n[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \slv_reg0_reg[3]_0\
    );
\startup_process.id[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => id,
      I3 => \startup_process.id_reg[0]\,
      O => \slv_reg0_reg[2]_0\
    );
\sw_enable_n[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => sw_enable_n(0),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => id,
      O => \sw_enable_n_reg[0]\
    );
\sw_enable_n[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^axi_bvalid_reg_0\,
      I3 => StartupState(1),
      I4 => StartupState(2),
      I5 => StartupState(0),
      O => id
    );
\sw_enable_n[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => sw_enable_n(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => id,
      O => \sw_enable_n_reg[1]\
    );
\vdd18_toggle[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl is
  port (
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_bvalid_reg : out STD_LOGIC;
    clk_pll_out : out STD_LOGIC_VECTOR ( 0 to 1 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    ss_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    sck : out STD_LOGIC;
    mosi : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    clk_72M_pll : in STD_LOGIC;
    clk_spi_in : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl is
  signal \FSM_onehot_SPIState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_SPIState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_SPIState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_sequential_StartupState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StartupState[2]_i_1_n_0\ : STD_LOGIC;
  signal StartupState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_ctr : STD_LOGIC;
  signal \addr_ctr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__0_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__0_n_1\ : STD_LOGIC;
  signal \addr_ctr0_carry__0_n_2\ : STD_LOGIC;
  signal \addr_ctr0_carry__0_n_3\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_n_1\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_n_2\ : STD_LOGIC;
  signal \addr_ctr0_carry__1_n_3\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_n_1\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_n_2\ : STD_LOGIC;
  signal \addr_ctr0_carry__2_n_3\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_n_1\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_n_2\ : STD_LOGIC;
  signal \addr_ctr0_carry__3_n_3\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_n_1\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_n_2\ : STD_LOGIC;
  signal \addr_ctr0_carry__4_n_3\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_n_1\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_n_2\ : STD_LOGIC;
  signal \addr_ctr0_carry__5_n_3\ : STD_LOGIC;
  signal \addr_ctr0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr0_carry__6_n_2\ : STD_LOGIC;
  signal \addr_ctr0_carry__6_n_3\ : STD_LOGIC;
  signal addr_ctr0_carry_i_1_n_0 : STD_LOGIC;
  signal addr_ctr0_carry_i_2_n_0 : STD_LOGIC;
  signal addr_ctr0_carry_i_3_n_0 : STD_LOGIC;
  signal addr_ctr0_carry_i_4_n_0 : STD_LOGIC;
  signal addr_ctr0_carry_n_0 : STD_LOGIC;
  signal addr_ctr0_carry_n_1 : STD_LOGIC;
  signal addr_ctr0_carry_n_2 : STD_LOGIC;
  signal addr_ctr0_carry_n_3 : STD_LOGIC;
  signal \addr_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[13]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[14]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[16]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[17]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[18]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[19]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[20]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[21]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[22]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[23]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[24]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[25]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[26]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[27]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[28]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[29]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[30]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[31]_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[10]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[12]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[13]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[14]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[15]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[16]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[17]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[18]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[19]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[20]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[21]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[22]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[23]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[24]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[25]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[26]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[27]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[28]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[29]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[30]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[31]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[9]\ : STD_LOGIC;
  signal \^axi_bvalid_reg\ : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in9 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_11_n_0 : STD_LOGIC;
  signal mosi_i_12_n_0 : STD_LOGIC;
  signal mosi_i_13_n_0 : STD_LOGIC;
  signal mosi_i_14_n_0 : STD_LOGIC;
  signal mosi_i_25_n_0 : STD_LOGIC;
  signal mosi_i_26_n_0 : STD_LOGIC;
  signal mosi_i_27_n_0 : STD_LOGIC;
  signal mosi_i_28_n_0 : STD_LOGIC;
  signal mosi_i_29_n_0 : STD_LOGIC;
  signal mosi_i_30_n_0 : STD_LOGIC;
  signal mosi_i_31_n_0 : STD_LOGIC;
  signal mosi_i_32_n_0 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal \pll_clk_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \pll_clk_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \pll_clk_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \pll_clk_en_reg_n_0_[1]\ : STD_LOGIC;
  signal powerdownflag : STD_LOGIC;
  signal read_data_ctr : STD_LOGIC;
  signal \read_data_ctr[0]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[0]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[0]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[0]_i_5_n_0\ : STD_LOGIC;
  signal \read_data_ctr[12]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[12]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[12]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[12]_i_5_n_0\ : STD_LOGIC;
  signal \read_data_ctr[16]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[16]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[16]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[16]_i_5_n_0\ : STD_LOGIC;
  signal \read_data_ctr[20]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[20]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[20]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[20]_i_5_n_0\ : STD_LOGIC;
  signal \read_data_ctr[24]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[24]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[24]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[24]_i_5_n_0\ : STD_LOGIC;
  signal \read_data_ctr[28]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[28]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[28]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[28]_i_5_n_0\ : STD_LOGIC;
  signal \read_data_ctr[4]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[4]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[4]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[4]_i_5_n_0\ : STD_LOGIC;
  signal \read_data_ctr[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_ctr[8]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_ctr[8]_i_4_n_0\ : STD_LOGIC;
  signal \read_data_ctr[8]_i_5_n_0\ : STD_LOGIC;
  signal read_data_ctr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \read_data_ctr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_ctr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \read_data_ctr_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \read_data_ctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal readyflag_i_1_n_0 : STD_LOGIC;
  signal readyflag_reg_n_0 : STD_LOGIC;
  signal \rising_spi_process.mode_reg_n_0\ : STD_LOGIC;
  signal sck_en_i_1_n_0 : STD_LOGIC;
  signal sck_en_reg_n_0 : STD_LOGIC;
  signal \send_data_inferred__0/i__n_0\ : STD_LOGIC;
  signal \send_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal sensor_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spiflag : STD_LOGIC;
  signal spiflag_i_1_n_0 : STD_LOGIC;
  signal spiflag_reg_n_0 : STD_LOGIC;
  signal \^ss_n\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \ss_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \ss_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \startup_process.id_reg_n_0_[0]\ : STD_LOGIC;
  signal \^sw_enable_n\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^vdd18_toggle\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \vdd18_toggle[0]_i_1_n_0\ : STD_LOGIC;
  signal \vdd18_toggle[1]_i_1_n_0\ : STD_LOGIC;
  signal \^vdd33_toggle\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \vdd33_toggle[0]_i_1_n_0\ : STD_LOGIC;
  signal \vdd33_toggle[1]_i_1_n_0\ : STD_LOGIC;
  signal \^vddpix_toggle\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \vddpix_toggle[0]_i_1_n_0\ : STD_LOGIC;
  signal \vddpix_toggle[1]_i_1_n_0\ : STD_LOGIC;
  signal write_data_ctr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \write_data_ctr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__0_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__0_n_1\ : STD_LOGIC;
  signal \write_data_ctr0_carry__0_n_2\ : STD_LOGIC;
  signal \write_data_ctr0_carry__0_n_3\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_n_1\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_n_2\ : STD_LOGIC;
  signal \write_data_ctr0_carry__1_n_3\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_n_1\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_n_2\ : STD_LOGIC;
  signal \write_data_ctr0_carry__2_n_3\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_n_1\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_n_2\ : STD_LOGIC;
  signal \write_data_ctr0_carry__3_n_3\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_n_1\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_n_2\ : STD_LOGIC;
  signal \write_data_ctr0_carry__4_n_3\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_n_1\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_n_2\ : STD_LOGIC;
  signal \write_data_ctr0_carry__5_n_3\ : STD_LOGIC;
  signal \write_data_ctr0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \write_data_ctr0_carry__6_n_2\ : STD_LOGIC;
  signal \write_data_ctr0_carry__6_n_3\ : STD_LOGIC;
  signal write_data_ctr0_carry_i_1_n_0 : STD_LOGIC;
  signal write_data_ctr0_carry_i_2_n_0 : STD_LOGIC;
  signal write_data_ctr0_carry_i_3_n_0 : STD_LOGIC;
  signal write_data_ctr0_carry_i_4_n_0 : STD_LOGIC;
  signal write_data_ctr0_carry_n_0 : STD_LOGIC;
  signal write_data_ctr0_carry_n_1 : STD_LOGIC;
  signal write_data_ctr0_carry_n_2 : STD_LOGIC;
  signal write_data_ctr0_carry_n_3 : STD_LOGIC;
  signal \write_data_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[11]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[12]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[13]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[14]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[15]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[16]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[17]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[18]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[19]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[20]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[21]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[22]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[23]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[24]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[25]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[26]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[27]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[28]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[29]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[30]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[31]_i_2_n_0\ : STD_LOGIC;
  signal \write_data_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal write_data_ctr_0 : STD_LOGIC;
  signal \NLW_addr_ctr0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_addr_ctr0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_read_data_ctr_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_data_ctr0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_write_data_ctr0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_13\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_14\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[0]\ : label is "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[1]\ : label is "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[2]\ : label is "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[3]\ : label is "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[4]\ : label is "idle:00001,s_addr:00010,send_rd_data:10000,w_data:01000,r_data:00100";
  attribute SOFT_HLUTNM of \FSM_sequential_StartupState[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_StartupState[2]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StartupState_reg[0]\ : label is "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StartupState_reg[1]\ : label is "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StartupState_reg[2]\ : label is "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of addr_ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \addr_ctr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr_ctr[10]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \addr_ctr[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \addr_ctr[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \addr_ctr[13]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \addr_ctr[14]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \addr_ctr[15]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \addr_ctr[16]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \addr_ctr[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \addr_ctr[18]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \addr_ctr[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \addr_ctr[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addr_ctr[20]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \addr_ctr[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \addr_ctr[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr_ctr[23]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr_ctr[24]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \addr_ctr[25]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \addr_ctr[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr_ctr[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr_ctr[28]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr_ctr[29]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr_ctr[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addr_ctr[30]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_ctr[31]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_ctr[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_ctr[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_ctr[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_ctr[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addr_ctr[7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addr_ctr[8]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addr_ctr[9]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \clk_pll_out[0]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clk_pll_out[1]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of mosi_i_13 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of mosi_i_14 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of mosi_i_26 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of mosi_i_28 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of mosi_i_30 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of mosi_i_31 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of mosi_i_32 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pll_clk_en[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pll_clk_en[1]_i_1\ : label is "soft_lutpair5";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of powerdownflag_reg : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of powerdownflag_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of powerdownflag_reg : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of readyflag_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sck_en_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \send_data_inferred__0/i_\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[0]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \send_data_reg[0]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[1]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[2]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of spiflag_i_1 : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD of write_data_ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \write_data_ctr[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_data_ctr[10]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \write_data_ctr[11]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \write_data_ctr[12]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \write_data_ctr[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \write_data_ctr[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \write_data_ctr[15]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \write_data_ctr[16]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \write_data_ctr[17]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \write_data_ctr[18]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \write_data_ctr[19]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \write_data_ctr[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \write_data_ctr[20]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \write_data_ctr[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \write_data_ctr[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \write_data_ctr[23]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \write_data_ctr[24]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \write_data_ctr[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \write_data_ctr[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \write_data_ctr[27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \write_data_ctr[28]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \write_data_ctr[29]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \write_data_ctr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \write_data_ctr[30]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \write_data_ctr[31]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \write_data_ctr[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_data_ctr[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \write_data_ctr[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \write_data_ctr[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \write_data_ctr[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \write_data_ctr[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \write_data_ctr[9]_i_1\ : label is "soft_lutpair45";
begin
  axi_bvalid_reg <= \^axi_bvalid_reg\;
  mosi <= \^mosi\;
  ss_n(0 to 1) <= \^ss_n\(0 to 1);
  sw_enable_n(0 to 1) <= \^sw_enable_n\(0 to 1);
  vdd18_toggle(0 to 1) <= \^vdd18_toggle\(0 to 1);
  vdd33_toggle(0 to 1) <= \^vdd33_toggle\(0 to 1);
  vddpix_toggle(0 to 1) <= \^vddpix_toggle\(0 to 1);
\FSM_onehot_SPIState[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => read_data_ctr,
      I1 => spiflag,
      O => \FSM_onehot_SPIState[0]_i_1_n_0\
    );
\FSM_onehot_SPIState[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => \rising_spi_process.mode_reg_n_0\,
      O => \FSM_onehot_SPIState[2]_i_1_n_0\
    );
\FSM_onehot_SPIState[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rising_spi_process.mode_reg_n_0\,
      I1 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      O => \FSM_onehot_SPIState[3]_i_1_n_0\
    );
\FSM_onehot_SPIState[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => write_data_ctr(26),
      I1 => write_data_ctr(11),
      I2 => write_data_ctr(7),
      I3 => \FSM_onehot_SPIState[4]_i_24_n_0\,
      I4 => \FSM_onehot_SPIState[4]_i_25_n_0\,
      O => \FSM_onehot_SPIState[4]_i_10_n_0\
    );
\FSM_onehot_SPIState[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[25]\,
      I1 => \addr_ctr_reg_n_0_[20]\,
      I2 => \addr_ctr_reg_n_0_[27]\,
      I3 => \addr_ctr_reg_n_0_[8]\,
      I4 => mosi_i_31_n_0,
      O => \FSM_onehot_SPIState[4]_i_11_n_0\
    );
\FSM_onehot_SPIState[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[9]\,
      I1 => \addr_ctr_reg_n_0_[1]\,
      I2 => \addr_ctr_reg_n_0_[3]\,
      I3 => \addr_ctr_reg_n_0_[2]\,
      I4 => mosi_i_29_n_0,
      O => \FSM_onehot_SPIState[4]_i_12_n_0\
    );
\FSM_onehot_SPIState[4]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[21]\,
      I1 => \addr_ctr_reg_n_0_[13]\,
      I2 => \addr_ctr_reg_n_0_[29]\,
      I3 => \addr_ctr_reg_n_0_[28]\,
      I4 => mosi_i_27_n_0,
      O => \FSM_onehot_SPIState[4]_i_13_n_0\
    );
\FSM_onehot_SPIState[4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[12]\,
      I1 => \addr_ctr_reg_n_0_[10]\,
      I2 => \addr_ctr_reg_n_0_[19]\,
      I3 => \addr_ctr_reg_n_0_[16]\,
      I4 => mosi_i_25_n_0,
      O => \FSM_onehot_SPIState[4]_i_14_n_0\
    );
\FSM_onehot_SPIState[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(29),
      I1 => read_data_ctr_reg(11),
      I2 => read_data_ctr_reg(16),
      I3 => read_data_ctr_reg(26),
      O => \FSM_onehot_SPIState[4]_i_15_n_0\
    );
\FSM_onehot_SPIState[4]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(30),
      I1 => read_data_ctr_reg(6),
      I2 => read_data_ctr_reg(21),
      I3 => read_data_ctr_reg(2),
      O => \FSM_onehot_SPIState[4]_i_16_n_0\
    );
\FSM_onehot_SPIState[4]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(3),
      I1 => read_data_ctr_reg(0),
      I2 => read_data_ctr_reg(28),
      I3 => read_data_ctr_reg(24),
      O => \FSM_onehot_SPIState[4]_i_17_n_0\
    );
\FSM_onehot_SPIState[4]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(25),
      I1 => read_data_ctr_reg(13),
      I2 => read_data_ctr_reg(10),
      I3 => read_data_ctr_reg(18),
      O => \FSM_onehot_SPIState[4]_i_18_n_0\
    );
\FSM_onehot_SPIState[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => write_data_ctr(0),
      I2 => write_data_ctr(9),
      I3 => write_data_ctr(6),
      I4 => write_data_ctr(12),
      I5 => write_data_ctr(28),
      O => \FSM_onehot_SPIState[4]_i_19_n_0\
    );
\FSM_onehot_SPIState[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000100"
    )
        port map (
      I0 => \FSM_onehot_SPIState[4]_i_5_n_0\,
      I1 => \FSM_onehot_SPIState[4]_i_6_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_7_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_8_n_0\,
      I4 => \FSM_onehot_SPIState[4]_i_9_n_0\,
      I5 => \FSM_onehot_SPIState[4]_i_10_n_0\,
      O => \FSM_onehot_SPIState[4]_i_2_n_0\
    );
\FSM_onehot_SPIState[4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(19),
      I1 => write_data_ctr(20),
      I2 => write_data_ctr(10),
      I3 => write_data_ctr(17),
      O => \FSM_onehot_SPIState[4]_i_20_n_0\
    );
\FSM_onehot_SPIState[4]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(8),
      I1 => write_data_ctr(21),
      I2 => write_data_ctr(30),
      I3 => write_data_ctr(18),
      O => \FSM_onehot_SPIState[4]_i_21_n_0\
    );
\FSM_onehot_SPIState[4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(27),
      I1 => write_data_ctr(3),
      I2 => write_data_ctr(1),
      I3 => write_data_ctr(15),
      O => \FSM_onehot_SPIState[4]_i_22_n_0\
    );
\FSM_onehot_SPIState[4]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(25),
      I1 => write_data_ctr(14),
      I2 => write_data_ctr(13),
      I3 => write_data_ctr(24),
      O => \FSM_onehot_SPIState[4]_i_23_n_0\
    );
\FSM_onehot_SPIState[4]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(5),
      I1 => write_data_ctr(29),
      I2 => write_data_ctr(31),
      I3 => write_data_ctr(23),
      O => \FSM_onehot_SPIState[4]_i_24_n_0\
    );
\FSM_onehot_SPIState[4]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(22),
      I1 => write_data_ctr(2),
      I2 => write_data_ctr(16),
      I3 => write_data_ctr(4),
      O => \FSM_onehot_SPIState[4]_i_25_n_0\
    );
\FSM_onehot_SPIState[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_onehot_SPIState[4]_i_11_n_0\,
      I1 => \FSM_onehot_SPIState[4]_i_12_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_13_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_14_n_0\,
      O => \FSM_onehot_SPIState[4]_i_3_n_0\
    );
\FSM_onehot_SPIState[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => read_data_ctr,
      I1 => read_data_ctr_reg(22),
      I2 => read_data_ctr_reg(19),
      I3 => read_data_ctr_reg(31),
      I4 => read_data_ctr_reg(14),
      I5 => read_data_ctr_reg(15),
      O => \FSM_onehot_SPIState[4]_i_5_n_0\
    );
\FSM_onehot_SPIState[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => read_data_ctr_reg(12),
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr_reg(20),
      I3 => read_data_ctr_reg(23),
      I4 => \FSM_onehot_SPIState[4]_i_15_n_0\,
      O => \FSM_onehot_SPIState[4]_i_6_n_0\
    );
\FSM_onehot_SPIState[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => read_data_ctr_reg(9),
      I1 => read_data_ctr_reg(7),
      I2 => read_data_ctr_reg(5),
      I3 => read_data_ctr_reg(27),
      I4 => \FSM_onehot_SPIState[4]_i_16_n_0\,
      O => \FSM_onehot_SPIState[4]_i_7_n_0\
    );
\FSM_onehot_SPIState[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => read_data_ctr_reg(17),
      I1 => read_data_ctr_reg(4),
      I2 => read_data_ctr_reg(8),
      I3 => \FSM_onehot_SPIState[4]_i_17_n_0\,
      I4 => \FSM_onehot_SPIState[4]_i_18_n_0\,
      O => \FSM_onehot_SPIState[4]_i_8_n_0\
    );
\FSM_onehot_SPIState[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_SPIState[4]_i_19_n_0\,
      I1 => \FSM_onehot_SPIState[4]_i_20_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_21_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_22_n_0\,
      I4 => \FSM_onehot_SPIState[4]_i_23_n_0\,
      O => \FSM_onehot_SPIState[4]_i_9_n_0\
    );
\FSM_onehot_SPIState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_spi_in,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      D => \FSM_onehot_SPIState[0]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \FSM_onehot_SPIState_reg_n_0_[0]\
    );
\FSM_onehot_SPIState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_SPIState_reg_n_0_[0]\,
      Q => \FSM_onehot_SPIState_reg_n_0_[1]\
    );
\FSM_onehot_SPIState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_SPIState[2]_i_1_n_0\,
      Q => read_data_ctr
    );
\FSM_onehot_SPIState_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_SPIState[3]_i_1_n_0\,
      Q => \FSM_onehot_SPIState_reg_n_0_[3]\
    );
\FSM_onehot_SPIState_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_SPIState_reg_n_0_[3]\,
      Q => spiflag
    );
\FSM_sequential_StartupState[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E6"
    )
        port map (
      I0 => StartupState(0),
      I1 => StartupState(1),
      I2 => StartupState(2),
      O => \FSM_sequential_StartupState[1]_i_1_n_0\
    );
\FSM_sequential_StartupState[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => StartupState(0),
      I1 => StartupState(1),
      I2 => StartupState(2),
      O => \FSM_sequential_StartupState[2]_i_1_n_0\
    );
\FSM_sequential_StartupState_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12,
      Q => StartupState(0)
    );
\FSM_sequential_StartupState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_sequential_StartupState[1]_i_1_n_0\,
      Q => StartupState(1)
    );
\FSM_sequential_StartupState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_sequential_StartupState[2]_i_1_n_0\,
      Q => StartupState(2)
    );
addr_ctr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addr_ctr0_carry_n_0,
      CO(2) => addr_ctr0_carry_n_1,
      CO(1) => addr_ctr0_carry_n_2,
      CO(0) => addr_ctr0_carry_n_3,
      CYINIT => \addr_ctr_reg_n_0_[0]\,
      DI(3) => \addr_ctr_reg_n_0_[4]\,
      DI(2) => \addr_ctr_reg_n_0_[3]\,
      DI(1) => \addr_ctr_reg_n_0_[2]\,
      DI(0) => \addr_ctr_reg_n_0_[1]\,
      O(3 downto 0) => in10(4 downto 1),
      S(3) => addr_ctr0_carry_i_1_n_0,
      S(2) => addr_ctr0_carry_i_2_n_0,
      S(1) => addr_ctr0_carry_i_3_n_0,
      S(0) => addr_ctr0_carry_i_4_n_0
    );
\addr_ctr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addr_ctr0_carry_n_0,
      CO(3) => \addr_ctr0_carry__0_n_0\,
      CO(2) => \addr_ctr0_carry__0_n_1\,
      CO(1) => \addr_ctr0_carry__0_n_2\,
      CO(0) => \addr_ctr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[8]\,
      DI(2) => \addr_ctr_reg_n_0_[7]\,
      DI(1) => \addr_ctr_reg_n_0_[6]\,
      DI(0) => \addr_ctr_reg_n_0_[5]\,
      O(3 downto 0) => in10(8 downto 5),
      S(3) => \addr_ctr0_carry__0_i_1_n_0\,
      S(2) => \addr_ctr0_carry__0_i_2_n_0\,
      S(1) => \addr_ctr0_carry__0_i_3_n_0\,
      S(0) => \addr_ctr0_carry__0_i_4_n_0\
    );
\addr_ctr0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[8]\,
      O => \addr_ctr0_carry__0_i_1_n_0\
    );
\addr_ctr0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[7]\,
      O => \addr_ctr0_carry__0_i_2_n_0\
    );
\addr_ctr0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[6]\,
      O => \addr_ctr0_carry__0_i_3_n_0\
    );
\addr_ctr0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[5]\,
      O => \addr_ctr0_carry__0_i_4_n_0\
    );
\addr_ctr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr0_carry__0_n_0\,
      CO(3) => \addr_ctr0_carry__1_n_0\,
      CO(2) => \addr_ctr0_carry__1_n_1\,
      CO(1) => \addr_ctr0_carry__1_n_2\,
      CO(0) => \addr_ctr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[12]\,
      DI(2) => \addr_ctr_reg_n_0_[11]\,
      DI(1) => \addr_ctr_reg_n_0_[10]\,
      DI(0) => \addr_ctr_reg_n_0_[9]\,
      O(3 downto 0) => in10(12 downto 9),
      S(3) => \addr_ctr0_carry__1_i_1_n_0\,
      S(2) => \addr_ctr0_carry__1_i_2_n_0\,
      S(1) => \addr_ctr0_carry__1_i_3_n_0\,
      S(0) => \addr_ctr0_carry__1_i_4_n_0\
    );
\addr_ctr0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[12]\,
      O => \addr_ctr0_carry__1_i_1_n_0\
    );
\addr_ctr0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[11]\,
      O => \addr_ctr0_carry__1_i_2_n_0\
    );
\addr_ctr0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[10]\,
      O => \addr_ctr0_carry__1_i_3_n_0\
    );
\addr_ctr0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[9]\,
      O => \addr_ctr0_carry__1_i_4_n_0\
    );
\addr_ctr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr0_carry__1_n_0\,
      CO(3) => \addr_ctr0_carry__2_n_0\,
      CO(2) => \addr_ctr0_carry__2_n_1\,
      CO(1) => \addr_ctr0_carry__2_n_2\,
      CO(0) => \addr_ctr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[16]\,
      DI(2) => \addr_ctr_reg_n_0_[15]\,
      DI(1) => \addr_ctr_reg_n_0_[14]\,
      DI(0) => \addr_ctr_reg_n_0_[13]\,
      O(3 downto 0) => in10(16 downto 13),
      S(3) => \addr_ctr0_carry__2_i_1_n_0\,
      S(2) => \addr_ctr0_carry__2_i_2_n_0\,
      S(1) => \addr_ctr0_carry__2_i_3_n_0\,
      S(0) => \addr_ctr0_carry__2_i_4_n_0\
    );
\addr_ctr0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[16]\,
      O => \addr_ctr0_carry__2_i_1_n_0\
    );
\addr_ctr0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[15]\,
      O => \addr_ctr0_carry__2_i_2_n_0\
    );
\addr_ctr0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[14]\,
      O => \addr_ctr0_carry__2_i_3_n_0\
    );
\addr_ctr0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[13]\,
      O => \addr_ctr0_carry__2_i_4_n_0\
    );
\addr_ctr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr0_carry__2_n_0\,
      CO(3) => \addr_ctr0_carry__3_n_0\,
      CO(2) => \addr_ctr0_carry__3_n_1\,
      CO(1) => \addr_ctr0_carry__3_n_2\,
      CO(0) => \addr_ctr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[20]\,
      DI(2) => \addr_ctr_reg_n_0_[19]\,
      DI(1) => \addr_ctr_reg_n_0_[18]\,
      DI(0) => \addr_ctr_reg_n_0_[17]\,
      O(3 downto 0) => in10(20 downto 17),
      S(3) => \addr_ctr0_carry__3_i_1_n_0\,
      S(2) => \addr_ctr0_carry__3_i_2_n_0\,
      S(1) => \addr_ctr0_carry__3_i_3_n_0\,
      S(0) => \addr_ctr0_carry__3_i_4_n_0\
    );
\addr_ctr0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[20]\,
      O => \addr_ctr0_carry__3_i_1_n_0\
    );
\addr_ctr0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[19]\,
      O => \addr_ctr0_carry__3_i_2_n_0\
    );
\addr_ctr0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[18]\,
      O => \addr_ctr0_carry__3_i_3_n_0\
    );
\addr_ctr0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[17]\,
      O => \addr_ctr0_carry__3_i_4_n_0\
    );
\addr_ctr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr0_carry__3_n_0\,
      CO(3) => \addr_ctr0_carry__4_n_0\,
      CO(2) => \addr_ctr0_carry__4_n_1\,
      CO(1) => \addr_ctr0_carry__4_n_2\,
      CO(0) => \addr_ctr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[24]\,
      DI(2) => \addr_ctr_reg_n_0_[23]\,
      DI(1) => \addr_ctr_reg_n_0_[22]\,
      DI(0) => \addr_ctr_reg_n_0_[21]\,
      O(3 downto 0) => in10(24 downto 21),
      S(3) => \addr_ctr0_carry__4_i_1_n_0\,
      S(2) => \addr_ctr0_carry__4_i_2_n_0\,
      S(1) => \addr_ctr0_carry__4_i_3_n_0\,
      S(0) => \addr_ctr0_carry__4_i_4_n_0\
    );
\addr_ctr0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[24]\,
      O => \addr_ctr0_carry__4_i_1_n_0\
    );
\addr_ctr0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[23]\,
      O => \addr_ctr0_carry__4_i_2_n_0\
    );
\addr_ctr0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[22]\,
      O => \addr_ctr0_carry__4_i_3_n_0\
    );
\addr_ctr0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[21]\,
      O => \addr_ctr0_carry__4_i_4_n_0\
    );
\addr_ctr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr0_carry__4_n_0\,
      CO(3) => \addr_ctr0_carry__5_n_0\,
      CO(2) => \addr_ctr0_carry__5_n_1\,
      CO(1) => \addr_ctr0_carry__5_n_2\,
      CO(0) => \addr_ctr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[28]\,
      DI(2) => \addr_ctr_reg_n_0_[27]\,
      DI(1) => \addr_ctr_reg_n_0_[26]\,
      DI(0) => \addr_ctr_reg_n_0_[25]\,
      O(3 downto 0) => in10(28 downto 25),
      S(3) => \addr_ctr0_carry__5_i_1_n_0\,
      S(2) => \addr_ctr0_carry__5_i_2_n_0\,
      S(1) => \addr_ctr0_carry__5_i_3_n_0\,
      S(0) => \addr_ctr0_carry__5_i_4_n_0\
    );
\addr_ctr0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[28]\,
      O => \addr_ctr0_carry__5_i_1_n_0\
    );
\addr_ctr0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[27]\,
      O => \addr_ctr0_carry__5_i_2_n_0\
    );
\addr_ctr0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[26]\,
      O => \addr_ctr0_carry__5_i_3_n_0\
    );
\addr_ctr0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[25]\,
      O => \addr_ctr0_carry__5_i_4_n_0\
    );
\addr_ctr0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_addr_ctr0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \addr_ctr0_carry__6_n_2\,
      CO(0) => \addr_ctr0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \addr_ctr_reg_n_0_[30]\,
      DI(0) => \addr_ctr_reg_n_0_[29]\,
      O(3) => \NLW_addr_ctr0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in10(31 downto 29),
      S(3) => '0',
      S(2) => \addr_ctr0_carry__6_i_1_n_0\,
      S(1) => \addr_ctr0_carry__6_i_2_n_0\,
      S(0) => \addr_ctr0_carry__6_i_3_n_0\
    );
\addr_ctr0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[31]\,
      O => \addr_ctr0_carry__6_i_1_n_0\
    );
\addr_ctr0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[30]\,
      O => \addr_ctr0_carry__6_i_2_n_0\
    );
\addr_ctr0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[29]\,
      O => \addr_ctr0_carry__6_i_3_n_0\
    );
addr_ctr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[4]\,
      O => addr_ctr0_carry_i_1_n_0
    );
addr_ctr0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[3]\,
      O => addr_ctr0_carry_i_2_n_0
    );
addr_ctr0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[2]\,
      O => addr_ctr0_carry_i_3_n_0
    );
addr_ctr0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[1]\,
      O => addr_ctr0_carry_i_4_n_0
    );
\addr_ctr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => \addr_ctr_reg_n_0_[0]\,
      O => \addr_ctr[0]_i_1_n_0\
    );
\addr_ctr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(10),
      O => \addr_ctr[10]_i_1_n_0\
    );
\addr_ctr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(11),
      O => \addr_ctr[11]_i_1_n_0\
    );
\addr_ctr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(12),
      O => \addr_ctr[12]_i_1_n_0\
    );
\addr_ctr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(13),
      O => \addr_ctr[13]_i_1_n_0\
    );
\addr_ctr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(14),
      O => \addr_ctr[14]_i_1_n_0\
    );
\addr_ctr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(15),
      O => \addr_ctr[15]_i_1_n_0\
    );
\addr_ctr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(16),
      O => \addr_ctr[16]_i_1_n_0\
    );
\addr_ctr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(17),
      O => \addr_ctr[17]_i_1_n_0\
    );
\addr_ctr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(18),
      O => \addr_ctr[18]_i_1_n_0\
    );
\addr_ctr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(19),
      O => \addr_ctr[19]_i_1_n_0\
    );
\addr_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(1),
      O => \addr_ctr[1]_i_1_n_0\
    );
\addr_ctr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(20),
      O => \addr_ctr[20]_i_1_n_0\
    );
\addr_ctr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(21),
      O => \addr_ctr[21]_i_1_n_0\
    );
\addr_ctr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(22),
      O => \addr_ctr[22]_i_1_n_0\
    );
\addr_ctr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(23),
      O => \addr_ctr[23]_i_1_n_0\
    );
\addr_ctr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(24),
      O => \addr_ctr[24]_i_1_n_0\
    );
\addr_ctr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(25),
      O => \addr_ctr[25]_i_1_n_0\
    );
\addr_ctr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(26),
      O => \addr_ctr[26]_i_1_n_0\
    );
\addr_ctr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(27),
      O => \addr_ctr[27]_i_1_n_0\
    );
\addr_ctr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(28),
      O => \addr_ctr[28]_i_1_n_0\
    );
\addr_ctr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(29),
      O => \addr_ctr[29]_i_1_n_0\
    );
\addr_ctr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(2),
      O => \addr_ctr[2]_i_1_n_0\
    );
\addr_ctr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(30),
      O => \addr_ctr[30]_i_1_n_0\
    );
\addr_ctr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      O => addr_ctr
    );
\addr_ctr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(31),
      O => \addr_ctr[31]_i_2_n_0\
    );
\addr_ctr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in10(3),
      I2 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      O => \addr_ctr[3]_i_1_n_0\
    );
\addr_ctr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(4),
      O => \addr_ctr[4]_i_1_n_0\
    );
\addr_ctr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(5),
      O => \addr_ctr[5]_i_1_n_0\
    );
\addr_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(6),
      O => \addr_ctr[6]_i_1_n_0\
    );
\addr_ctr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(7),
      O => \addr_ctr[7]_i_1_n_0\
    );
\addr_ctr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(8),
      O => \addr_ctr[8]_i_1_n_0\
    );
\addr_ctr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in10(9),
      O => \addr_ctr[9]_i_1_n_0\
    );
\addr_ctr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[0]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[0]\
    );
\addr_ctr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[10]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[10]\
    );
\addr_ctr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[11]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[11]\
    );
\addr_ctr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[12]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[12]\
    );
\addr_ctr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[13]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[13]\
    );
\addr_ctr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[14]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[14]\
    );
\addr_ctr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[15]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[15]\
    );
\addr_ctr_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[16]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[16]\
    );
\addr_ctr_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[17]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[17]\
    );
\addr_ctr_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[18]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[18]\
    );
\addr_ctr_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[19]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[19]\
    );
\addr_ctr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[1]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[1]\
    );
\addr_ctr_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[20]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[20]\
    );
\addr_ctr_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[21]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[21]\
    );
\addr_ctr_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[22]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[22]\
    );
\addr_ctr_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[23]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[23]\
    );
\addr_ctr_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[24]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[24]\
    );
\addr_ctr_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[25]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[25]\
    );
\addr_ctr_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[26]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[26]\
    );
\addr_ctr_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[27]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[27]\
    );
\addr_ctr_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[28]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[28]\
    );
\addr_ctr_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[29]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[29]\
    );
\addr_ctr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[2]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[2]\
    );
\addr_ctr_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[30]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[30]\
    );
\addr_ctr_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[31]_i_2_n_0\,
      Q => \addr_ctr_reg_n_0_[31]\
    );
\addr_ctr_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      D => \addr_ctr[3]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \addr_ctr_reg_n_0_[3]\
    );
\addr_ctr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[4]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[4]\
    );
\addr_ctr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[5]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[5]\
    );
\addr_ctr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[6]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[6]\
    );
\addr_ctr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[7]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[7]\
    );
\addr_ctr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[8]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[8]\
    );
\addr_ctr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \addr_ctr[9]_i_1_n_0\,
      Q => \addr_ctr_reg_n_0_[9]\
    );
\clk_pll_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pll_clk_en_reg_n_0_[0]\,
      I1 => clk_72M_pll,
      O => clk_pll_out(0)
    );
\clk_pll_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pll_clk_en_reg_n_0_[1]\,
      I1 => clk_72M_pll,
      O => clk_pll_out(1)
    );
mosi_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mosi_i_25_n_0,
      I1 => mosi_i_26_n_0,
      I2 => mosi_i_27_n_0,
      I3 => mosi_i_28_n_0,
      O => mosi_i_11_n_0
    );
mosi_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => mosi_i_29_n_0,
      I1 => mosi_i_30_n_0,
      I2 => mosi_i_31_n_0,
      I3 => mosi_i_32_n_0,
      O => mosi_i_12_n_0
    );
mosi_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => \rising_spi_process.mode_reg_n_0\,
      O => mosi_i_13_n_0
    );
mosi_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => read_data_ctr,
      O => mosi_i_14_n_0
    );
mosi_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[7]\,
      I1 => \addr_ctr_reg_n_0_[30]\,
      I2 => \addr_ctr_reg_n_0_[22]\,
      I3 => \addr_ctr_reg_n_0_[26]\,
      O => mosi_i_25_n_0
    );
mosi_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[16]\,
      I1 => \addr_ctr_reg_n_0_[19]\,
      I2 => \addr_ctr_reg_n_0_[10]\,
      I3 => \addr_ctr_reg_n_0_[12]\,
      O => mosi_i_26_n_0
    );
mosi_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[17]\,
      I1 => \addr_ctr_reg_n_0_[18]\,
      I2 => \addr_ctr_reg_n_0_[31]\,
      I3 => \addr_ctr_reg_n_0_[6]\,
      O => mosi_i_27_n_0
    );
mosi_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[28]\,
      I1 => \addr_ctr_reg_n_0_[29]\,
      I2 => \addr_ctr_reg_n_0_[13]\,
      I3 => \addr_ctr_reg_n_0_[21]\,
      O => mosi_i_28_n_0
    );
mosi_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[14]\,
      I1 => \addr_ctr_reg_n_0_[15]\,
      I2 => \addr_ctr_reg_n_0_[23]\,
      I3 => \addr_ctr_reg_n_0_[24]\,
      O => mosi_i_29_n_0
    );
mosi_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[2]\,
      I1 => \addr_ctr_reg_n_0_[3]\,
      I2 => \addr_ctr_reg_n_0_[1]\,
      I3 => \addr_ctr_reg_n_0_[9]\,
      O => mosi_i_30_n_0
    );
mosi_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[4]\,
      I1 => \addr_ctr_reg_n_0_[5]\,
      I2 => \addr_ctr_reg_n_0_[0]\,
      I3 => \addr_ctr_reg_n_0_[11]\,
      O => mosi_i_31_n_0
    );
mosi_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[8]\,
      I1 => \addr_ctr_reg_n_0_[27]\,
      I2 => \addr_ctr_reg_n_0_[20]\,
      I3 => \addr_ctr_reg_n_0_[25]\,
      O => mosi_i_32_n_0
    );
mosi_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_spi_in,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17,
      Q => \^mosi\
    );
noip_ctrl_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl_slave_lite_v1_0_S00_AXI
     port map (
      E(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      \FSM_onehot_SPIState_reg[0]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16,
      \FSM_onehot_SPIState_reg[0]_0\(3) => spiflag,
      \FSM_onehot_SPIState_reg[0]_0\(2) => \FSM_onehot_SPIState_reg_n_0_[3]\,
      \FSM_onehot_SPIState_reg[0]_0\(1) => \FSM_onehot_SPIState_reg_n_0_[1]\,
      \FSM_onehot_SPIState_reg[0]_0\(0) => \FSM_onehot_SPIState_reg_n_0_[0]\,
      \FSM_onehot_SPIState_reg[0]_1\ => \FSM_onehot_SPIState[4]_i_2_n_0\,
      \FSM_onehot_SPIState_reg[0]_2\ => \FSM_onehot_SPIState[4]_i_3_n_0\,
      \FSM_onehot_SPIState_reg[3]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17,
      \FSM_sequential_StartupState_reg[2]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12,
      Q(3 downto 2) => sensor_id(1 downto 0),
      Q(1) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,
      Q(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10,
      StartupState(2 downto 0) => StartupState(2 downto 0),
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_bvalid_reg_0 => \^axi_bvalid_reg\,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      mosi => \^mosi\,
      mosi_i_4_0(3) => \addr_ctr_reg_n_0_[3]\,
      mosi_i_4_0(2) => \addr_ctr_reg_n_0_[2]\,
      mosi_i_4_0(1) => \addr_ctr_reg_n_0_[1]\,
      mosi_i_4_0(0) => \addr_ctr_reg_n_0_[0]\,
      mosi_reg(4 downto 0) => write_data_ctr(4 downto 0),
      mosi_reg_0 => mosi_i_11_n_0,
      mosi_reg_1 => mosi_i_12_n_0,
      mosi_reg_2 => mosi_i_13_n_0,
      mosi_reg_3 => mosi_i_14_n_0,
      \rising_spi_process.mode_reg\ => \rising_spi_process.mode_reg_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[2]_0\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15,
      \slv_reg0_reg[3]_0\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      \startup_process.id_reg[0]\ => \startup_process.id_reg_n_0_[0]\,
      sw_enable_n(0 to 1) => \^sw_enable_n\(0 to 1),
      \sw_enable_n_reg[0]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6,
      \sw_enable_n_reg[1]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11
    );
\pll_clk_en[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => StartupState(2),
      I1 => StartupState(1),
      I2 => \startup_process.id_reg_n_0_[0]\,
      I3 => StartupState(0),
      I4 => \pll_clk_en_reg_n_0_[0]\,
      O => \pll_clk_en[0]_i_1_n_0\
    );
\pll_clk_en[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => StartupState(0),
      I1 => \startup_process.id_reg_n_0_[0]\,
      I2 => StartupState(2),
      I3 => StartupState(1),
      I4 => \pll_clk_en_reg_n_0_[1]\,
      O => \pll_clk_en[1]_i_1_n_0\
    );
\pll_clk_en_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \pll_clk_en[0]_i_1_n_0\,
      Q => \pll_clk_en_reg_n_0_[0]\
    );
\pll_clk_en_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \pll_clk_en[1]_i_1_n_0\,
      Q => \pll_clk_en_reg_n_0_[1]\
    );
powerdownflag_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => s00_axi_aresetn,
      G => s00_axi_aresetn,
      GE => '1',
      Q => powerdownflag
    );
\read_data_ctr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(3),
      O => \read_data_ctr[0]_i_2_n_0\
    );
\read_data_ctr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(2),
      O => \read_data_ctr[0]_i_3_n_0\
    );
\read_data_ctr[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(1),
      O => \read_data_ctr[0]_i_4_n_0\
    );
\read_data_ctr[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(0),
      O => \read_data_ctr[0]_i_5_n_0\
    );
\read_data_ctr[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(15),
      O => \read_data_ctr[12]_i_2_n_0\
    );
\read_data_ctr[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(14),
      O => \read_data_ctr[12]_i_3_n_0\
    );
\read_data_ctr[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(13),
      O => \read_data_ctr[12]_i_4_n_0\
    );
\read_data_ctr[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(12),
      O => \read_data_ctr[12]_i_5_n_0\
    );
\read_data_ctr[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(19),
      O => \read_data_ctr[16]_i_2_n_0\
    );
\read_data_ctr[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(18),
      O => \read_data_ctr[16]_i_3_n_0\
    );
\read_data_ctr[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(17),
      O => \read_data_ctr[16]_i_4_n_0\
    );
\read_data_ctr[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(16),
      O => \read_data_ctr[16]_i_5_n_0\
    );
\read_data_ctr[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(23),
      O => \read_data_ctr[20]_i_2_n_0\
    );
\read_data_ctr[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(22),
      O => \read_data_ctr[20]_i_3_n_0\
    );
\read_data_ctr[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(21),
      O => \read_data_ctr[20]_i_4_n_0\
    );
\read_data_ctr[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(20),
      O => \read_data_ctr[20]_i_5_n_0\
    );
\read_data_ctr[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(27),
      O => \read_data_ctr[24]_i_2_n_0\
    );
\read_data_ctr[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(26),
      O => \read_data_ctr[24]_i_3_n_0\
    );
\read_data_ctr[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(25),
      O => \read_data_ctr[24]_i_4_n_0\
    );
\read_data_ctr[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(24),
      O => \read_data_ctr[24]_i_5_n_0\
    );
\read_data_ctr[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(31),
      O => \read_data_ctr[28]_i_2_n_0\
    );
\read_data_ctr[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(30),
      O => \read_data_ctr[28]_i_3_n_0\
    );
\read_data_ctr[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(29),
      O => \read_data_ctr[28]_i_4_n_0\
    );
\read_data_ctr[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(28),
      O => \read_data_ctr[28]_i_5_n_0\
    );
\read_data_ctr[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(7),
      O => \read_data_ctr[4]_i_2_n_0\
    );
\read_data_ctr[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(6),
      O => \read_data_ctr[4]_i_3_n_0\
    );
\read_data_ctr[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(5),
      O => \read_data_ctr[4]_i_4_n_0\
    );
\read_data_ctr[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(4),
      O => \read_data_ctr[4]_i_5_n_0\
    );
\read_data_ctr[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(11),
      O => \read_data_ctr[8]_i_2_n_0\
    );
\read_data_ctr[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(10),
      O => \read_data_ctr[8]_i_3_n_0\
    );
\read_data_ctr[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(9),
      O => \read_data_ctr[8]_i_4_n_0\
    );
\read_data_ctr[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_data_ctr_reg(8),
      O => \read_data_ctr[8]_i_5_n_0\
    );
\read_data_ctr_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      D => \read_data_ctr_reg[0]_i_1_n_7\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => read_data_ctr_reg(0)
    );
\read_data_ctr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_data_ctr_reg[0]_i_1_n_0\,
      CO(2) => \read_data_ctr_reg[0]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[0]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \read_data_ctr_reg[0]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[0]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[0]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[0]_i_1_n_7\,
      S(3) => \read_data_ctr[0]_i_2_n_0\,
      S(2) => \read_data_ctr[0]_i_3_n_0\,
      S(1) => \read_data_ctr[0]_i_4_n_0\,
      S(0) => \read_data_ctr[0]_i_5_n_0\
    );
\read_data_ctr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[8]_i_1_n_5\,
      Q => read_data_ctr_reg(10)
    );
\read_data_ctr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[8]_i_1_n_4\,
      Q => read_data_ctr_reg(11)
    );
\read_data_ctr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[12]_i_1_n_7\,
      Q => read_data_ctr_reg(12)
    );
\read_data_ctr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_data_ctr_reg[8]_i_1_n_0\,
      CO(3) => \read_data_ctr_reg[12]_i_1_n_0\,
      CO(2) => \read_data_ctr_reg[12]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[12]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \read_data_ctr_reg[12]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[12]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[12]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[12]_i_1_n_7\,
      S(3) => \read_data_ctr[12]_i_2_n_0\,
      S(2) => \read_data_ctr[12]_i_3_n_0\,
      S(1) => \read_data_ctr[12]_i_4_n_0\,
      S(0) => \read_data_ctr[12]_i_5_n_0\
    );
\read_data_ctr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[12]_i_1_n_6\,
      Q => read_data_ctr_reg(13)
    );
\read_data_ctr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[12]_i_1_n_5\,
      Q => read_data_ctr_reg(14)
    );
\read_data_ctr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[12]_i_1_n_4\,
      Q => read_data_ctr_reg(15)
    );
\read_data_ctr_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[16]_i_1_n_7\,
      Q => read_data_ctr_reg(16)
    );
\read_data_ctr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_data_ctr_reg[12]_i_1_n_0\,
      CO(3) => \read_data_ctr_reg[16]_i_1_n_0\,
      CO(2) => \read_data_ctr_reg[16]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[16]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \read_data_ctr_reg[16]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[16]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[16]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[16]_i_1_n_7\,
      S(3) => \read_data_ctr[16]_i_2_n_0\,
      S(2) => \read_data_ctr[16]_i_3_n_0\,
      S(1) => \read_data_ctr[16]_i_4_n_0\,
      S(0) => \read_data_ctr[16]_i_5_n_0\
    );
\read_data_ctr_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[16]_i_1_n_6\,
      Q => read_data_ctr_reg(17)
    );
\read_data_ctr_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[16]_i_1_n_5\,
      Q => read_data_ctr_reg(18)
    );
\read_data_ctr_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[16]_i_1_n_4\,
      Q => read_data_ctr_reg(19)
    );
\read_data_ctr_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      D => \read_data_ctr_reg[0]_i_1_n_6\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => read_data_ctr_reg(1)
    );
\read_data_ctr_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[20]_i_1_n_7\,
      Q => read_data_ctr_reg(20)
    );
\read_data_ctr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_data_ctr_reg[16]_i_1_n_0\,
      CO(3) => \read_data_ctr_reg[20]_i_1_n_0\,
      CO(2) => \read_data_ctr_reg[20]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[20]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \read_data_ctr_reg[20]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[20]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[20]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[20]_i_1_n_7\,
      S(3) => \read_data_ctr[20]_i_2_n_0\,
      S(2) => \read_data_ctr[20]_i_3_n_0\,
      S(1) => \read_data_ctr[20]_i_4_n_0\,
      S(0) => \read_data_ctr[20]_i_5_n_0\
    );
\read_data_ctr_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[20]_i_1_n_6\,
      Q => read_data_ctr_reg(21)
    );
\read_data_ctr_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[20]_i_1_n_5\,
      Q => read_data_ctr_reg(22)
    );
\read_data_ctr_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[20]_i_1_n_4\,
      Q => read_data_ctr_reg(23)
    );
\read_data_ctr_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[24]_i_1_n_7\,
      Q => read_data_ctr_reg(24)
    );
\read_data_ctr_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_data_ctr_reg[20]_i_1_n_0\,
      CO(3) => \read_data_ctr_reg[24]_i_1_n_0\,
      CO(2) => \read_data_ctr_reg[24]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[24]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \read_data_ctr_reg[24]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[24]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[24]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[24]_i_1_n_7\,
      S(3) => \read_data_ctr[24]_i_2_n_0\,
      S(2) => \read_data_ctr[24]_i_3_n_0\,
      S(1) => \read_data_ctr[24]_i_4_n_0\,
      S(0) => \read_data_ctr[24]_i_5_n_0\
    );
\read_data_ctr_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[24]_i_1_n_6\,
      Q => read_data_ctr_reg(25)
    );
\read_data_ctr_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[24]_i_1_n_5\,
      Q => read_data_ctr_reg(26)
    );
\read_data_ctr_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[24]_i_1_n_4\,
      Q => read_data_ctr_reg(27)
    );
\read_data_ctr_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[28]_i_1_n_7\,
      Q => read_data_ctr_reg(28)
    );
\read_data_ctr_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_data_ctr_reg[24]_i_1_n_0\,
      CO(3) => \NLW_read_data_ctr_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \read_data_ctr_reg[28]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[28]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \read_data_ctr_reg[28]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[28]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[28]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[28]_i_1_n_7\,
      S(3) => \read_data_ctr[28]_i_2_n_0\,
      S(2) => \read_data_ctr[28]_i_3_n_0\,
      S(1) => \read_data_ctr[28]_i_4_n_0\,
      S(0) => \read_data_ctr[28]_i_5_n_0\
    );
\read_data_ctr_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[28]_i_1_n_6\,
      Q => read_data_ctr_reg(29)
    );
\read_data_ctr_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      D => \read_data_ctr_reg[0]_i_1_n_5\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => read_data_ctr_reg(2)
    );
\read_data_ctr_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[28]_i_1_n_5\,
      Q => read_data_ctr_reg(30)
    );
\read_data_ctr_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[28]_i_1_n_4\,
      Q => read_data_ctr_reg(31)
    );
\read_data_ctr_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      D => \read_data_ctr_reg[0]_i_1_n_4\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => read_data_ctr_reg(3)
    );
\read_data_ctr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[4]_i_1_n_7\,
      Q => read_data_ctr_reg(4)
    );
\read_data_ctr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_data_ctr_reg[0]_i_1_n_0\,
      CO(3) => \read_data_ctr_reg[4]_i_1_n_0\,
      CO(2) => \read_data_ctr_reg[4]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[4]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \read_data_ctr_reg[4]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[4]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[4]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[4]_i_1_n_7\,
      S(3) => \read_data_ctr[4]_i_2_n_0\,
      S(2) => \read_data_ctr[4]_i_3_n_0\,
      S(1) => \read_data_ctr[4]_i_4_n_0\,
      S(0) => \read_data_ctr[4]_i_5_n_0\
    );
\read_data_ctr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[4]_i_1_n_6\,
      Q => read_data_ctr_reg(5)
    );
\read_data_ctr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[4]_i_1_n_5\,
      Q => read_data_ctr_reg(6)
    );
\read_data_ctr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[4]_i_1_n_4\,
      Q => read_data_ctr_reg(7)
    );
\read_data_ctr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[8]_i_1_n_7\,
      Q => read_data_ctr_reg(8)
    );
\read_data_ctr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_data_ctr_reg[4]_i_1_n_0\,
      CO(3) => \read_data_ctr_reg[8]_i_1_n_0\,
      CO(2) => \read_data_ctr_reg[8]_i_1_n_1\,
      CO(1) => \read_data_ctr_reg[8]_i_1_n_2\,
      CO(0) => \read_data_ctr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \read_data_ctr_reg[8]_i_1_n_4\,
      O(2) => \read_data_ctr_reg[8]_i_1_n_5\,
      O(1) => \read_data_ctr_reg[8]_i_1_n_6\,
      O(0) => \read_data_ctr_reg[8]_i_1_n_7\,
      S(3) => \read_data_ctr[8]_i_2_n_0\,
      S(2) => \read_data_ctr[8]_i_3_n_0\,
      S(1) => \read_data_ctr[8]_i_4_n_0\,
      S(0) => \read_data_ctr[8]_i_5_n_0\
    );
\read_data_ctr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => read_data_ctr,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \read_data_ctr_reg[8]_i_1_n_6\,
      Q => read_data_ctr_reg(9)
    );
readyflag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => StartupState(1),
      I1 => StartupState(0),
      I2 => StartupState(2),
      I3 => readyflag_reg_n_0,
      O => readyflag_i_1_n_0
    );
readyflag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => readyflag_i_1_n_0,
      Q => readyflag_reg_n_0
    );
\rising_spi_process.mode_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16,
      Q => \rising_spi_process.mode_reg_n_0\
    );
sck_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk_spi_in,
      I1 => sck_en_reg_n_0,
      O => sck
    );
sck_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => \FSM_onehot_SPIState[4]_i_2_n_0\,
      I2 => sck_en_reg_n_0,
      O => sck_en_i_1_n_0
    );
sck_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_spi_in,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => sck_en_i_1_n_0,
      Q => sck_en_reg_n_0
    );
\send_data_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => readyflag_reg_n_0,
      I1 => spiflag_reg_n_0,
      I2 => powerdownflag,
      O => \send_data_inferred__0/i__n_0\
    );
\send_data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => \send_data_reg[0]_i_1_n_0\,
      G => \send_data_inferred__0/i__n_0\,
      GE => '1',
      Q => s00_axi_rdata(0)
    );
\send_data_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => readyflag_reg_n_0,
      I1 => powerdownflag,
      O => \send_data_reg[0]_i_1_n_0\
    );
\send_data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => readyflag_reg_n_0,
      G => \send_data_inferred__0/i__n_0\,
      GE => '1',
      Q => s00_axi_rdata(1)
    );
\send_data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => sensor_id(0),
      G => \send_data_inferred__0/i__n_0\,
      GE => '1',
      Q => s00_axi_rdata(2)
    );
\send_data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => sensor_id(1),
      G => \send_data_inferred__0/i__n_0\,
      GE => '1',
      Q => s00_axi_rdata(3)
    );
spiflag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => spiflag,
      I1 => spiflag_reg_n_0,
      O => spiflag_i_1_n_0
    );
spiflag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_spi_in,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => spiflag_i_1_n_0,
      Q => spiflag_reg_n_0
    );
\ss_n[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBFFFFFFEBFF0000"
    )
        port map (
      I0 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      I1 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,
      I2 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10,
      I3 => \^axi_bvalid_reg\,
      I4 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I5 => \^ss_n\(0),
      O => \ss_n[0]_i_1_n_0\
    );
\ss_n[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FFFFFFF9FFF0000"
    )
        port map (
      I0 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,
      I1 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10,
      I2 => \^axi_bvalid_reg\,
      I3 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      I4 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I5 => \^ss_n\(1),
      O => \ss_n[1]_i_1_n_0\
    );
\ss_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_spi_in,
      CE => '1',
      D => \ss_n[0]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \^ss_n\(0)
    );
\ss_n_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_spi_in,
      CE => '1',
      D => \ss_n[1]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \^ss_n\(1)
    );
\startup_process.id_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15,
      Q => \startup_process.id_reg_n_0_[0]\
    );
\sw_enable_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \^sw_enable_n\(0)
    );
\sw_enable_n_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \^sw_enable_n\(1)
    );
\vdd18_toggle[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => StartupState(0),
      I1 => \startup_process.id_reg_n_0_[0]\,
      I2 => StartupState(1),
      I3 => StartupState(2),
      I4 => \^vdd18_toggle\(0),
      O => \vdd18_toggle[0]_i_1_n_0\
    );
\vdd18_toggle[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => StartupState(0),
      I2 => StartupState(1),
      I3 => StartupState(2),
      I4 => \^vdd18_toggle\(1),
      O => \vdd18_toggle[1]_i_1_n_0\
    );
\vdd18_toggle_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \vdd18_toggle[0]_i_1_n_0\,
      Q => \^vdd18_toggle\(0)
    );
\vdd18_toggle_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \vdd18_toggle[1]_i_1_n_0\,
      Q => \^vdd18_toggle\(1)
    );
\vdd33_toggle[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => StartupState(2),
      I1 => StartupState(1),
      I2 => \startup_process.id_reg_n_0_[0]\,
      I3 => StartupState(0),
      I4 => \^vdd33_toggle\(0),
      O => \vdd33_toggle[0]_i_1_n_0\
    );
\vdd33_toggle[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => StartupState(2),
      I1 => \startup_process.id_reg_n_0_[0]\,
      I2 => StartupState(1),
      I3 => StartupState(0),
      I4 => \^vdd33_toggle\(1),
      O => \vdd33_toggle[1]_i_1_n_0\
    );
\vdd33_toggle_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \vdd33_toggle[0]_i_1_n_0\,
      Q => \^vdd33_toggle\(0)
    );
\vdd33_toggle_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \vdd33_toggle[1]_i_1_n_0\,
      Q => \^vdd33_toggle\(1)
    );
\vddpix_toggle[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => StartupState(2),
      I1 => StartupState(1),
      I2 => StartupState(0),
      I3 => \startup_process.id_reg_n_0_[0]\,
      I4 => \^vddpix_toggle\(0),
      O => \vddpix_toggle[0]_i_1_n_0\
    );
\vddpix_toggle[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => StartupState(2),
      I1 => \startup_process.id_reg_n_0_[0]\,
      I2 => StartupState(0),
      I3 => StartupState(1),
      I4 => \^vddpix_toggle\(1),
      O => \vddpix_toggle[1]_i_1_n_0\
    );
\vddpix_toggle_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \vddpix_toggle[0]_i_1_n_0\,
      Q => \^vddpix_toggle\(0)
    );
\vddpix_toggle_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \vddpix_toggle[1]_i_1_n_0\,
      Q => \^vddpix_toggle\(1)
    );
write_data_ctr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => write_data_ctr0_carry_n_0,
      CO(2) => write_data_ctr0_carry_n_1,
      CO(1) => write_data_ctr0_carry_n_2,
      CO(0) => write_data_ctr0_carry_n_3,
      CYINIT => write_data_ctr(0),
      DI(3 downto 0) => write_data_ctr(4 downto 1),
      O(3 downto 0) => in9(4 downto 1),
      S(3) => write_data_ctr0_carry_i_1_n_0,
      S(2) => write_data_ctr0_carry_i_2_n_0,
      S(1) => write_data_ctr0_carry_i_3_n_0,
      S(0) => write_data_ctr0_carry_i_4_n_0
    );
\write_data_ctr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => write_data_ctr0_carry_n_0,
      CO(3) => \write_data_ctr0_carry__0_n_0\,
      CO(2) => \write_data_ctr0_carry__0_n_1\,
      CO(1) => \write_data_ctr0_carry__0_n_2\,
      CO(0) => \write_data_ctr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_data_ctr(8 downto 5),
      O(3 downto 0) => in9(8 downto 5),
      S(3) => \write_data_ctr0_carry__0_i_1_n_0\,
      S(2) => \write_data_ctr0_carry__0_i_2_n_0\,
      S(1) => \write_data_ctr0_carry__0_i_3_n_0\,
      S(0) => \write_data_ctr0_carry__0_i_4_n_0\
    );
\write_data_ctr0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(8),
      O => \write_data_ctr0_carry__0_i_1_n_0\
    );
\write_data_ctr0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(7),
      O => \write_data_ctr0_carry__0_i_2_n_0\
    );
\write_data_ctr0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(6),
      O => \write_data_ctr0_carry__0_i_3_n_0\
    );
\write_data_ctr0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(5),
      O => \write_data_ctr0_carry__0_i_4_n_0\
    );
\write_data_ctr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_data_ctr0_carry__0_n_0\,
      CO(3) => \write_data_ctr0_carry__1_n_0\,
      CO(2) => \write_data_ctr0_carry__1_n_1\,
      CO(1) => \write_data_ctr0_carry__1_n_2\,
      CO(0) => \write_data_ctr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_data_ctr(12 downto 9),
      O(3 downto 0) => in9(12 downto 9),
      S(3) => \write_data_ctr0_carry__1_i_1_n_0\,
      S(2) => \write_data_ctr0_carry__1_i_2_n_0\,
      S(1) => \write_data_ctr0_carry__1_i_3_n_0\,
      S(0) => \write_data_ctr0_carry__1_i_4_n_0\
    );
\write_data_ctr0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(12),
      O => \write_data_ctr0_carry__1_i_1_n_0\
    );
\write_data_ctr0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(11),
      O => \write_data_ctr0_carry__1_i_2_n_0\
    );
\write_data_ctr0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(10),
      O => \write_data_ctr0_carry__1_i_3_n_0\
    );
\write_data_ctr0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(9),
      O => \write_data_ctr0_carry__1_i_4_n_0\
    );
\write_data_ctr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_data_ctr0_carry__1_n_0\,
      CO(3) => \write_data_ctr0_carry__2_n_0\,
      CO(2) => \write_data_ctr0_carry__2_n_1\,
      CO(1) => \write_data_ctr0_carry__2_n_2\,
      CO(0) => \write_data_ctr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_data_ctr(16 downto 13),
      O(3 downto 0) => in9(16 downto 13),
      S(3) => \write_data_ctr0_carry__2_i_1_n_0\,
      S(2) => \write_data_ctr0_carry__2_i_2_n_0\,
      S(1) => \write_data_ctr0_carry__2_i_3_n_0\,
      S(0) => \write_data_ctr0_carry__2_i_4_n_0\
    );
\write_data_ctr0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(16),
      O => \write_data_ctr0_carry__2_i_1_n_0\
    );
\write_data_ctr0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(15),
      O => \write_data_ctr0_carry__2_i_2_n_0\
    );
\write_data_ctr0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(14),
      O => \write_data_ctr0_carry__2_i_3_n_0\
    );
\write_data_ctr0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(13),
      O => \write_data_ctr0_carry__2_i_4_n_0\
    );
\write_data_ctr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_data_ctr0_carry__2_n_0\,
      CO(3) => \write_data_ctr0_carry__3_n_0\,
      CO(2) => \write_data_ctr0_carry__3_n_1\,
      CO(1) => \write_data_ctr0_carry__3_n_2\,
      CO(0) => \write_data_ctr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_data_ctr(20 downto 17),
      O(3 downto 0) => in9(20 downto 17),
      S(3) => \write_data_ctr0_carry__3_i_1_n_0\,
      S(2) => \write_data_ctr0_carry__3_i_2_n_0\,
      S(1) => \write_data_ctr0_carry__3_i_3_n_0\,
      S(0) => \write_data_ctr0_carry__3_i_4_n_0\
    );
\write_data_ctr0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(20),
      O => \write_data_ctr0_carry__3_i_1_n_0\
    );
\write_data_ctr0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(19),
      O => \write_data_ctr0_carry__3_i_2_n_0\
    );
\write_data_ctr0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(18),
      O => \write_data_ctr0_carry__3_i_3_n_0\
    );
\write_data_ctr0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(17),
      O => \write_data_ctr0_carry__3_i_4_n_0\
    );
\write_data_ctr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_data_ctr0_carry__3_n_0\,
      CO(3) => \write_data_ctr0_carry__4_n_0\,
      CO(2) => \write_data_ctr0_carry__4_n_1\,
      CO(1) => \write_data_ctr0_carry__4_n_2\,
      CO(0) => \write_data_ctr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_data_ctr(24 downto 21),
      O(3 downto 0) => in9(24 downto 21),
      S(3) => \write_data_ctr0_carry__4_i_1_n_0\,
      S(2) => \write_data_ctr0_carry__4_i_2_n_0\,
      S(1) => \write_data_ctr0_carry__4_i_3_n_0\,
      S(0) => \write_data_ctr0_carry__4_i_4_n_0\
    );
\write_data_ctr0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(24),
      O => \write_data_ctr0_carry__4_i_1_n_0\
    );
\write_data_ctr0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(23),
      O => \write_data_ctr0_carry__4_i_2_n_0\
    );
\write_data_ctr0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(22),
      O => \write_data_ctr0_carry__4_i_3_n_0\
    );
\write_data_ctr0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(21),
      O => \write_data_ctr0_carry__4_i_4_n_0\
    );
\write_data_ctr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_data_ctr0_carry__4_n_0\,
      CO(3) => \write_data_ctr0_carry__5_n_0\,
      CO(2) => \write_data_ctr0_carry__5_n_1\,
      CO(1) => \write_data_ctr0_carry__5_n_2\,
      CO(0) => \write_data_ctr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_data_ctr(28 downto 25),
      O(3 downto 0) => in9(28 downto 25),
      S(3) => \write_data_ctr0_carry__5_i_1_n_0\,
      S(2) => \write_data_ctr0_carry__5_i_2_n_0\,
      S(1) => \write_data_ctr0_carry__5_i_3_n_0\,
      S(0) => \write_data_ctr0_carry__5_i_4_n_0\
    );
\write_data_ctr0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(28),
      O => \write_data_ctr0_carry__5_i_1_n_0\
    );
\write_data_ctr0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(27),
      O => \write_data_ctr0_carry__5_i_2_n_0\
    );
\write_data_ctr0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(26),
      O => \write_data_ctr0_carry__5_i_3_n_0\
    );
\write_data_ctr0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(25),
      O => \write_data_ctr0_carry__5_i_4_n_0\
    );
\write_data_ctr0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_data_ctr0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_write_data_ctr0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \write_data_ctr0_carry__6_n_2\,
      CO(0) => \write_data_ctr0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => write_data_ctr(30 downto 29),
      O(3) => \NLW_write_data_ctr0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in9(31 downto 29),
      S(3) => '0',
      S(2) => \write_data_ctr0_carry__6_i_1_n_0\,
      S(1) => \write_data_ctr0_carry__6_i_2_n_0\,
      S(0) => \write_data_ctr0_carry__6_i_3_n_0\
    );
\write_data_ctr0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(31),
      O => \write_data_ctr0_carry__6_i_1_n_0\
    );
\write_data_ctr0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(30),
      O => \write_data_ctr0_carry__6_i_2_n_0\
    );
\write_data_ctr0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(29),
      O => \write_data_ctr0_carry__6_i_3_n_0\
    );
write_data_ctr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(4),
      O => write_data_ctr0_carry_i_1_n_0
    );
write_data_ctr0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(3),
      O => write_data_ctr0_carry_i_2_n_0
    );
write_data_ctr0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(2),
      O => write_data_ctr0_carry_i_3_n_0
    );
write_data_ctr0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_data_ctr(1),
      O => write_data_ctr0_carry_i_4_n_0
    );
\write_data_ctr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I2 => write_data_ctr(0),
      O => \write_data_ctr[0]_i_1_n_0\
    );
\write_data_ctr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(10),
      O => \write_data_ctr[10]_i_1_n_0\
    );
\write_data_ctr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(11),
      O => \write_data_ctr[11]_i_1_n_0\
    );
\write_data_ctr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(12),
      O => \write_data_ctr[12]_i_1_n_0\
    );
\write_data_ctr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(13),
      O => \write_data_ctr[13]_i_1_n_0\
    );
\write_data_ctr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(14),
      O => \write_data_ctr[14]_i_1_n_0\
    );
\write_data_ctr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(15),
      O => \write_data_ctr[15]_i_1_n_0\
    );
\write_data_ctr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(16),
      O => \write_data_ctr[16]_i_1_n_0\
    );
\write_data_ctr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(17),
      O => \write_data_ctr[17]_i_1_n_0\
    );
\write_data_ctr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(18),
      O => \write_data_ctr[18]_i_1_n_0\
    );
\write_data_ctr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(19),
      O => \write_data_ctr[19]_i_1_n_0\
    );
\write_data_ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in9(1),
      I2 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      O => \write_data_ctr[1]_i_1_n_0\
    );
\write_data_ctr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(20),
      O => \write_data_ctr[20]_i_1_n_0\
    );
\write_data_ctr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(21),
      O => \write_data_ctr[21]_i_1_n_0\
    );
\write_data_ctr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(22),
      O => \write_data_ctr[22]_i_1_n_0\
    );
\write_data_ctr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(23),
      O => \write_data_ctr[23]_i_1_n_0\
    );
\write_data_ctr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(24),
      O => \write_data_ctr[24]_i_1_n_0\
    );
\write_data_ctr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(25),
      O => \write_data_ctr[25]_i_1_n_0\
    );
\write_data_ctr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(26),
      O => \write_data_ctr[26]_i_1_n_0\
    );
\write_data_ctr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(27),
      O => \write_data_ctr[27]_i_1_n_0\
    );
\write_data_ctr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(28),
      O => \write_data_ctr[28]_i_1_n_0\
    );
\write_data_ctr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(29),
      O => \write_data_ctr[29]_i_1_n_0\
    );
\write_data_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in9(2),
      I2 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      O => \write_data_ctr[2]_i_1_n_0\
    );
\write_data_ctr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(30),
      O => \write_data_ctr[30]_i_1_n_0\
    );
\write_data_ctr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      O => write_data_ctr_0
    );
\write_data_ctr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(31),
      O => \write_data_ctr[31]_i_2_n_0\
    );
\write_data_ctr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in9(3),
      I2 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      O => \write_data_ctr[3]_i_1_n_0\
    );
\write_data_ctr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(4),
      O => \write_data_ctr[4]_i_1_n_0\
    );
\write_data_ctr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(5),
      O => \write_data_ctr[5]_i_1_n_0\
    );
\write_data_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(6),
      O => \write_data_ctr[6]_i_1_n_0\
    );
\write_data_ctr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(7),
      O => \write_data_ctr[7]_i_1_n_0\
    );
\write_data_ctr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(8),
      O => \write_data_ctr[8]_i_1_n_0\
    );
\write_data_ctr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I1 => in9(9),
      O => \write_data_ctr[9]_i_1_n_0\
    );
\write_data_ctr_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      D => \write_data_ctr[0]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => write_data_ctr(0)
    );
\write_data_ctr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[10]_i_1_n_0\,
      Q => write_data_ctr(10)
    );
\write_data_ctr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[11]_i_1_n_0\,
      Q => write_data_ctr(11)
    );
\write_data_ctr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[12]_i_1_n_0\,
      Q => write_data_ctr(12)
    );
\write_data_ctr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[13]_i_1_n_0\,
      Q => write_data_ctr(13)
    );
\write_data_ctr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[14]_i_1_n_0\,
      Q => write_data_ctr(14)
    );
\write_data_ctr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[15]_i_1_n_0\,
      Q => write_data_ctr(15)
    );
\write_data_ctr_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[16]_i_1_n_0\,
      Q => write_data_ctr(16)
    );
\write_data_ctr_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[17]_i_1_n_0\,
      Q => write_data_ctr(17)
    );
\write_data_ctr_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[18]_i_1_n_0\,
      Q => write_data_ctr(18)
    );
\write_data_ctr_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[19]_i_1_n_0\,
      Q => write_data_ctr(19)
    );
\write_data_ctr_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      D => \write_data_ctr[1]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => write_data_ctr(1)
    );
\write_data_ctr_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[20]_i_1_n_0\,
      Q => write_data_ctr(20)
    );
\write_data_ctr_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[21]_i_1_n_0\,
      Q => write_data_ctr(21)
    );
\write_data_ctr_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[22]_i_1_n_0\,
      Q => write_data_ctr(22)
    );
\write_data_ctr_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[23]_i_1_n_0\,
      Q => write_data_ctr(23)
    );
\write_data_ctr_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[24]_i_1_n_0\,
      Q => write_data_ctr(24)
    );
\write_data_ctr_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[25]_i_1_n_0\,
      Q => write_data_ctr(25)
    );
\write_data_ctr_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[26]_i_1_n_0\,
      Q => write_data_ctr(26)
    );
\write_data_ctr_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[27]_i_1_n_0\,
      Q => write_data_ctr(27)
    );
\write_data_ctr_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[28]_i_1_n_0\,
      Q => write_data_ctr(28)
    );
\write_data_ctr_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[29]_i_1_n_0\,
      Q => write_data_ctr(29)
    );
\write_data_ctr_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      D => \write_data_ctr[2]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => write_data_ctr(2)
    );
\write_data_ctr_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[30]_i_1_n_0\,
      Q => write_data_ctr(30)
    );
\write_data_ctr_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[31]_i_2_n_0\,
      Q => write_data_ctr(31)
    );
\write_data_ctr_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      D => \write_data_ctr[3]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => write_data_ctr(3)
    );
\write_data_ctr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[4]_i_1_n_0\,
      Q => write_data_ctr(4)
    );
\write_data_ctr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[5]_i_1_n_0\,
      Q => write_data_ctr(5)
    );
\write_data_ctr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[6]_i_1_n_0\,
      Q => write_data_ctr(6)
    );
\write_data_ctr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[7]_i_1_n_0\,
      Q => write_data_ctr(7)
    );
\write_data_ctr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[8]_i_1_n_0\,
      Q => write_data_ctr(8)
    );
\write_data_ctr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \write_data_ctr[9]_i_1_n_0\,
      Q => write_data_ctr(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_72M_pll : in STD_LOGIC;
    clk_pll_out : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_reset_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    clk_spi_in : in STD_LOGIC;
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    sck : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "main_design_noip_ctrl_0_0,noip_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "noip_ctrl,Vivado 2024.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of miso : signal is "xilinx.com:interface:spi:1.0 noip_spi IO1_I";
  attribute x_interface_info of mosi : signal is "xilinx.com:interface:spi:1.0 noip_spi IO1_O";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of sck : signal is "xilinx.com:interface:spi:1.0 noip_spi SCK_O";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute x_interface_info of ss_n : signal is "xilinx.com:interface:spi:1.0 noip_spi SS_O";
begin
  noip_reset_n(0) <= \<const0>\;
  noip_reset_n(1) <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \<const0>\;
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10) <= \<const0>\;
  s00_axi_rdata(9) <= \<const0>\;
  s00_axi_rdata(8) <= \<const0>\;
  s00_axi_rdata(7) <= \<const0>\;
  s00_axi_rdata(6) <= \<const0>\;
  s00_axi_rdata(5) <= \<const0>\;
  s00_axi_rdata(4) <= \<const0>\;
  s00_axi_rdata(3 downto 0) <= \^s00_axi_rdata\(3 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_bvalid_reg => s00_axi_bvalid,
      axi_rvalid_reg => s00_axi_rvalid,
      clk_72M_pll => clk_72M_pll,
      clk_pll_out(0 to 1) => clk_pll_out(0 to 1),
      clk_spi_in => clk_spi_in,
      mosi => mosi,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(3 downto 0) => \^s00_axi_rdata\(3 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sck => sck,
      ss_n(0 to 1) => ss_n(0 to 1),
      sw_enable_n(0 to 1) => sw_enable_n(0 to 1),
      vdd18_toggle(0 to 1) => vdd18_toggle(0 to 1),
      vdd33_toggle(0 to 1) => vdd33_toggle(0 to 1),
      vddpix_toggle(0 to 1) => vddpix_toggle(0 to 1)
    );
end STRUCTURE;
