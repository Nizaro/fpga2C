# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
#
# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7vx485tffg1157-1 -force

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design design_1

# Creating design if needed
if { [get_files *.bd] eq "" } {
   puts "INFO: Currently there are no designs in project, so creating one..."
   create_bd_design design_1
}



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set S_AXIS_S2MM_2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM_2 ]
  set_property -dict [ list CONFIG.TDATA_NUM_BYTES {4} CONFIG.TDEST_WIDTH {0} CONFIG.TID_WIDTH {0} CONFIG.TUSER_WIDTH {0} CONFIG.HAS_TREADY {1} CONFIG.HAS_TSTRB {0} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.FREQ_HZ {100000000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN {design_1_M_AXI_LITE_ACLK} CONFIG.LAYERED_METADATA {undef}  ] $S_AXIS_S2MM_2
  set S_AXIS_S2MM_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM_1 ]
  set_property -dict [ list CONFIG.TDATA_NUM_BYTES {4} CONFIG.TDEST_WIDTH {0} CONFIG.TID_WIDTH {0} CONFIG.TUSER_WIDTH {0} CONFIG.HAS_TREADY {1} CONFIG.HAS_TSTRB {0} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.FREQ_HZ {100000000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN {design_1_M_AXI_LITE_ACLK} CONFIG.LAYERED_METADATA {undef}  ] $S_AXIS_S2MM_1

  # Create ports
  set M_AXI_LITE_ACLK [ create_bd_port -dir I -type clk M_AXI_LITE_ACLK ]
  set_property -dict [ list CONFIG.FREQ_HZ {100000000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN {design_1_M_AXI_LITE_ACLK} CONFIG.ASSOCIATED_BUSIF {S_AXIS_S2MM_2:S_AXIS_S2MM_1}  ] $M_AXI_LITE_ACLK
  set M_AXI_LITE_ARESETN [ create_bd_port -dir I -type rst M_AXI_LITE_ARESETN ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $M_AXI_LITE_ARESETN

  # Create instance: cdn_axi_bfm_1, and set properties
  set cdn_axi_bfm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cdn_axi_bfm:4.1 cdn_axi_bfm_1 ]
  set_property -dict [ list CONFIG.C_PROTOCOL_SELECTION {2}  ] $cdn_axi_bfm_1

  # Create instance: axi_dma_1, and set properties
  set axi_dma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.0 axi_dma_1 ]
  set_property -dict [ list CONFIG.c_include_sg {0} CONFIG.c_sg_length_width {23} CONFIG.c_include_mm2s {0} CONFIG.c_m_axi_s2mm_data_width {128} CONFIG.c_include_s2mm_dre {1} CONFIG.c_s2mm_burst_size {8}  ] $axi_dma_1

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.0 axi_interconnect_1 ]

  # Create instance: axi_dma_2, and set properties
  set axi_dma_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.0 axi_dma_2 ]
  set_property -dict [ list CONFIG.c_include_sg {0} CONFIG.c_sg_length_width {23} CONFIG.c_include_mm2s {0} CONFIG.c_m_axi_s2mm_data_width {128} CONFIG.c_include_s2mm_dre {1} CONFIG.c_s2mm_burst_size {8}  ] $axi_dma_2

  # Create instance: axi_interconnect_2, and set properties
  set axi_interconnect_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.0 axi_interconnect_2 ]
  set_property -dict [ list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1}  ] $axi_interconnect_2

  # Create instance: cdn_axi_bfm_2, and set properties
  set cdn_axi_bfm_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cdn_axi_bfm:4.1 cdn_axi_bfm_2 ]
  set_property -dict [ list CONFIG.C_MODE_SELECT {1} CONFIG.C_S_AXI4_ID_WIDTH {1} CONFIG.C_S_AXI4_DATA_WIDTH {128} CONFIG.C_S_AXI4_BASEADDR {0x76000000} CONFIG.C_S_AXI4_HIGHADDR {0x761FFFFF}  ] $cdn_axi_bfm_2

  # Create interface connections
  connect_bd_intf_net -intf_net cdn_axi_bfm_1_m_axi_lite [get_bd_intf_pins cdn_axi_bfm_1/M_AXI_LITE] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_m00_axi [get_bd_intf_pins axi_interconnect_1/M00_AXI] [get_bd_intf_pins axi_dma_1/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_m01_axi [get_bd_intf_pins axi_dma_2/S_AXI_LITE] [get_bd_intf_pins axi_interconnect_1/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_2_m00_axi [get_bd_intf_pins axi_interconnect_2/M00_AXI] [get_bd_intf_pins cdn_axi_bfm_2/S_AXI]
  connect_bd_intf_net -intf_net s00_axi_1 [get_bd_intf_pins axi_interconnect_2/S00_AXI] [get_bd_intf_pins axi_dma_1/M_AXI_S2MM]
  connect_bd_intf_net -intf_net s01_axi_1 [get_bd_intf_pins axi_interconnect_2/S01_AXI] [get_bd_intf_pins axi_dma_2/M_AXI_S2MM]
  connect_bd_intf_net -intf_net s_axis_s2mm_1 [get_bd_intf_ports S_AXIS_S2MM_2] [get_bd_intf_pins axi_dma_2/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net s_axis_s2mm_1_1 [get_bd_intf_ports S_AXIS_S2MM_1] [get_bd_intf_pins axi_dma_1/S_AXIS_S2MM]

  # Create port connections
  connect_bd_net -net m_axi_lite_aclk_1 [get_bd_ports M_AXI_LITE_ACLK] [get_bd_pins cdn_axi_bfm_1/M_AXI_LITE_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/M01_ACLK] [get_bd_pins axi_dma_1/s_axi_lite_aclk] [get_bd_pins axi_dma_1/m_axi_s2mm_aclk] [get_bd_pins axi_dma_2/s_axi_lite_aclk] [get_bd_pins axi_dma_2/m_axi_s2mm_aclk] [get_bd_pins axi_interconnect_2/M00_ACLK] [get_bd_pins axi_interconnect_2/S00_ACLK] [get_bd_pins axi_interconnect_2/ACLK] [get_bd_pins axi_interconnect_2/S01_ACLK] [get_bd_pins cdn_axi_bfm_2/S_AXI_ACLK]
  connect_bd_net -net m_axi_lite_aresetn_1 [get_bd_ports M_AXI_LITE_ARESETN] [get_bd_pins cdn_axi_bfm_1/M_AXI_LITE_ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_interconnect_1/M01_ARESETN] [get_bd_pins axi_dma_1/axi_resetn] [get_bd_pins axi_dma_2/axi_resetn] [get_bd_pins axi_interconnect_2/M00_ARESETN] [get_bd_pins axi_interconnect_2/S00_ARESETN] [get_bd_pins axi_interconnect_2/ARESETN] [get_bd_pins axi_interconnect_2/S01_ARESETN] [get_bd_pins cdn_axi_bfm_2/S_AXI_ARESETN]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x41E00000 [get_bd_addr_spaces cdn_axi_bfm_1/Data_lite] [get_bd_addr_segs axi_dma_1/S_AXI_LITE/Reg] SEG1
  create_bd_addr_seg -range 0x10000 -offset 0x41E10000 [get_bd_addr_spaces cdn_axi_bfm_1/Data_lite] [get_bd_addr_segs axi_dma_2/S_AXI_LITE/Reg] SEG2
  create_bd_addr_seg -range 0x200000 -offset 0x76000000 [get_bd_addr_spaces axi_dma_1/Data_S2MM] [get_bd_addr_segs cdn_axi_bfm_2/axi_slave/Mem0] SEG1
  create_bd_addr_seg -range 0x200000 -offset 0x76000000 [get_bd_addr_spaces axi_dma_2/Data_S2MM] [get_bd_addr_segs cdn_axi_bfm_2/axi_slave/Mem0] SEG2
  

  # Restore current instance
  current_bd_instance $oldCurInst
}


#####################################################
# Main Flow
#####################################################

create_root_design ""
