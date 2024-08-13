transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+bd_test  -L xpm -L xil_defaultlib -L fifo_generator_v13_2_10 -L xlconcat_v2_1_6 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bd_test xil_defaultlib.glbl

do {bd_test.udo}

run 1000ns

endsim

quit -force
