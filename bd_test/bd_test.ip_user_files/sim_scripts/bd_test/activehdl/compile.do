transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/xlconcat_v2_1_6

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap xlconcat_v2_1_6 activehdl/xlconcat_v2_1_6

vlog -work xpm  -sv2k12 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_selectio_wiz_0_0/bd_test_selectio_wiz_0_0_selectio_wiz.v" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_selectio_wiz_0_0/bd_test_selectio_wiz_0_0.v" \

vcom -work xil_defaultlib -  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream_slave_stream_v1_0_S00_AXIS.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream_master_stream_v1_0_M00_AXIS.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_noip_lvds_stream_0_0/sim/bd_test_noip_lvds_stream_0_0.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_fifo_generator_0_0/sim/bd_test_fifo_generator_0_0.v" \

vlog -work xlconcat_v2_1_6  -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_xlconcat_0_0/sim/bd_test_xlconcat_0_0.v" \

vcom -work xil_defaultlib -  \
"../../../../bd_test.gen/sources_1/bd/bd_test/sim/bd_test.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

