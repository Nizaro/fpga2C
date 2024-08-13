--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Fri Aug  9 15:54:13 2024
--Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
--Command     : generate_target bd_test_wrapper.bd
--Design      : bd_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_test_wrapper is
  port (
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tvalid : out STD_LOGIC;
    lvds_clk : in STD_LOGIC;
    lvds_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lvds_sync : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    monitor0 : in STD_LOGIC;
    monitor1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    trigger0 : out STD_LOGIC
  );
end bd_test_wrapper;

architecture STRUCTURE of bd_test_wrapper is
  component bd_test is
  port (
    monitor0 : in STD_LOGIC;
    monitor1 : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    trigger0 : out STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    reset : in STD_LOGIC;
    lvds_clk : in STD_LOGIC;
    lvds_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lvds_sync : in STD_LOGIC
  );
  end component bd_test;
begin
bd_test_i: component bd_test
     port map (
      M00_AXIS_tdata(31 downto 0) => M00_AXIS_tdata(31 downto 0),
      M00_AXIS_tlast => M00_AXIS_tlast,
      M00_AXIS_tready => M00_AXIS_tready,
      M00_AXIS_tstrb(3 downto 0) => M00_AXIS_tstrb(3 downto 0),
      M00_AXIS_tvalid => M00_AXIS_tvalid,
      lvds_clk => lvds_clk,
      lvds_data(3 downto 0) => lvds_data(3 downto 0),
      lvds_sync => lvds_sync,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      monitor0 => monitor0,
      monitor1 => monitor1,
      reset => reset,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tstrb(3 downto 0) => s00_axis_tstrb(3 downto 0),
      s00_axis_tvalid => s00_axis_tvalid,
      trigger0 => trigger0
    );
end STRUCTURE;
