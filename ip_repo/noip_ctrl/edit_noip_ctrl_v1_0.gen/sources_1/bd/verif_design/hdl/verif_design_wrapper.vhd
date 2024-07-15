--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Mon Jul 15 10:20:17 2024
--Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
--Command     : generate_target verif_design_wrapper.bd
--Design      : verif_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity verif_design_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_72M_pll_0 : in STD_LOGIC;
    clk_pll_out_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    clk_spi_in_0 : in STD_LOGIC;
    noip_reset_n_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_spi_0_io1_i : in STD_LOGIC;
    noip_spi_0_io1_o : out STD_LOGIC;
    noip_spi_0_sck_o : out STD_LOGIC;
    noip_spi_0_ss_o : out STD_LOGIC_VECTOR ( 0 to 1 );
    reset_rtl_0 : in STD_LOGIC;
    sw_enable_n_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 )
  );
end verif_design_wrapper;

architecture STRUCTURE of verif_design_wrapper is
  component verif_design is
  port (
    noip_spi_0_io1_o : out STD_LOGIC;
    noip_spi_0_sck_o : out STD_LOGIC;
    noip_spi_0_io1_i : in STD_LOGIC;
    noip_spi_0_ss_o : out STD_LOGIC_VECTOR ( 0 to 1 );
    sw_enable_n_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vddpix_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd33_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    vdd18_toggle_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    noip_reset_n_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    clk_pll_out_0 : out STD_LOGIC_VECTOR ( 0 to 1 );
    clk_72M_pll_0 : in STD_LOGIC;
    clk_spi_in_0 : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC
  );
  end component verif_design;
begin
verif_design_i: component verif_design
     port map (
      clk_100MHz => clk_100MHz,
      clk_72M_pll_0 => clk_72M_pll_0,
      clk_pll_out_0(0 to 1) => clk_pll_out_0(0 to 1),
      clk_spi_in_0 => clk_spi_in_0,
      noip_reset_n_0(0 to 1) => noip_reset_n_0(0 to 1),
      noip_spi_0_io1_i => noip_spi_0_io1_i,
      noip_spi_0_io1_o => noip_spi_0_io1_o,
      noip_spi_0_sck_o => noip_spi_0_sck_o,
      noip_spi_0_ss_o(0 to 1) => noip_spi_0_ss_o(0 to 1),
      reset_rtl_0 => reset_rtl_0,
      sw_enable_n_0(0 to 1) => sw_enable_n_0(0 to 1),
      vdd18_toggle_0(0 to 1) => vdd18_toggle_0(0 to 1),
      vdd33_toggle_0(0 to 1) => vdd33_toggle_0(0 to 1),
      vddpix_toggle_0(0 to 1) => vddpix_toggle_0(0 to 1)
    );
end STRUCTURE;
