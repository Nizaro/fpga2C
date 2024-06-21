-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Jun 20 19:39:27 2024
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
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_bvalid_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    \sw_enable_n_reg[0]\ : out STD_LOGIC;
    \slv_reg0_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sw_enable_n_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_StartupState_reg[2]\ : out STD_LOGIC;
    \slv_reg0_reg[2]_0\ : out STD_LOGIC;
    \slv_reg0_reg[0]_0\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    sw_enable_n : in STD_LOGIC_VECTOR ( 0 to 1 );
    StartupState : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    \startup_process.id_reg[0]\ : in STD_LOGIC;
    \startup_process.id_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \id0__1\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg0[3]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sw_enable_n[0]_i_2_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ss_n[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ss_n[1]_i_1\ : label is "soft_lutpair0";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFBF00"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => axi_wready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
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
\FSM_sequential_StartupState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FEEEEEEE"
    )
        port map (
      I0 => StartupState(2),
      I1 => StartupState(1),
      I2 => \slv_reg0_reg_n_0_[0]\,
      I3 => \slv_reg0_reg_n_0_[1]\,
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
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
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
      INIT => X"FAFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \^axi_awready_reg_0\,
      I5 => s00_axi_awvalid,
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
      INIT => X"AAA8ABA8BB88BB88"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => axi_bvalid_i_3_n_0,
      I2 => s00_axi_wvalid,
      I3 => \^axi_bvalid_reg_0\,
      I4 => s00_axi_bready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAEAEAEAEAEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => s00_axi_awvalid,
      I5 => \^axi_awready_reg_0\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808080808080"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I1 => \^axi_bvalid_reg_0\,
      I2 => s00_axi_bready,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_3_n_0
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
\slv_reg0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[3]_i_2_n_0\,
      O => p_1_in(3)
    );
\slv_reg0[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => axi_awaddr(2),
      I4 => s00_axi_awaddr(1),
      I5 => axi_awaddr(3),
      O => \slv_reg0[3]_i_2_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(2),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(3),
      D => s00_axi_wdata(3),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\ss_n[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F9F9FFF"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[0]\,
      I1 => \slv_reg0_reg_n_0_[1]\,
      I2 => \^axi_bvalid_reg_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \slv_reg0_reg[0]_0\
    );
\ss_n[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \slv_reg0_reg_n_0_[0]\,
      I3 => \slv_reg0_reg_n_0_[1]\,
      I4 => \^axi_bvalid_reg_0\,
      O => \slv_reg0_reg[3]_0\
    );
\startup_process.id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000E00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \startup_process.id_reg[0]\,
      I3 => \id0__1\,
      I4 => StartupState(1),
      I5 => \startup_process.id_reg[0]_0\,
      O => \slv_reg0_reg[2]_0\
    );
\sw_enable_n[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => sw_enable_n(0),
      I1 => StartupState(1),
      I2 => \sw_enable_n[0]_i_2_n_0\,
      I3 => \id0__1\,
      I4 => StartupState(2),
      I5 => StartupState(0),
      O => \sw_enable_n_reg[0]\
    );
\sw_enable_n[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \sw_enable_n[0]_i_2_n_0\
    );
\sw_enable_n[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^axi_bvalid_reg_0\,
      I1 => \slv_reg0_reg_n_0_[1]\,
      I2 => \slv_reg0_reg_n_0_[0]\,
      O => \id0__1\
    );
\sw_enable_n[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => sw_enable_n(1),
      I1 => StartupState(1),
      I2 => \sw_enable_n[0]_i_2_n_0\,
      I3 => \id0__1\,
      I4 => StartupState(2),
      I5 => StartupState(0),
      O => \sw_enable_n_reg[1]\
    );
\vdd18_toggle[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl is
  port (
    sw_enable_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    axi_bvalid_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    clk_pll_out : out STD_LOGIC_VECTOR ( 0 to 1 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vdd18_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle : out STD_LOGIC_VECTOR ( 0 to 1 );
    ss_n : out STD_LOGIC_VECTOR ( 0 to 1 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    clk_72M_pll : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_spi_in : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl is
  signal \FSM_sequential_StartupState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StartupState[2]_i_1_n_0\ : STD_LOGIC;
  signal StartupState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal \pll_clk_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \pll_clk_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \pll_clk_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \pll_clk_en_reg_n_0_[1]\ : STD_LOGIC;
  signal powerdownflag : STD_LOGIC;
  signal readyflag : STD_LOGIC;
  signal readyflag_i_1_n_0 : STD_LOGIC;
  signal \send_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal sensor_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \startup_process.id[0]_i_2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_StartupState[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_StartupState[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_StartupState_reg[0]\ : label is "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StartupState_reg[1]\ : label is "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StartupState_reg[2]\ : label is "onpix:011,onclk:100,send_poweroff:1101,on33:010,off33:1011,off18:1100,offpix:1010,on18:001,idle:000,offclk:1001,ready:111,offrstn:1000,send_rdy:110,onrstn:101";
  attribute SOFT_HLUTNM of \clk_pll_out[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_pll_out[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pll_clk_en[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pll_clk_en[1]_i_1\ : label is "soft_lutpair2";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of powerdownflag_reg : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of powerdownflag_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of powerdownflag_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of readyflag_i_1 : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[0]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[1]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \send_data_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[2]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \send_data_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \send_data_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \startup_process.id[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vdd18_toggle[0]_i_1\ : label is "soft_lutpair3";
begin
  sw_enable_n(0 to 1) <= \^sw_enable_n\(0 to 1);
  vdd18_toggle(0 to 1) <= \^vdd18_toggle\(0 to 1);
  vdd33_toggle(0 to 1) <= \^vdd33_toggle\(0 to 1);
  vddpix_toggle(0 to 1) <= \^vddpix_toggle\(0 to 1);
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
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11,
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
noip_ctrl_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_noip_ctrl_slave_lite_v1_0_S00_AXI
     port map (
      \FSM_sequential_StartupState_reg[2]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_11,
      Q(1 downto 0) => sensor_id(1 downto 0),
      SR(0) => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      StartupState(2 downto 0) => StartupState(2 downto 0),
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_bvalid_reg_0 => axi_bvalid_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(3 downto 0) => s00_axi_wdata(3 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(0) => s00_axi_wstrb(0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[0]_0\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      \slv_reg0_reg[2]_0\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12,
      \slv_reg0_reg[3]_0\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_7,
      \startup_process.id_reg[0]\ => \startup_process.id[0]_i_2_n_0\,
      \startup_process.id_reg[0]_0\ => \startup_process.id_reg_n_0_[0]\,
      sw_enable_n(0 to 1) => \^sw_enable_n\(0 to 1),
      \sw_enable_n_reg[0]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_6,
      \sw_enable_n_reg[1]\ => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10
    );
\pll_clk_en[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => StartupState(2),
      I2 => StartupState(1),
      I3 => StartupState(0),
      I4 => \pll_clk_en_reg_n_0_[0]\,
      O => \pll_clk_en[0]_i_1_n_0\
    );
\pll_clk_en[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => StartupState(2),
      I1 => \startup_process.id_reg_n_0_[0]\,
      I2 => StartupState(1),
      I3 => StartupState(0),
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
readyflag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => StartupState(1),
      I1 => StartupState(2),
      I2 => StartupState(0),
      I3 => readyflag,
      O => readyflag_i_1_n_0
    );
readyflag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => readyflag_i_1_n_0,
      Q => readyflag
    );
\send_data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => \send_data_reg[0]_i_1_n_0\,
      G => \send_data_reg[1]_i_1_n_0\,
      GE => '1',
      Q => s00_axi_rdata(0)
    );
\send_data_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => readyflag,
      I1 => powerdownflag,
      O => \send_data_reg[0]_i_1_n_0\
    );
\send_data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => readyflag,
      G => \send_data_reg[1]_i_1_n_0\,
      GE => '1',
      Q => s00_axi_rdata(1)
    );
\send_data_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => powerdownflag,
      I1 => readyflag,
      O => \send_data_reg[1]_i_1_n_0\
    );
\send_data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => sensor_id(0),
      G => '1',
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
      G => '1',
      GE => '1',
      Q => s00_axi_rdata(3)
    );
\ss_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_spi_in,
      CE => '1',
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_13,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => ss_n(0)
    );
\ss_n_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_spi_in,
      CE => '1',
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_7,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => ss_n(1)
    );
\startup_process.id[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => StartupState(2),
      I1 => StartupState(0),
      O => \startup_process.id[0]_i_2_n_0\
    );
\startup_process.id_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_12,
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
      D => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_10,
      PRE => noip_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      Q => \^sw_enable_n\(1)
    );
\vdd18_toggle[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => StartupState(0),
      I2 => StartupState(2),
      I3 => StartupState(1),
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
      I2 => StartupState(2),
      I3 => StartupState(1),
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
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => StartupState(1),
      I2 => StartupState(2),
      I3 => StartupState(0),
      I4 => \^vdd33_toggle\(0),
      O => \vdd33_toggle[0]_i_1_n_0\
    );
\vdd33_toggle[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \startup_process.id_reg_n_0_[0]\,
      I1 => StartupState(1),
      I2 => StartupState(2),
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
      INIT => X"FFFF0008"
    )
        port map (
      I0 => StartupState(1),
      I1 => StartupState(0),
      I2 => StartupState(2),
      I3 => \startup_process.id_reg_n_0_[0]\,
      I4 => \^vddpix_toggle\(0),
      O => \vddpix_toggle[0]_i_1_n_0\
    );
\vddpix_toggle[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0800"
    )
        port map (
      I0 => StartupState(1),
      I1 => StartupState(0),
      I2 => StartupState(2),
      I3 => \startup_process.id_reg_n_0_[0]\,
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
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute x_interface_info of ss_n : signal is "xilinx.com:interface:spi:1.0 noip_spi SS_O";
begin
  mosi <= \<const0>\;
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
  sck <= \<const0>\;
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
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(3 downto 0) => \^s00_axi_rdata\(3 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(3 downto 0) => s00_axi_wdata(3 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(0) => s00_axi_wstrb(0),
      s00_axi_wvalid => s00_axi_wvalid,
      ss_n(0 to 1) => ss_n(0 to 1),
      sw_enable_n(0 to 1) => sw_enable_n(0 to 1),
      vdd18_toggle(0 to 1) => vdd18_toggle(0 to 1),
      vdd33_toggle(0 to 1) => vdd33_toggle(0 to 1),
      vddpix_toggle(0 to 1) => vddpix_toggle(0 to 1)
    );
end STRUCTURE;
