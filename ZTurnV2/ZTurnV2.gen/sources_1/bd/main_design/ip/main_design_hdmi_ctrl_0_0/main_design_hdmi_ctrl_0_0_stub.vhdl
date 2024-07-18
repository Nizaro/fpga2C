-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Jul 18 15:34:58 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_hdmi_ctrl_0_0/main_design_hdmi_ctrl_0_0_stub.vhdl
-- Design      : main_design_hdmi_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_hdmi_ctrl_0_0 is
  Port ( 
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

end main_design_hdmi_ctrl_0_0;

architecture stub of main_design_hdmi_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "hdmi_pclk,hdmi_data[15:0],hdmi_vsync,hdmi_hsync,hdmi_de,hdmi_int,s00_axis_aclk,s00_axis_aresetn,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,s01_axis_aclk,s01_axis_aresetn,s01_axis_tready,s01_axis_tdata[31:0],s01_axis_tstrb[3:0],s01_axis_tlast,s01_axis_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "hdmi_ctrl,Vivado 2024.1";
begin
end;
