-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Aug  5 09:37:28 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_selectio_data_0_0/main_design_lvds_selectio_data_0_0_stub.vhdl
-- Design      : main_design_lvds_selectio_data_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_lvds_selectio_data_0_0 is
  Port ( 
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 39 downto 0 );
    bitslip : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end main_design_lvds_selectio_data_0_0;

architecture stub of main_design_lvds_selectio_data_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins_p[4:0],data_in_from_pins_n[4:0],data_in_to_device[39:0],bitslip[4:0],clk_in_p,clk_in_n,clk_div_out,clk_reset,io_reset";
begin
end;
