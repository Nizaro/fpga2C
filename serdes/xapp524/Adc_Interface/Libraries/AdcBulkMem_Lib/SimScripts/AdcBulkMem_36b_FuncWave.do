onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_ClkIn
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_EnaIn
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_RstIn
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_DataIn
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_ClkOut
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_EnaOut
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_RstOut
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Mem_DataOut
add wave -noupdate -divider <NULL>
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Empty
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Middle
add wave -noupdate /adcbulkmem_36b_testbench/Sim_Full
add wave -noupdate -divider {Internal signals}
add wave -noupdate /adcbulkmem_36b_testbench/UUT/IntAddrA_Wr
add wave -noupdate /adcbulkmem_36b_testbench/UUT/IntAddrB_Rd
add wave -noupdate /adcbulkmem_36b_testbench/UUT/IntAddrCntWr
add wave -noupdate /adcbulkmem_36b_testbench/UUT/IntAddrCntRd
add wave -noupdate -divider {DTU control signals}
add wave -noupdate /adcbulkmem_36b_testbench/DTU/IntFullEmpty
add wave -noupdate /adcbulkmem_36b_testbench/DTU/IntStartRead
add wave -noupdate /adcbulkmem_36b_testbench/DTU/IntStartWrite
add wave -noupdate /adcbulkmem_36b_testbench/DTU/IntWaitStat
add wave -noupdate -radix decimal /adcbulkmem_36b_testbench/DTU/IntDelayPeriod
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4351 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 294
configure wave -valuecolwidth 109
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {94097 ps}
