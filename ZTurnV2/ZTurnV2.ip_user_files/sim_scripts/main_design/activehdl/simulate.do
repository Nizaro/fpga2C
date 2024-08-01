transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+main_design  -L xilinx_vip -L xpm -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L xlconcat_v2_1_6 -L xlslice_v1_0_4 -L xlconstant_v1_1_9 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.main_design xil_defaultlib.glbl

do {main_design.udo}

run

endsim

quit -force
