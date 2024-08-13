transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/fifo_generator_v13_2_10
vlib riviera/xlconcat_v2_1_6

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6

vlog -work xpm  -incr -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_selectio_wiz_0_0/bd_test_selectio_wiz_0_0_selectio_wiz.v" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_selectio_wiz_0_0/bd_test_selectio_wiz_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream_slave_stream_v1_0_S00_AXIS.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream_master_stream_v1_0_M00_AXIS.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_noip_lvds_stream_0_0/sim/bd_test_noip_lvds_stream_0_0.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_fifo_generator_0_0/sim/bd_test_fifo_generator_0_0.v" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib -l fifo_generator_v13_2_10 -l xlconcat_v2_1_6 \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_xlconcat_0_0/sim/bd_test_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../bd_test.gen/sources_1/bd/bd_test/sim/bd_test.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

