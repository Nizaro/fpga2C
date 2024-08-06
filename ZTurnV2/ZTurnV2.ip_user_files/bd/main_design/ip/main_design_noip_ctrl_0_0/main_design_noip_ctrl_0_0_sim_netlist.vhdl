-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Aug  6 15:02:56 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_noip_ctrl_0_0/main_design_noip_ctrl_0_0_sim_netlist.vhdl
-- Design      : main_design_noip_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_bvalid_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    \slv_reg0_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_SPIState_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg0_reg[12]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \FSM_onehot_StartupState_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_SPIState_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_SPIState_reg[4]\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    \startup_process.id_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_StartupState_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_StartupState_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_SPIState_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_SPIState_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_SPIState_reg[0]_2\ : in STD_LOGIC;
    mosi_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_SPIState_reg[0]_3\ : in STD_LOGIC;
    \rising_spi_process.mode_reg\ : in STD_LOGIC;
    mosi_reg_0 : in STD_LOGIC;
    mosi_reg_1 : in STD_LOGIC;
    mosi_i_5_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mosi_reg_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s00_axi_rdata[31]\ : in STD_LOGIC_VECTOR ( 28 downto 0 );
    spiflag : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    \startup_process.id_reg[0]_0\ : in STD_LOGIC;
    mosi_reg_3 : in STD_LOGIC;
    mosi : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI : entity is "noip_ctrl_slave_lite_v1_0_S00_AXI";
end main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_SPIState[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal mosi_i_10_n_0 : STD_LOGIC;
  signal mosi_i_11_n_0 : STD_LOGIC;
  signal mosi_i_14_n_0 : STD_LOGIC;
  signal mosi_i_15_n_0 : STD_LOGIC;
  signal mosi_i_16_n_0 : STD_LOGIC;
  signal mosi_i_17_n_0 : STD_LOGIC;
  signal mosi_i_18_n_0 : STD_LOGIC;
  signal mosi_i_19_n_0 : STD_LOGIC;
  signal mosi_i_20_n_0 : STD_LOGIC;
  signal mosi_i_21_n_0 : STD_LOGIC;
  signal mosi_i_22_n_0 : STD_LOGIC;
  signal mosi_i_23_n_0 : STD_LOGIC;
  signal mosi_i_3_n_0 : STD_LOGIC;
  signal mosi_i_5_n_0 : STD_LOGIC;
  signal mosi_reg_i_6_n_0 : STD_LOGIC;
  signal mosi_reg_i_7_n_0 : STD_LOGIC;
  signal mosi_reg_i_8_n_0 : STD_LOGIC;
  signal mosi_reg_i_9_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \^slv_reg0_reg[3]_0\ : STD_LOGIC;
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
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal spi_addr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_StartupState[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_StartupState[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state_write[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mosi_i_10 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mosi_i_11 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg1_reg[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg1_reg[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg1_reg[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg1_reg[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg1_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg1_reg[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg1_reg[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg1_reg[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg1_reg[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg1_reg[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg1_reg[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ss_n[0]_i_2\ : label is "soft_lutpair3";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  SR(0) <= \^sr\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_wready <= \^s00_axi_wready\;
  \slv_reg0_reg[3]_0\ <= \^slv_reg0_reg[3]_0\;
\FSM_onehot_SPIState[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAFFEA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg[0]_0\,
      I1 => \FSM_onehot_SPIState_reg[0]_1\,
      I2 => \FSM_onehot_SPIState_reg[0]_2\,
      I3 => mosi_reg(1),
      I4 => \FSM_onehot_SPIState_reg[0]_3\,
      I5 => \FSM_onehot_SPIState[4]_i_7_n_0\,
      O => \FSM_onehot_SPIState_reg[1]\(0)
    );
\FSM_onehot_SPIState[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF280028002800"
    )
        port map (
      I0 => \^axi_bvalid_reg_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => mosi_reg(0),
      I4 => mosi_reg(2),
      I5 => \^axi_rvalid_reg_0\,
      O => \FSM_onehot_SPIState[4]_i_7_n_0\
    );
\FSM_onehot_StartupState[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF9000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^axi_bvalid_reg_0\,
      I3 => \startup_process.id_reg[0]\(0),
      I4 => \FSM_onehot_StartupState_reg[0]_0\,
      I5 => \FSM_onehot_StartupState_reg[0]_1\,
      O => E(0)
    );
\FSM_onehot_StartupState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \startup_process.id_reg[0]\(0),
      I1 => \^axi_bvalid_reg_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(0)
    );
\FSM_onehot_StartupState[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \startup_process.id_reg[0]\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^axi_bvalid_reg_0\,
      O => D(1)
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
      S => \^sr\(0)
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
      R => \^sr\(0)
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
      R => \^sr\(0)
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF8888FFFF"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF0000"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_rready,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \^sr\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[3]_i_2_n_0\,
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
      I4 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[3]_i_2_n_0\,
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
      I4 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      O => \axi_araddr[3]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2FFAFAFAF"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(1),
      I3 => \^axi_rvalid_reg_0\,
      I4 => s00_axi_rready,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_aresetn,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_aresetn,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
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
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFCCCCFFFFCCCC"
    )
        port map (
      I0 => axi_wready,
      I1 => axi_bvalid_i_2_n_0,
      I2 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \^axi_bvalid_reg_0\,
      I5 => s00_axi_bready,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid_reg_0\,
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FF00FF80FF80"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(0),
      I3 => \^axi_rvalid_reg_0\,
      I4 => s00_axi_rready,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \^sr\(0)
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
      R => \^sr\(0)
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCFEFFFEFCFE00"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => mosi_reg_3,
      I2 => mosi_i_5_n_0,
      I3 => mosi_reg(3),
      I4 => mosi_reg(1),
      I5 => mosi,
      O => \FSM_onehot_SPIState_reg[4]\
    );
mosi_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mosi_i_5_0(3),
      I1 => spi_addr(8),
      O => mosi_i_10_n_0
    );
mosi_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mosi_i_22_n_0,
      I1 => mosi_i_5_0(2),
      I2 => mosi_i_23_n_0,
      I3 => mosi_i_5_0(3),
      O => mosi_i_11_n_0
    );
mosi_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(7),
      I1 => spi_addr(6),
      I2 => mosi_reg_2(1),
      I3 => spi_addr(5),
      I4 => mosi_reg_2(0),
      I5 => spi_addr(4),
      O => mosi_i_14_n_0
    );
mosi_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[15]\,
      I1 => \slv_reg0_reg_n_0_[14]\,
      I2 => mosi_reg_2(1),
      I3 => \slv_reg0_reg_n_0_[13]\,
      I4 => mosi_reg_2(0),
      I5 => spi_addr(8),
      O => mosi_i_15_n_0
    );
mosi_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => mosi_reg_2(1),
      I3 => \^q\(1),
      I4 => mosi_reg_2(0),
      I5 => \^q\(0),
      O => mosi_i_16_n_0
    );
mosi_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(3),
      I1 => spi_addr(2),
      I2 => mosi_reg_2(1),
      I3 => spi_addr(1),
      I4 => mosi_reg_2(0),
      I5 => spi_addr(0),
      O => mosi_i_17_n_0
    );
mosi_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => mosi_reg_2(1),
      I3 => \slv_reg0_reg_n_0_[25]\,
      I4 => mosi_reg_2(0),
      I5 => \slv_reg0_reg_n_0_[24]\,
      O => mosi_i_18_n_0
    );
mosi_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => mosi_reg_2(1),
      I3 => \slv_reg0_reg_n_0_[29]\,
      I4 => mosi_reg_2(0),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => mosi_i_19_n_0
    );
mosi_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => mosi_reg_2(1),
      I3 => \slv_reg0_reg_n_0_[17]\,
      I4 => mosi_reg_2(0),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => mosi_i_20_n_0
    );
mosi_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => mosi_reg_2(1),
      I3 => \slv_reg0_reg_n_0_[21]\,
      I4 => mosi_reg_2(0),
      I5 => \slv_reg0_reg_n_0_[20]\,
      O => mosi_i_21_n_0
    );
mosi_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(3),
      I1 => spi_addr(2),
      I2 => mosi_i_5_0(1),
      I3 => spi_addr(1),
      I4 => mosi_i_5_0(0),
      I5 => spi_addr(0),
      O => mosi_i_22_n_0
    );
mosi_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spi_addr(7),
      I1 => spi_addr(6),
      I2 => mosi_i_5_0(1),
      I3 => spi_addr(5),
      I4 => mosi_i_5_0(0),
      I5 => spi_addr(4),
      O => mosi_i_23_n_0
    );
mosi_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mosi_reg_i_6_n_0,
      I1 => mosi_reg_i_7_n_0,
      I2 => mosi_reg_2(4),
      I3 => mosi_reg_i_8_n_0,
      I4 => mosi_reg_2(3),
      I5 => mosi_reg_i_9_n_0,
      O => mosi_i_3_n_0
    );
mosi_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEF000000000"
    )
        port map (
      I0 => mosi_i_10_n_0,
      I1 => mosi_i_11_n_0,
      I2 => \rising_spi_process.mode_reg\,
      I3 => mosi_reg_0,
      I4 => mosi_reg_1,
      I5 => mosi_reg(1),
      O => mosi_i_5_n_0
    );
mosi_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_14_n_0,
      I1 => mosi_i_15_n_0,
      O => mosi_reg_i_6_n_0,
      S => mosi_reg_2(2)
    );
mosi_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_16_n_0,
      I1 => mosi_i_17_n_0,
      O => mosi_reg_i_7_n_0,
      S => mosi_reg_2(2)
    );
mosi_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_18_n_0,
      I1 => mosi_i_19_n_0,
      O => mosi_reg_i_8_n_0,
      S => mosi_reg_2(2)
    );
mosi_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_20_n_0,
      I1 => mosi_i_21_n_0,
      O => mosi_reg_i_9_n_0,
      S => mosi_reg_2(2)
    );
\noip_reset_n[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\reg1_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(6),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(8)
    );
\reg1_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(7),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(9)
    );
\reg1_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(8),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(10)
    );
\reg1_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(0)
    );
\reg1_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(1)
    );
\reg1_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(0),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(2)
    );
\reg1_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(1),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(3)
    );
\reg1_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(2),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(4)
    );
\reg1_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(3),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(5)
    );
\reg1_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(4),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(6)
    );
\reg1_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_addr(5),
      I1 => spiflag,
      O => \slv_reg0_reg[12]_0\(7)
    );
\rising_spi_process.mode_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF2000"
    )
        port map (
      I0 => mosi_reg(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^axi_bvalid_reg_0\,
      I4 => \rising_spi_process.mode_reg\,
      O => \FSM_onehot_SPIState_reg[0]\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s00_axi_rdata[31]\(0),
      I2 => slv_reg2(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => slv_reg2(10),
      I1 => slv_reg3(10),
      I2 => \s00_axi_rdata[31]\(10),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => spi_addr(6),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => spi_addr(7),
      I1 => \s00_axi_rdata[31]\(11),
      I2 => slv_reg2(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => spi_addr(8),
      I1 => \s00_axi_rdata[31]\(12),
      I2 => slv_reg2(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg2(13),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[13]\,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg2(14),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[14]\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg2(15),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[15]\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => slv_reg3(16),
      I2 => \slv_reg0_reg_n_0_[16]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(13),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => slv_reg3(17),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(14),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => \s00_axi_rdata[31]\(15),
      I2 => slv_reg2(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(18),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => slv_reg3(19),
      I2 => \s00_axi_rdata[31]\(16),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[19]\,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \s00_axi_rdata[31]\(1),
      I2 => slv_reg2(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => \s00_axi_rdata[31]\(17),
      I2 => slv_reg2(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(20),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => slv_reg2(21),
      I1 => slv_reg3(21),
      I2 => \s00_axi_rdata[31]\(18),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[21]\,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => \s00_axi_rdata[31]\(19),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(23),
      I1 => slv_reg3(23),
      I2 => \slv_reg0_reg_n_0_[23]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(20),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => \s00_axi_rdata[31]\(21),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => \s00_axi_rdata[31]\(22),
      I2 => slv_reg2(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(25),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(26),
      I1 => slv_reg3(26),
      I2 => \slv_reg0_reg_n_0_[26]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(23),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(27),
      I1 => slv_reg3(27),
      I2 => \slv_reg0_reg_n_0_[27]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(24),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => slv_reg2(28),
      I1 => slv_reg3(28),
      I2 => \s00_axi_rdata[31]\(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => \s00_axi_rdata[31]\(26),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(29),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => slv_reg3(2),
      I2 => \^q\(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => \s00_axi_rdata[31]\(27),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(30),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => slv_reg3(31),
      I2 => \s00_axi_rdata[31]\(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[31]\,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => slv_reg3(3),
      I2 => \^q\(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \s00_axi_rdata[31]\(4),
      I1 => spi_addr(0),
      I2 => slv_reg2(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => spi_addr(1),
      I1 => \s00_axi_rdata[31]\(5),
      I2 => slv_reg2(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => slv_reg3(6),
      I2 => spi_addr(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => slv_reg3(7),
      I2 => spi_addr(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \s00_axi_rdata[31]\(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => slv_reg2(8),
      I1 => slv_reg3(8),
      I2 => \s00_axi_rdata[31]\(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => spi_addr(4),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => spi_addr(5),
      I1 => \s00_axi_rdata[31]\(9),
      I2 => slv_reg2(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(9),
      O => s00_axi_rdata(9)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000888"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      I2 => s00_axi_awaddr(1),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000888"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      I2 => s00_axi_awaddr(1),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000888"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => s00_axi_awaddr(1),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000888"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      I2 => s00_axi_awaddr(1),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => spi_addr(6),
      R => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => spi_addr(7),
      R => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => spi_addr(8),
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => spi_addr(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => spi_addr(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => spi_addr(2),
      R => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => spi_addr(3),
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => spi_addr(4),
      R => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => spi_addr(5),
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(1),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \slv_reg3[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \slv_reg3[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \slv_reg3[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \slv_reg3[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \^sr\(0)
    );
\ss_n[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \^slv_reg0_reg[3]_0\
    );
\startup_process.id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF40000000"
    )
        port map (
      I0 => \^slv_reg0_reg[3]_0\,
      I1 => \startup_process.id_reg[0]\(0),
      I2 => \^axi_bvalid_reg_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \startup_process.id_reg[0]_0\,
      O => \FSM_onehot_StartupState_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_ctrl_0_0_noip_ctrl is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    clk_pll_out : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_reset_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    axi_bvalid_reg : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    sck : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mosi : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    clk_72M_pll : in STD_LOGIC;
    clk_spi_in : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    miso : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    spi_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_design_noip_ctrl_0_0_noip_ctrl : entity is "noip_ctrl";
end main_design_noip_ctrl_0_0_noip_ctrl;

architecture STRUCTURE of main_design_noip_ctrl_0_0_noip_ctrl is
  signal \FSM_onehot_SPIState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[2]_i_1_n_0\ : STD_LOGIC;
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
  signal \FSM_onehot_SPIState[4]_i_26_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState[4]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SPIState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_SPIState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_SPIState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_SPIState_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_StartupState[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_StartupState[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_StartupState_reg_n_0_[9]\ : STD_LOGIC;
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
  signal id : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in11 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_12_n_0 : STD_LOGIC;
  signal mosi_i_13_n_0 : STD_LOGIC;
  signal mosi_i_24_n_0 : STD_LOGIC;
  signal mosi_i_25_n_0 : STD_LOGIC;
  signal mosi_i_26_n_0 : STD_LOGIC;
  signal mosi_i_27_n_0 : STD_LOGIC;
  signal mosi_i_28_n_0 : STD_LOGIC;
  signal mosi_i_29_n_0 : STD_LOGIC;
  signal mosi_i_2_n_0 : STD_LOGIC;
  signal mosi_i_30_n_0 : STD_LOGIC;
  signal mosi_i_31_n_0 : STD_LOGIC;
  signal mosi_i_4_n_0 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_47 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_48 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_49 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_50 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_51 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_52 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_53 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_54 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_55 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_56 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_57 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_58 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_59 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_60 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal \^noip_reset_n\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \noip_reset_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \noip_reset_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \pll_clk_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \pll_clk_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \pll_clk_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \pll_clk_en_reg_n_0_[1]\ : STD_LOGIC;
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
  signal read_spi_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \read_spi_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \read_spi_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \read_spi_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \read_spi_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_spi_data[9]_i_1_n_0\ : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \rising_spi_process.mode_reg_n_0\ : STD_LOGIC;
  signal sck_en_i_1_n_0 : STD_LOGIC;
  signal sck_en_reg_n_0 : STD_LOGIC;
  signal sensor_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spiflag : STD_LOGIC;
  signal spiflag_i_1_n_0 : STD_LOGIC;
  signal \^ss_n\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \ss_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \ss_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \startup_process.id_reg_n_0_[0]\ : STD_LOGIC;
  signal \^sw_enable_n\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \sw_enable_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \sw_enable_n[1]_i_1_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_15\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_16\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_17\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_18\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_SPIState[4]_i_5\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[0]\ : label is "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[1]\ : label is "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[2]\ : label is "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[3]\ : label is "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SPIState_reg[4]\ : label is "idle:00001,s_addr:00010,send_rd_data:01000,w_data:10000,r_data:00100";
  attribute SOFT_HLUTNM of \FSM_onehot_StartupState[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_StartupState[10]_i_3\ : label is "soft_lutpair20";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[0]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[10]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[1]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[2]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[3]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[4]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[5]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[6]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[7]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[8]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_StartupState_reg[9]\ : label is "onpix:00000001000,onclk:00000010000,on33:00000000100,off18:10000000000,off33:01000000000,on18:00000000010,idle:00000000001,offpix:00100000000,offrstn:00001000000,offclk:00010000000,onrstn:00000100000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of addr_ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_ctr0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \addr_ctr[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \addr_ctr[11]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \addr_ctr[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \addr_ctr[13]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \addr_ctr[14]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \addr_ctr[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \addr_ctr[16]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \addr_ctr[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \addr_ctr[18]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \addr_ctr[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \addr_ctr[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \addr_ctr[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addr_ctr[21]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addr_ctr[22]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_ctr[23]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_ctr[24]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addr_ctr[25]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addr_ctr[26]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addr_ctr[27]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addr_ctr[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \addr_ctr[29]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \addr_ctr[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \addr_ctr[30]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \addr_ctr[31]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \addr_ctr[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr_ctr[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \addr_ctr[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \addr_ctr[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \addr_ctr[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \addr_ctr[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \addr_ctr[9]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \clk_pll_out[0]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \clk_pll_out[1]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of mosi_i_25 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of mosi_i_27 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of mosi_i_29 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of mosi_i_31 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of mosi_i_4 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \noip_reset_n[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \noip_reset_n[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pll_clk_en[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pll_clk_en[1]_i_1\ : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \read_data_ctr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \read_spi_data[11]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_spi_data[15]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_spi_data[7]_i_2\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg1_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[0]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[0]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[10]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[10]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[11]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[11]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[12]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[12]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[16]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[16]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[17]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[17]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[17]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[18]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[18]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[18]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[19]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[19]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[19]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[1]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[1]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[20]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[20]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[20]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[21]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[21]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[21]_i_1\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[22]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[22]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[22]_i_1\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[23]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[23]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[23]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[24]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[24]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[24]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[25]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[25]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[25]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[26]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[26]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[26]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[27]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[27]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[27]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[28]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[28]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[28]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[29]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[29]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[29]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[2]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[30]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[30]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[30]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[31]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[31]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \reg1_reg[31]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[3]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[4]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[5]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[5]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[6]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[6]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[7]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[7]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[8]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[8]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \reg1_reg[9]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \reg1_reg[9]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \vdd18_toggle[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \vdd18_toggle[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \vdd33_toggle[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \vdd33_toggle[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \vddpix_toggle[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \vddpix_toggle[1]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD of write_data_ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \write_data_ctr0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \write_data_ctr[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \write_data_ctr[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \write_data_ctr[11]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \write_data_ctr[12]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \write_data_ctr[13]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \write_data_ctr[14]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \write_data_ctr[15]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \write_data_ctr[16]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \write_data_ctr[17]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \write_data_ctr[18]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \write_data_ctr[19]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \write_data_ctr[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \write_data_ctr[20]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \write_data_ctr[21]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \write_data_ctr[22]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \write_data_ctr[23]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \write_data_ctr[24]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \write_data_ctr[25]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \write_data_ctr[26]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \write_data_ctr[27]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \write_data_ctr[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \write_data_ctr[29]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \write_data_ctr[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \write_data_ctr[30]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \write_data_ctr[31]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \write_data_ctr[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \write_data_ctr[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \write_data_ctr[5]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \write_data_ctr[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \write_data_ctr[7]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \write_data_ctr[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \write_data_ctr[9]_i_1\ : label is "soft_lutpair54";
begin
  axi_bvalid_reg <= \^axi_bvalid_reg\;
  mosi <= \^mosi\;
  noip_reset_n(0 to 1) <= \^noip_reset_n\(0 to 1);
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
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => \FSM_onehot_SPIState_reg_n_0_[3]\,
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
\FSM_onehot_SPIState[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => write_data_ctr(9),
      I1 => write_data_ctr(31),
      I2 => write_data_ctr(17),
      I3 => write_data_ctr(10),
      I4 => \FSM_onehot_SPIState[4]_i_22_n_0\,
      O => \FSM_onehot_SPIState[4]_i_10_n_0\
    );
\FSM_onehot_SPIState[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => write_data_ctr(0),
      I2 => write_data_ctr(14),
      I3 => write_data_ctr(28),
      I4 => write_data_ctr(26),
      I5 => write_data_ctr(7),
      O => \FSM_onehot_SPIState[4]_i_11_n_0\
    );
\FSM_onehot_SPIState[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => read_data_ctr_reg(20),
      I1 => read_data_ctr_reg(21),
      I2 => read_data_ctr_reg(23),
      I3 => read_data_ctr_reg(22),
      I4 => \FSM_onehot_SPIState[4]_i_23_n_0\,
      O => \FSM_onehot_SPIState[4]_i_12_n_0\
    );
\FSM_onehot_SPIState[4]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => read_data_ctr_reg(30),
      I1 => read_data_ctr_reg(31),
      I2 => read_data_ctr_reg(29),
      I3 => read_data_ctr_reg(28),
      I4 => \FSM_onehot_SPIState[4]_i_24_n_0\,
      O => \FSM_onehot_SPIState[4]_i_13_n_0\
    );
\FSM_onehot_SPIState[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => read_data_ctr_reg(4),
      I1 => read_data_ctr_reg(7),
      I2 => read_data_ctr_reg(5),
      I3 => read_data_ctr_reg(6),
      I4 => \FSM_onehot_SPIState[4]_i_25_n_0\,
      I5 => \FSM_onehot_SPIState[4]_i_26_n_0\,
      O => \FSM_onehot_SPIState[4]_i_14_n_0\
    );
\FSM_onehot_SPIState[4]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[25]\,
      I1 => \addr_ctr_reg_n_0_[20]\,
      I2 => \addr_ctr_reg_n_0_[27]\,
      I3 => \addr_ctr_reg_n_0_[8]\,
      I4 => mosi_i_30_n_0,
      O => \FSM_onehot_SPIState[4]_i_15_n_0\
    );
\FSM_onehot_SPIState[4]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[22]\,
      I1 => \addr_ctr_reg_n_0_[9]\,
      I2 => \addr_ctr_reg_n_0_[26]\,
      I3 => \addr_ctr_reg_n_0_[13]\,
      I4 => mosi_i_28_n_0,
      O => \FSM_onehot_SPIState[4]_i_16_n_0\
    );
\FSM_onehot_SPIState[4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[21]\,
      I1 => \addr_ctr_reg_n_0_[0]\,
      I2 => \addr_ctr_reg_n_0_[29]\,
      I3 => \addr_ctr_reg_n_0_[28]\,
      I4 => mosi_i_26_n_0,
      O => \FSM_onehot_SPIState[4]_i_17_n_0\
    );
\FSM_onehot_SPIState[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[24]\,
      I1 => \addr_ctr_reg_n_0_[23]\,
      I2 => \addr_ctr_reg_n_0_[19]\,
      I3 => \addr_ctr_reg_n_0_[16]\,
      I4 => mosi_i_24_n_0,
      O => \FSM_onehot_SPIState[4]_i_18_n_0\
    );
\FSM_onehot_SPIState[4]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(18),
      I1 => write_data_ctr(3),
      I2 => write_data_ctr(19),
      I3 => write_data_ctr(23),
      O => \FSM_onehot_SPIState[4]_i_19_n_0\
    );
\FSM_onehot_SPIState[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => \rising_spi_process.mode_reg_n_0\,
      O => \FSM_onehot_SPIState[4]_i_2_n_0\
    );
\FSM_onehot_SPIState[4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(22),
      I1 => write_data_ctr(15),
      I2 => write_data_ctr(27),
      I3 => write_data_ctr(29),
      O => \FSM_onehot_SPIState[4]_i_20_n_0\
    );
\FSM_onehot_SPIState[4]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(25),
      I1 => write_data_ctr(2),
      I2 => write_data_ctr(30),
      I3 => write_data_ctr(24),
      O => \FSM_onehot_SPIState[4]_i_21_n_0\
    );
\FSM_onehot_SPIState[4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_data_ctr(16),
      I1 => write_data_ctr(20),
      I2 => write_data_ctr(1),
      I3 => write_data_ctr(12),
      O => \FSM_onehot_SPIState[4]_i_22_n_0\
    );
\FSM_onehot_SPIState[4]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(16),
      I1 => read_data_ctr_reg(17),
      I2 => read_data_ctr_reg(19),
      I3 => read_data_ctr_reg(18),
      O => \FSM_onehot_SPIState[4]_i_23_n_0\
    );
\FSM_onehot_SPIState[4]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(27),
      I1 => read_data_ctr_reg(26),
      I2 => read_data_ctr_reg(25),
      I3 => read_data_ctr_reg(24),
      O => \FSM_onehot_SPIState[4]_i_24_n_0\
    );
\FSM_onehot_SPIState[4]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(10),
      I1 => read_data_ctr_reg(11),
      I2 => read_data_ctr_reg(9),
      I3 => read_data_ctr_reg(8),
      O => \FSM_onehot_SPIState[4]_i_25_n_0\
    );
\FSM_onehot_SPIState[4]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_data_ctr_reg(15),
      I1 => read_data_ctr_reg(14),
      I2 => read_data_ctr_reg(13),
      I3 => read_data_ctr_reg(12),
      O => \FSM_onehot_SPIState[4]_i_26_n_0\
    );
\FSM_onehot_SPIState[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_SPIState[4]_i_8_n_0\,
      I1 => \FSM_onehot_SPIState[4]_i_9_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_10_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_11_n_0\,
      O => \FSM_onehot_SPIState[4]_i_3_n_0\
    );
\FSM_onehot_SPIState[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => read_data_ctr_reg(0),
      I1 => read_data_ctr,
      I2 => read_data_ctr_reg(1),
      O => \FSM_onehot_SPIState[4]_i_4_n_0\
    );
\FSM_onehot_SPIState[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => read_data_ctr_reg(2),
      I1 => \FSM_onehot_SPIState[4]_i_12_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_13_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_14_n_0\,
      I4 => read_data_ctr_reg(3),
      O => \FSM_onehot_SPIState[4]_i_5_n_0\
    );
\FSM_onehot_SPIState[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_SPIState[4]_i_15_n_0\,
      I1 => \FSM_onehot_SPIState[4]_i_16_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_17_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_18_n_0\,
      O => \FSM_onehot_SPIState[4]_i_6_n_0\
    );
\FSM_onehot_SPIState[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => write_data_ctr(11),
      I1 => write_data_ctr(5),
      I2 => write_data_ctr(13),
      I3 => \FSM_onehot_SPIState[4]_i_19_n_0\,
      I4 => \FSM_onehot_SPIState[4]_i_20_n_0\,
      O => \FSM_onehot_SPIState[4]_i_8_n_0\
    );
\FSM_onehot_SPIState[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => write_data_ctr(21),
      I1 => write_data_ctr(6),
      I2 => write_data_ctr(8),
      I3 => write_data_ctr(4),
      I4 => \FSM_onehot_SPIState[4]_i_21_n_0\,
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
      PRE => mosi_i_2_n_0,
      Q => \FSM_onehot_SPIState_reg_n_0_[0]\
    );
\FSM_onehot_SPIState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
      D => read_data_ctr,
      Q => \FSM_onehot_SPIState_reg_n_0_[3]\
    );
\FSM_onehot_SPIState_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      CLR => mosi_i_2_n_0,
      D => \FSM_onehot_SPIState[4]_i_2_n_0\,
      Q => \FSM_onehot_SPIState_reg_n_0_[4]\
    );
\FSM_onehot_StartupState[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_StartupState_reg_n_0_[5]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[10]\,
      O => \FSM_onehot_StartupState[0]_i_1_n_0\
    );
\FSM_onehot_StartupState[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_StartupState_reg_n_0_[2]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[9]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[10]\,
      I3 => \FSM_onehot_StartupState_reg_n_0_[1]\,
      I4 => \FSM_onehot_StartupState_reg_n_0_[7]\,
      I5 => \FSM_onehot_StartupState_reg_n_0_[4]\,
      O => \FSM_onehot_StartupState[10]_i_2_n_0\
    );
\FSM_onehot_StartupState[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_StartupState_reg_n_0_[5]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[6]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[3]\,
      I3 => \FSM_onehot_StartupState_reg_n_0_[8]\,
      O => \FSM_onehot_StartupState[10]_i_3_n_0\
    );
\FSM_onehot_StartupState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      D => \FSM_onehot_StartupState[0]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \FSM_onehot_StartupState_reg_n_0_[0]\
    );
\FSM_onehot_StartupState_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[9]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[10]\
    );
\FSM_onehot_StartupState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => id,
      Q => \FSM_onehot_StartupState_reg_n_0_[1]\
    );
\FSM_onehot_StartupState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[1]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[2]\
    );
\FSM_onehot_StartupState_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[2]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[3]\
    );
\FSM_onehot_StartupState_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[3]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[4]\
    );
\FSM_onehot_StartupState_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[4]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[5]\
    );
\FSM_onehot_StartupState_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11,
      Q => \FSM_onehot_StartupState_reg_n_0_[6]\
    );
\FSM_onehot_StartupState_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[6]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[7]\
    );
\FSM_onehot_StartupState_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[7]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[8]\
    );
\FSM_onehot_StartupState_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \FSM_onehot_StartupState_reg_n_0_[8]\,
      Q => \FSM_onehot_StartupState_reg_n_0_[9]\
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
      O(3 downto 0) => in11(4 downto 1),
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
      O(3 downto 0) => in11(8 downto 5),
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
      O(3 downto 0) => in11(12 downto 9),
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
      O(3 downto 0) => in11(16 downto 13),
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
      O(3 downto 0) => in11(20 downto 17),
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
      O(3 downto 0) => in11(24 downto 21),
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
      O(3 downto 0) => in11(28 downto 25),
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
      O(2 downto 0) => in11(31 downto 29),
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
      I1 => in11(10),
      O => \addr_ctr[10]_i_1_n_0\
    );
\addr_ctr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(11),
      O => \addr_ctr[11]_i_1_n_0\
    );
\addr_ctr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(12),
      O => \addr_ctr[12]_i_1_n_0\
    );
\addr_ctr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(13),
      O => \addr_ctr[13]_i_1_n_0\
    );
\addr_ctr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(14),
      O => \addr_ctr[14]_i_1_n_0\
    );
\addr_ctr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(15),
      O => \addr_ctr[15]_i_1_n_0\
    );
\addr_ctr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(16),
      O => \addr_ctr[16]_i_1_n_0\
    );
\addr_ctr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(17),
      O => \addr_ctr[17]_i_1_n_0\
    );
\addr_ctr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(18),
      O => \addr_ctr[18]_i_1_n_0\
    );
\addr_ctr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(19),
      O => \addr_ctr[19]_i_1_n_0\
    );
\addr_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(1),
      O => \addr_ctr[1]_i_1_n_0\
    );
\addr_ctr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(20),
      O => \addr_ctr[20]_i_1_n_0\
    );
\addr_ctr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(21),
      O => \addr_ctr[21]_i_1_n_0\
    );
\addr_ctr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(22),
      O => \addr_ctr[22]_i_1_n_0\
    );
\addr_ctr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(23),
      O => \addr_ctr[23]_i_1_n_0\
    );
\addr_ctr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(24),
      O => \addr_ctr[24]_i_1_n_0\
    );
\addr_ctr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(25),
      O => \addr_ctr[25]_i_1_n_0\
    );
\addr_ctr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(26),
      O => \addr_ctr[26]_i_1_n_0\
    );
\addr_ctr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(27),
      O => \addr_ctr[27]_i_1_n_0\
    );
\addr_ctr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(28),
      O => \addr_ctr[28]_i_1_n_0\
    );
\addr_ctr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(29),
      O => \addr_ctr[29]_i_1_n_0\
    );
\addr_ctr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(2),
      O => \addr_ctr[2]_i_1_n_0\
    );
\addr_ctr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(30),
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
      I1 => in11(31),
      O => \addr_ctr[31]_i_2_n_0\
    );
\addr_ctr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in11(3),
      I2 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      O => \addr_ctr[3]_i_1_n_0\
    );
\addr_ctr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(4),
      O => \addr_ctr[4]_i_1_n_0\
    );
\addr_ctr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(5),
      O => \addr_ctr[5]_i_1_n_0\
    );
\addr_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(6),
      O => \addr_ctr[6]_i_1_n_0\
    );
\addr_ctr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(7),
      O => \addr_ctr[7]_i_1_n_0\
    );
\addr_ctr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(8),
      O => \addr_ctr[8]_i_1_n_0\
    );
\addr_ctr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => in11(9),
      O => \addr_ctr[9]_i_1_n_0\
    );
\addr_ctr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      PRE => mosi_i_2_n_0,
      Q => \addr_ctr_reg_n_0_[3]\
    );
\addr_ctr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => addr_ctr,
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
mosi_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mosi_i_24_n_0,
      I1 => mosi_i_25_n_0,
      I2 => mosi_i_26_n_0,
      I3 => mosi_i_27_n_0,
      O => mosi_i_12_n_0
    );
mosi_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mosi_i_28_n_0,
      I1 => mosi_i_29_n_0,
      I2 => mosi_i_30_n_0,
      I3 => mosi_i_31_n_0,
      O => mosi_i_13_n_0
    );
mosi_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_rst_n,
      O => mosi_i_2_n_0
    );
mosi_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[7]\,
      I1 => \addr_ctr_reg_n_0_[30]\,
      I2 => \addr_ctr_reg_n_0_[1]\,
      I3 => \addr_ctr_reg_n_0_[11]\,
      O => mosi_i_24_n_0
    );
mosi_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[16]\,
      I1 => \addr_ctr_reg_n_0_[19]\,
      I2 => \addr_ctr_reg_n_0_[23]\,
      I3 => \addr_ctr_reg_n_0_[24]\,
      O => mosi_i_25_n_0
    );
mosi_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[17]\,
      I1 => \addr_ctr_reg_n_0_[18]\,
      I2 => \addr_ctr_reg_n_0_[31]\,
      I3 => \addr_ctr_reg_n_0_[6]\,
      O => mosi_i_26_n_0
    );
mosi_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[28]\,
      I1 => \addr_ctr_reg_n_0_[29]\,
      I2 => \addr_ctr_reg_n_0_[0]\,
      I3 => \addr_ctr_reg_n_0_[21]\,
      O => mosi_i_27_n_0
    );
mosi_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[10]\,
      I1 => \addr_ctr_reg_n_0_[12]\,
      I2 => \addr_ctr_reg_n_0_[3]\,
      I3 => \addr_ctr_reg_n_0_[15]\,
      O => mosi_i_28_n_0
    );
mosi_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[13]\,
      I1 => \addr_ctr_reg_n_0_[26]\,
      I2 => \addr_ctr_reg_n_0_[9]\,
      I3 => \addr_ctr_reg_n_0_[22]\,
      O => mosi_i_29_n_0
    );
mosi_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[4]\,
      I1 => \addr_ctr_reg_n_0_[5]\,
      I2 => \addr_ctr_reg_n_0_[2]\,
      I3 => \addr_ctr_reg_n_0_[14]\,
      O => mosi_i_30_n_0
    );
mosi_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[8]\,
      I1 => \addr_ctr_reg_n_0_[27]\,
      I2 => \addr_ctr_reg_n_0_[20]\,
      I3 => \addr_ctr_reg_n_0_[25]\,
      O => mosi_i_31_n_0
    );
mosi_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => \FSM_onehot_SPIState_reg_n_0_[3]\,
      I2 => read_data_ctr,
      O => mosi_i_4_n_0
    );
mosi_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_60,
      Q => \^mosi\
    );
noip_ctrl_slave_lite_v1_0_S00_AXI_inst: entity work.main_design_noip_ctrl_0_0_noip_ctrl_slave_lite_v1_0_S00_AXI
     port map (
      D(1) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11,
      D(0) => id,
      E(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      \FSM_onehot_SPIState_reg[0]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_59,
      \FSM_onehot_SPIState_reg[0]_0\ => \FSM_onehot_SPIState[4]_i_3_n_0\,
      \FSM_onehot_SPIState_reg[0]_1\ => \FSM_onehot_SPIState[4]_i_4_n_0\,
      \FSM_onehot_SPIState_reg[0]_2\ => \FSM_onehot_SPIState[4]_i_5_n_0\,
      \FSM_onehot_SPIState_reg[0]_3\ => \FSM_onehot_SPIState[4]_i_6_n_0\,
      \FSM_onehot_SPIState_reg[1]\(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      \FSM_onehot_SPIState_reg[4]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_60,
      \FSM_onehot_StartupState_reg[0]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_58,
      \FSM_onehot_StartupState_reg[0]_0\ => \FSM_onehot_StartupState[10]_i_2_n_0\,
      \FSM_onehot_StartupState_reg[0]_1\ => \FSM_onehot_StartupState[10]_i_3_n_0\,
      Q(3 downto 2) => sensor_id(1 downto 0),
      Q(1) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,
      Q(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10,
      SR(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_bvalid_reg_0 => \^axi_bvalid_reg\,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      mosi => \^mosi\,
      mosi_i_5_0(3) => \addr_ctr_reg_n_0_[3]\,
      mosi_i_5_0(2) => \addr_ctr_reg_n_0_[2]\,
      mosi_i_5_0(1) => \addr_ctr_reg_n_0_[1]\,
      mosi_i_5_0(0) => \addr_ctr_reg_n_0_[0]\,
      mosi_reg(3) => \FSM_onehot_SPIState_reg_n_0_[4]\,
      mosi_reg(2) => \FSM_onehot_SPIState_reg_n_0_[3]\,
      mosi_reg(1) => \FSM_onehot_SPIState_reg_n_0_[1]\,
      mosi_reg(0) => \FSM_onehot_SPIState_reg_n_0_[0]\,
      mosi_reg_0 => mosi_i_12_n_0,
      mosi_reg_1 => mosi_i_13_n_0,
      mosi_reg_2(4 downto 0) => write_data_ctr(4 downto 0),
      mosi_reg_3 => mosi_i_4_n_0,
      \rising_spi_process.mode_reg\ => \rising_spi_process.mode_reg_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      \s00_axi_rdata[31]\(28 downto 13) => reg1(31 downto 16),
      \s00_axi_rdata[31]\(12 downto 0) => reg1(12 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[12]_0\(10) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_47,
      \slv_reg0_reg[12]_0\(9) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_48,
      \slv_reg0_reg[12]_0\(8) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_49,
      \slv_reg0_reg[12]_0\(7) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_50,
      \slv_reg0_reg[12]_0\(6) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_51,
      \slv_reg0_reg[12]_0\(5) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_52,
      \slv_reg0_reg[12]_0\(4) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_53,
      \slv_reg0_reg[12]_0\(3) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_54,
      \slv_reg0_reg[12]_0\(2) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_55,
      \slv_reg0_reg[12]_0\(1) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_56,
      \slv_reg0_reg[12]_0\(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_57,
      \slv_reg0_reg[3]_0\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6,
      spiflag => spiflag,
      \startup_process.id_reg[0]\(0) => \FSM_onehot_StartupState_reg_n_0_[0]\,
      \startup_process.id_reg[0]_0\ => \startup_process.id_reg_n_0_[0]\
    );
\noip_reset_n[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB50"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[5]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[6]\,
      I3 => \^noip_reset_n\(0),
      O => \noip_reset_n[0]_i_1_n_0\
    );
\noip_reset_n[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7A0"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[5]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[6]\,
      I3 => \^noip_reset_n\(1),
      O => \noip_reset_n[1]_i_1_n_0\
    );
\noip_reset_n_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \noip_reset_n[0]_i_1_n_0\,
      Q => \^noip_reset_n\(0)
    );
\noip_reset_n_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \noip_reset_n[1]_i_1_n_0\,
      Q => \^noip_reset_n\(1)
    );
\pll_clk_en[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF44"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[4]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[7]\,
      I3 => \pll_clk_en_reg_n_0_[0]\,
      O => \pll_clk_en[0]_i_1_n_0\
    );
\pll_clk_en[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF88"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[4]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[7]\,
      I3 => \pll_clk_en_reg_n_0_[1]\,
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
      PRE => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      PRE => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      PRE => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      PRE => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
      D => \read_data_ctr_reg[8]_i_1_n_6\,
      Q => read_data_ctr_reg(9)
    );
\read_spi_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \FSM_onehot_SPIState[4]_i_5_n_0\,
      I5 => read_spi_data(0),
      O => \read_spi_data[0]_i_1_n_0\
    );
\read_spi_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[11]_i_2_n_0\,
      I5 => read_spi_data(10),
      O => \read_spi_data[10]_i_1_n_0\
    );
\read_spi_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[11]_i_2_n_0\,
      I5 => read_spi_data(11),
      O => \read_spi_data[11]_i_1_n_0\
    );
\read_spi_data[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => read_data_ctr_reg(2),
      I1 => read_data_ctr_reg(3),
      I2 => \FSM_onehot_SPIState[4]_i_12_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_13_n_0\,
      I4 => \FSM_onehot_SPIState[4]_i_14_n_0\,
      O => \read_spi_data[11]_i_2_n_0\
    );
\read_spi_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[15]_i_2_n_0\,
      I5 => read_spi_data(12),
      O => \read_spi_data[12]_i_1_n_0\
    );
\read_spi_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => miso,
      I1 => \read_spi_data[15]_i_2_n_0\,
      I2 => read_data_ctr_reg(1),
      I3 => read_data_ctr,
      I4 => read_data_ctr_reg(0),
      I5 => read_spi_data(13),
      O => \read_spi_data[13]_i_1_n_0\
    );
\read_spi_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => miso,
      I1 => \read_spi_data[15]_i_2_n_0\,
      I2 => read_data_ctr_reg(1),
      I3 => read_data_ctr,
      I4 => read_data_ctr_reg(0),
      I5 => read_spi_data(14),
      O => \read_spi_data[14]_i_1_n_0\
    );
\read_spi_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => miso,
      I1 => \read_spi_data[15]_i_2_n_0\,
      I2 => read_data_ctr_reg(1),
      I3 => read_data_ctr,
      I4 => read_data_ctr_reg(0),
      I5 => read_spi_data(15),
      O => \read_spi_data[15]_i_1_n_0\
    );
\read_spi_data[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => read_data_ctr_reg(2),
      I1 => read_data_ctr_reg(3),
      I2 => \FSM_onehot_SPIState[4]_i_12_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_13_n_0\,
      I4 => \FSM_onehot_SPIState[4]_i_14_n_0\,
      O => \read_spi_data[15]_i_2_n_0\
    );
\read_spi_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => miso,
      I1 => \FSM_onehot_SPIState[4]_i_5_n_0\,
      I2 => read_data_ctr_reg(1),
      I3 => read_data_ctr,
      I4 => read_data_ctr_reg(0),
      I5 => read_spi_data(1),
      O => \read_spi_data[1]_i_1_n_0\
    );
\read_spi_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => miso,
      I1 => \FSM_onehot_SPIState[4]_i_5_n_0\,
      I2 => read_data_ctr_reg(1),
      I3 => read_data_ctr,
      I4 => read_data_ctr_reg(0),
      I5 => read_spi_data(2),
      O => \read_spi_data[2]_i_1_n_0\
    );
\read_spi_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => miso,
      I1 => \FSM_onehot_SPIState[4]_i_5_n_0\,
      I2 => read_data_ctr_reg(1),
      I3 => read_data_ctr,
      I4 => read_data_ctr_reg(0),
      I5 => read_spi_data(3),
      O => \read_spi_data[3]_i_1_n_0\
    );
\read_spi_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[7]_i_2_n_0\,
      I5 => read_spi_data(4),
      O => \read_spi_data[4]_i_1_n_0\
    );
\read_spi_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[7]_i_2_n_0\,
      I5 => read_spi_data(5),
      O => \read_spi_data[5]_i_1_n_0\
    );
\read_spi_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[7]_i_2_n_0\,
      I5 => read_spi_data(6),
      O => \read_spi_data[6]_i_1_n_0\
    );
\read_spi_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[7]_i_2_n_0\,
      I5 => read_spi_data(7),
      O => \read_spi_data[7]_i_1_n_0\
    );
\read_spi_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \FSM_onehot_SPIState[4]_i_12_n_0\,
      I1 => \FSM_onehot_SPIState[4]_i_13_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_14_n_0\,
      I3 => read_data_ctr_reg(3),
      I4 => read_data_ctr_reg(2),
      O => \read_spi_data[7]_i_2_n_0\
    );
\read_spi_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[11]_i_2_n_0\,
      I5 => read_spi_data(8),
      O => \read_spi_data[8]_i_1_n_0\
    );
\read_spi_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => miso,
      I1 => read_data_ctr_reg(1),
      I2 => read_data_ctr,
      I3 => read_data_ctr_reg(0),
      I4 => \read_spi_data[11]_i_2_n_0\,
      I5 => read_spi_data(9),
      O => \read_spi_data[9]_i_1_n_0\
    );
\read_spi_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[0]_i_1_n_0\,
      Q => read_spi_data(0)
    );
\read_spi_data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[10]_i_1_n_0\,
      Q => read_spi_data(10)
    );
\read_spi_data_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[11]_i_1_n_0\,
      Q => read_spi_data(11)
    );
\read_spi_data_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[12]_i_1_n_0\,
      Q => read_spi_data(12)
    );
\read_spi_data_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[13]_i_1_n_0\,
      Q => read_spi_data(13)
    );
\read_spi_data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[14]_i_1_n_0\,
      Q => read_spi_data(14)
    );
\read_spi_data_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[15]_i_1_n_0\,
      Q => read_spi_data(15)
    );
\read_spi_data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[1]_i_1_n_0\,
      Q => read_spi_data(1)
    );
\read_spi_data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[2]_i_1_n_0\,
      Q => read_spi_data(2)
    );
\read_spi_data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[3]_i_1_n_0\,
      Q => read_spi_data(3)
    );
\read_spi_data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[4]_i_1_n_0\,
      Q => read_spi_data(4)
    );
\read_spi_data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[5]_i_1_n_0\,
      Q => read_spi_data(5)
    );
\read_spi_data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[6]_i_1_n_0\,
      Q => read_spi_data(6)
    );
\read_spi_data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[7]_i_1_n_0\,
      Q => read_spi_data(7)
    );
\read_spi_data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[8]_i_1_n_0\,
      Q => read_spi_data(8)
    );
\read_spi_data_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => \read_spi_data[9]_i_1_n_0\,
      Q => read_spi_data(9)
    );
\reg1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[0]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(0)
    );
\reg1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => spiflag,
      I1 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[0]\,
      O => \reg1_reg[0]_i_1_n_0\
    );
\reg1_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_49,
      G => '1',
      GE => '1',
      Q => reg1(10)
    );
\reg1_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_48,
      G => '1',
      GE => '1',
      Q => reg1(11)
    );
\reg1_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_47,
      G => '1',
      GE => '1',
      Q => reg1(12)
    );
\reg1_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[16]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(16)
    );
\reg1_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(0),
      O => \reg1_reg[16]_i_1_n_0\
    );
\reg1_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[17]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(17)
    );
\reg1_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(1),
      O => \reg1_reg[17]_i_1_n_0\
    );
\reg1_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[18]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(18)
    );
\reg1_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(2),
      O => \reg1_reg[18]_i_1_n_0\
    );
\reg1_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[19]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(19)
    );
\reg1_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(3),
      O => \reg1_reg[19]_i_1_n_0\
    );
\reg1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[1]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(1)
    );
\reg1_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => spiflag,
      I1 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[0]\,
      O => \reg1_reg[1]_i_1_n_0\
    );
\reg1_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[20]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(20)
    );
\reg1_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(4),
      O => \reg1_reg[20]_i_1_n_0\
    );
\reg1_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[21]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(21)
    );
\reg1_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(5),
      O => \reg1_reg[21]_i_1_n_0\
    );
\reg1_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[22]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(22)
    );
\reg1_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(6),
      O => \reg1_reg[22]_i_1_n_0\
    );
\reg1_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[23]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(23)
    );
\reg1_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(7),
      O => \reg1_reg[23]_i_1_n_0\
    );
\reg1_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[24]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(24)
    );
\reg1_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(8),
      O => \reg1_reg[24]_i_1_n_0\
    );
\reg1_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[25]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(25)
    );
\reg1_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(9),
      O => \reg1_reg[25]_i_1_n_0\
    );
\reg1_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[26]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(26)
    );
\reg1_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(10),
      O => \reg1_reg[26]_i_1_n_0\
    );
\reg1_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[27]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(27)
    );
\reg1_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(11),
      O => \reg1_reg[27]_i_1_n_0\
    );
\reg1_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[28]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(28)
    );
\reg1_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(12),
      O => \reg1_reg[28]_i_1_n_0\
    );
\reg1_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[29]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(29)
    );
\reg1_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(13),
      O => \reg1_reg[29]_i_1_n_0\
    );
\reg1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_57,
      G => '1',
      GE => '1',
      Q => reg1(2)
    );
\reg1_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[30]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(30)
    );
\reg1_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(14),
      O => \reg1_reg[30]_i_1_n_0\
    );
\reg1_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => \reg1_reg[31]_i_1_n_0\,
      G => '1',
      GE => '1',
      Q => reg1(31)
    );
\reg1_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spiflag,
      I1 => read_spi_data(15),
      O => \reg1_reg[31]_i_1_n_0\
    );
\reg1_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_56,
      G => '1',
      GE => '1',
      Q => reg1(3)
    );
\reg1_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_55,
      G => '1',
      GE => '1',
      Q => reg1(4)
    );
\reg1_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_54,
      G => '1',
      GE => '1',
      Q => reg1(5)
    );
\reg1_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_53,
      G => '1',
      GE => '1',
      Q => reg1(6)
    );
\reg1_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_52,
      G => '1',
      GE => '1',
      Q => reg1(7)
    );
\reg1_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_51,
      G => '1',
      GE => '1',
      Q => reg1(8)
    );
\reg1_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_50,
      G => '1',
      GE => '1',
      Q => reg1(9)
    );
\rising_spi_process.mode_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_59,
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
sck_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBAAAA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[1]\,
      I1 => \FSM_onehot_SPIState[4]_i_3_n_0\,
      I2 => \FSM_onehot_SPIState[4]_i_4_n_0\,
      I3 => \FSM_onehot_SPIState[4]_i_5_n_0\,
      I4 => sck_en_reg_n_0,
      O => sck_en_i_1_n_0
    );
sck_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => sck_en_i_1_n_0,
      Q => sck_en_reg_n_0
    );
spiflag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55AA00AE00"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => \FSM_onehot_SPIState[4]_i_5_n_0\,
      I2 => read_data_ctr_reg(0),
      I3 => read_data_ctr,
      I4 => read_data_ctr_reg(1),
      I5 => spiflag,
      O => spiflag_i_1_n_0
    );
spiflag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_spi_in,
      CE => '1',
      CLR => mosi_i_2_n_0,
      D => spiflag_i_1_n_0,
      Q => spiflag
    );
\ss_n[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBFFFFFFEBFF0000"
    )
        port map (
      I0 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6,
      I1 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10,
      I2 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,
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
      I0 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10,
      I1 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_9,
      I2 => \^axi_bvalid_reg\,
      I3 => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6,
      I4 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I5 => \^ss_n\(1),
      O => \ss_n[1]_i_1_n_0\
    );
\ss_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_spi_in,
      CE => '1',
      D => \ss_n[0]_i_1_n_0\,
      PRE => mosi_i_2_n_0,
      Q => \^ss_n\(0)
    );
\ss_n_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_spi_in,
      CE => '1',
      D => \ss_n[1]_i_1_n_0\,
      PRE => mosi_i_2_n_0,
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
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_58,
      Q => \startup_process.id_reg_n_0_[0]\
    );
\sw_enable_n[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFF444C4444"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[10]\,
      I2 => sensor_id(1),
      I3 => sensor_id(0),
      I4 => id,
      I5 => \^sw_enable_n\(0),
      O => \sw_enable_n[0]_i_1_n_0\
    );
\sw_enable_n[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFFFFFAAA88888"
    )
        port map (
      I0 => \FSM_onehot_StartupState_reg_n_0_[10]\,
      I1 => \startup_process.id_reg_n_0_[0]\,
      I2 => sensor_id(1),
      I3 => sensor_id(0),
      I4 => id,
      I5 => \^sw_enable_n\(1),
      O => \sw_enable_n[1]_i_1_n_0\
    );
\sw_enable_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sw_enable_n[0]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \^sw_enable_n\(0)
    );
\sw_enable_n_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sw_enable_n[1]_i_1_n_0\,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \^sw_enable_n\(1)
    );
\vdd18_toggle[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF44"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[1]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[10]\,
      I3 => \^vdd18_toggle\(0),
      O => \vdd18_toggle[0]_i_1_n_0\
    );
\vdd18_toggle[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF88"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[1]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[10]\,
      I3 => \^vdd18_toggle\(1),
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
\vdd33_toggle[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF44"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[2]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[9]\,
      I3 => \^vdd33_toggle\(0),
      O => \vdd33_toggle[0]_i_1_n_0\
    );
\vdd33_toggle[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF88"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[2]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[9]\,
      I3 => \^vdd33_toggle\(1),
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
\vddpix_toggle[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF44"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[3]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[8]\,
      I3 => \^vddpix_toggle\(0),
      O => \vddpix_toggle[0]_i_1_n_0\
    );
\vddpix_toggle[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF88"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => \FSM_onehot_StartupState_reg_n_0_[3]\,
      I2 => \FSM_onehot_StartupState_reg_n_0_[8]\,
      I3 => \^vddpix_toggle\(1),
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
      O(3 downto 0) => in10(4 downto 1),
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
      O(3 downto 0) => in10(8 downto 5),
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
      O(3 downto 0) => in10(12 downto 9),
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
      O(3 downto 0) => in10(16 downto 13),
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
      O(3 downto 0) => in10(20 downto 17),
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
      O(3 downto 0) => in10(24 downto 21),
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
      O(3 downto 0) => in10(28 downto 25),
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
      O(2 downto 0) => in10(31 downto 29),
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
      I1 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I2 => write_data_ctr(0),
      O => \write_data_ctr[0]_i_1_n_0\
    );
\write_data_ctr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(10),
      O => \write_data_ctr[10]_i_1_n_0\
    );
\write_data_ctr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(11),
      O => \write_data_ctr[11]_i_1_n_0\
    );
\write_data_ctr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(12),
      O => \write_data_ctr[12]_i_1_n_0\
    );
\write_data_ctr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(13),
      O => \write_data_ctr[13]_i_1_n_0\
    );
\write_data_ctr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(14),
      O => \write_data_ctr[14]_i_1_n_0\
    );
\write_data_ctr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(15),
      O => \write_data_ctr[15]_i_1_n_0\
    );
\write_data_ctr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(16),
      O => \write_data_ctr[16]_i_1_n_0\
    );
\write_data_ctr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(17),
      O => \write_data_ctr[17]_i_1_n_0\
    );
\write_data_ctr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(18),
      O => \write_data_ctr[18]_i_1_n_0\
    );
\write_data_ctr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(19),
      O => \write_data_ctr[19]_i_1_n_0\
    );
\write_data_ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in10(1),
      I2 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      O => \write_data_ctr[1]_i_1_n_0\
    );
\write_data_ctr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(20),
      O => \write_data_ctr[20]_i_1_n_0\
    );
\write_data_ctr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(21),
      O => \write_data_ctr[21]_i_1_n_0\
    );
\write_data_ctr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(22),
      O => \write_data_ctr[22]_i_1_n_0\
    );
\write_data_ctr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(23),
      O => \write_data_ctr[23]_i_1_n_0\
    );
\write_data_ctr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(24),
      O => \write_data_ctr[24]_i_1_n_0\
    );
\write_data_ctr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(25),
      O => \write_data_ctr[25]_i_1_n_0\
    );
\write_data_ctr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(26),
      O => \write_data_ctr[26]_i_1_n_0\
    );
\write_data_ctr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(27),
      O => \write_data_ctr[27]_i_1_n_0\
    );
\write_data_ctr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(28),
      O => \write_data_ctr[28]_i_1_n_0\
    );
\write_data_ctr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(29),
      O => \write_data_ctr[29]_i_1_n_0\
    );
\write_data_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in10(2),
      I2 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      O => \write_data_ctr[2]_i_1_n_0\
    );
\write_data_ctr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(30),
      O => \write_data_ctr[30]_i_1_n_0\
    );
\write_data_ctr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      O => write_data_ctr_0
    );
\write_data_ctr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(31),
      O => \write_data_ctr[31]_i_2_n_0\
    );
\write_data_ctr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[0]\,
      I1 => in10(3),
      I2 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      O => \write_data_ctr[3]_i_1_n_0\
    );
\write_data_ctr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(4),
      O => \write_data_ctr[4]_i_1_n_0\
    );
\write_data_ctr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(5),
      O => \write_data_ctr[5]_i_1_n_0\
    );
\write_data_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(6),
      O => \write_data_ctr[6]_i_1_n_0\
    );
\write_data_ctr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(7),
      O => \write_data_ctr[7]_i_1_n_0\
    );
\write_data_ctr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(8),
      O => \write_data_ctr[8]_i_1_n_0\
    );
\write_data_ctr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_SPIState_reg_n_0_[4]\,
      I1 => in10(9),
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
      PRE => mosi_i_2_n_0,
      Q => write_data_ctr(0)
    );
\write_data_ctr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      PRE => mosi_i_2_n_0,
      Q => write_data_ctr(1)
    );
\write_data_ctr_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      PRE => mosi_i_2_n_0,
      Q => write_data_ctr(2)
    );
\write_data_ctr_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      PRE => mosi_i_2_n_0,
      Q => write_data_ctr(3)
    );
\write_data_ctr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_spi_in,
      CE => write_data_ctr_0,
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
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
      CLR => mosi_i_2_n_0,
      D => \write_data_ctr[9]_i_1_n_0\,
      Q => write_data_ctr(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_noip_ctrl_0_0 is
  port (
    clk_72M_pll : in STD_LOGIC;
    clk_pll_out : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_reset_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    clk_spi_in : in STD_LOGIC;
    spi_rst_n : in STD_LOGIC;
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
  attribute NotValidForBitStream of main_design_noip_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_noip_ctrl_0_0 : entity is "main_design_noip_ctrl_0_0,noip_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_design_noip_ctrl_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of main_design_noip_ctrl_0_0 : entity is "noip_ctrl,Vivado 2024.1";
end main_design_noip_ctrl_0_0;

architecture STRUCTURE of main_design_noip_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of miso : signal is "xilinx.com:interface:spi:1.0 noip_spi IO1_I";
  attribute x_interface_info of mosi : signal is "xilinx.com:interface:spi:1.0 noip_spi IO1_O";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 187500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute x_interface_info of spi_rst_n : signal is "xilinx.com:signal:reset:1.0 spi_rst RST";
  attribute x_interface_parameter of spi_rst_n : signal is "XIL_INTERFACENAME spi_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 187500000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute x_interface_info of ss_n : signal is "xilinx.com:interface:spi:1.0 noip_spi SS_O";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.main_design_noip_ctrl_0_0_noip_ctrl
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_bvalid_reg => s00_axi_bvalid,
      axi_rvalid_reg => s00_axi_rvalid,
      clk_72M_pll => clk_72M_pll,
      clk_pll_out(0 to 1) => clk_pll_out(0 to 1),
      clk_spi_in => clk_spi_in,
      miso => miso,
      mosi => mosi,
      noip_reset_n(0 to 1) => noip_reset_n(0 to 1),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sck => sck,
      spi_rst_n => spi_rst_n,
      ss_n(0 to 1) => ss_n(0 to 1),
      sw_enable_n(0 to 1) => sw_enable_n(0 to 1),
      vdd18_toggle(0 to 1) => vdd18_toggle(0 to 1),
      vdd33_toggle(0 to 1) => vdd33_toggle(0 to 1),
      vddpix_toggle(0 to 1) => vddpix_toggle(0 to 1)
    );
end STRUCTURE;
