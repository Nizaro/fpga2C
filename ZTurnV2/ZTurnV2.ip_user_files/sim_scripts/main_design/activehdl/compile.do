transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/xlconcat_v2_1_6
vlib activehdl/xlslice_v1_0_4

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap xlconcat_v2_1_6 activehdl/xlconcat_v2_1_6
vmap xlslice_v1_0_4 activehdl/xlslice_v1_0_4

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -  \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_3 -  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/main_design/ip/main_design_proc_sys_reset_0_0/sim/main_design_proc_sys_reset_0_0.vhd" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_1/main_design_xbar_1_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_2/main_design_xbar_2_sim_netlist.vhdl" \
"../../../bd/main_design/ipshared/1458/hdl/noip_lvds_stream_slave_stream_v1_0_S00_AXIS.vhd" \
"../../../bd/main_design/ipshared/1458/hdl/noip_lvds_stream_master_stream_v1_0_M00_AXIS.vhd" \
"../../../bd/main_design/ipshared/1458/hdl/noip_lvds_stream.vhd" \
"../../../bd/main_design/ip/main_design_noip_lvds_stream_0_0/sim/main_design_noip_lvds_stream_0_0.vhd" \

vcom -work xil_defaultlib -2008  \
"../../../bd/main_design/ipshared/dc1a/hdl/noip_ctrl_slave_lite_v1_0_S00_AXI.vhd" \
"../../../bd/main_design/ipshared/dc1a/hdl/noip_ctrl.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/main_design/ip/main_design_noip_ctrl_0_0/sim/main_design_noip_ctrl_0_0.vhd" \
"../../../bd/main_design/ip/main_design_noip_lvds_stream_0_1/sim/main_design_noip_lvds_stream_0_1.vhd" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_3/main_design_xbar_3_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_4/main_design_xbar_4_sim_netlist.vhdl" \

vlog -work xlconcat_v2_1_6  -v2k5 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/main_design/ip/main_design_xlconcat_0_0/sim/main_design_xlconcat_0_0.v" \

vlog -work xlslice_v1_0_4  -v2k5 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/main_design/ip/main_design_xlslice_0_1/sim/main_design_xlslice_0_1.v" \
"../../../bd/main_design/ip/main_design_xlslice_0_2/sim/main_design_xlslice_0_2.v" \
"../../../bd/main_design/ip/main_design_monitor0_slice0_1/sim/main_design_monitor0_slice0_1.v" \
"../../../bd/main_design/ip/main_design_monitor0_slice1_1/sim/main_design_monitor0_slice1_1.v" \

vcom -work xil_defaultlib -  \
"../../../bd/main_design/ip/main_design_lvds_clkin_0_ibuf_1/util_ds_buf.vhd" \
"../../../bd/main_design/ip/main_design_lvds_clkin_0_ibuf_1/sim/main_design_lvds_clkin_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_sync_0_ibuf1_0/sim/main_design_lvds_sync_0_ibuf1_0.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout0_0_ibuf_0/sim/main_design_lvds_dout0_0_ibuf_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/main_design/ip/main_design_xlconcat_0_1/sim/main_design_xlconcat_0_1.v" \

vcom -work xil_defaultlib -  \
"../../../bd/main_design/ip/main_design_lvds_dout0_0_ibuf_1/sim/main_design_lvds_dout0_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout1_0_ibuf_1/sim/main_design_lvds_dout1_0_ibuf_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/main_design/ip/main_design_lvds_data_0_concat_1/sim/main_design_lvds_data_0_concat_1.v" \

vcom -work xil_defaultlib -  \
"../../../bd/main_design/ip/main_design_lvds_dout0_0_ibuf_3/sim/main_design_lvds_dout0_0_ibuf_3.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout1_0_ibuf_3/sim/main_design_lvds_dout1_0_ibuf_3.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout2_0_ibuf_1/sim/main_design_lvds_dout2_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout3_0_ibuf_1/sim/main_design_lvds_dout3_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_sync_0_ibuf_1/sim/main_design_lvds_sync_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_util_vector_logic_0_0/main_design_util_vector_logic_0_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_data_0_inverter_0/main_design_lvds_data_0_inverter_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_data_1_inverter_0/main_design_lvds_data_1_inverter_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_sync_1_inverter_0/main_design_lvds_sync_1_inverter_0_sim_netlist.vhdl" \
"../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl_slave_stream_v1_0_S00_AXIS.vhd" \
"../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl_slave_stream_v1_0_S01_AXIS.vhd" \
"../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl.vhd" \
"../../../bd/main_design/ip/main_design_hdmi_ctrl_0_0/sim/main_design_hdmi_ctrl_0_0.vhd" \
"../../../bd/main_design/ip/main_design_my_iobuf_0_0/sim/main_design_my_iobuf_0_0.vhd" \
"../../../bd/main_design/ip/main_design_iobuf_I2C0_SDA_0/sim/main_design_iobuf_I2C0_SDA_0.vhd" \
"../../../bd/main_design/ip/main_design_fifo_generator_0_0/main_design_fifo_generator_0_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_fifo_generator_0_1/main_design_fifo_generator_0_1_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_clkin_1_ibuf_0/sim/main_design_lvds_clkin_1_ibuf_0.vhd" \
"../../../bd/main_design/ip/main_design_clk_wiz_0_1/main_design_clk_wiz_0_1_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_util_vector_logic_0_1/main_design_util_vector_logic_0_1_sim_netlist.vhdl" \
"../../../bd/main_design/sim/main_design.vhd" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_pc_0/main_design_auto_pc_0_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_df_0/main_design_auto_us_df_0_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_df_1/main_design_auto_us_df_1_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_df_2/main_design_auto_us_df_2_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_pc_1/main_design_auto_pc_1_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slid_0/main_design_auto_ss_slid_0_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_k_0/main_design_auto_ss_k_0_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slidr_0/main_design_auto_ss_slidr_0_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_k_1/main_design_auto_ss_k_1_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slidr_1/main_design_auto_ss_slidr_1_sim_netlist.vhdl" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3242" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/main_design/ip/main_design_s_arb_req_suppress_concat_0/sim/main_design_s_arb_req_suppress_concat_0.v" \

vcom -work xil_defaultlib -  \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_k_2/main_design_auto_ss_k_2_sim_netlist.vhdl" \
"/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slidr_2/main_design_auto_ss_slidr_2_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"

