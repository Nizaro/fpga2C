transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+verif_design  -L xilinx_vip -L xpm -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.verif_design xil_defaultlib.glbl

do {verif_design.udo}

run

endsim

quit -force
