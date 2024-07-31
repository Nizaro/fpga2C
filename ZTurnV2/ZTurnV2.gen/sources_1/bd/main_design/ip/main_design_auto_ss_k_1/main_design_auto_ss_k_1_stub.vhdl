-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Jul 30 15:57:03 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top main_design_auto_ss_k_1 -prefix
--               main_design_auto_ss_k_1_ main_design_auto_ss_k_1_stub.vhdl
-- Design      : main_design_auto_ss_k_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_auto_ss_k_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    sparse_tkeep_removed : out STD_LOGIC
  );

end main_design_auto_ss_k_1;

architecture stub of main_design_auto_ss_k_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tlast,s_axis_tdest[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tlast,m_axis_tdest[0:0],sparse_tkeep_removed";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top_main_design_auto_ss_k_1,Vivado 2024.1";
begin
end;
