onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Constants}
add wave -noupdate /adcclock_testbench/Sim_C_BufioLoc
add wave -noupdate /adcclock_testbench/Sim_C_BufrLoc
add wave -noupdate -radix decimal /adcclock_testbench/Sim_C_AdcBits
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate /adcclock_testbench/Sim_BitClk
add wave -noupdate /adcclock_testbench/Sim_BitClkRst
add wave -noupdate /adcclock_testbench/Sim_BitClkEna
add wave -noupdate /adcclock_testbench/Sim_BitClkReSync
add wave -noupdate /adcclock_testbench/Sim_BitClk_MonClkOut
add wave -noupdate /adcclock_testbench/Sim_BitClk_MonClkIn
add wave -noupdate /adcclock_testbench/Sim_BitClk_RefClkOut
add wave -noupdate /adcclock_testbench/Sim_BitClk_RefClkIn
add wave -noupdate /adcclock_testbench/Sim_BitClkAlignWarn
add wave -noupdate /adcclock_testbench/Sim_BitClkInvrtd
add wave -noupdate /adcclock_testbench/Sim_BitClkDone
add wave -noupdate -divider {Internal signals}
add wave -noupdate -divider IDELAY
add wave -noupdate /adcclock_testbench/UUT/AdcClock_I_Iodly/IS_IDATAIN_INVERTED
add wave -noupdate -radix decimal /adcclock_testbench/Sim_C_StatTaps
add wave -noupdate /adcclock_testbench/UUT/BitClk
add wave -noupdate /adcclock_testbench/UUT/IntBitClk_Ddly
add wave -noupdate /adcclock_testbench/UUT/IntClkCtrlDlyCe
add wave -noupdate /adcclock_testbench/UUT/IntClkCtrlDlyInc
add wave -noupdate /adcclock_testbench/UUT/IntClkCtrlDlyRst
add wave -noupdate -divider ISERDES
add wave -noupdate /adcclock_testbench/UUT/IntBitClk_Ddly
add wave -noupdate /adcclock_testbench/UUT/BitClk
add wave -noupdate /adcclock_testbench/UUT/BitClkEna
add wave -noupdate /adcclock_testbench/UUT/IntBitClkRst
add wave -noupdate /adcclock_testbench/UUT/BitClk_MonClkIn
add wave -noupdate /adcclock_testbench/UUT/BitClk_RefClkIn
add wave -noupdate /adcclock_testbench/UUT/IntBitClk
add wave -noupdate /adcclock_testbench/UUT/IntClkCtrlOut
add wave -noupdate -divider {Calibration Logic}
add wave -noupdate /adcclock_testbench/UUT/IntCal
add wave -noupdate /adcclock_testbench/UUT/IntVal
add wave -noupdate /adcclock_testbench/UUT/IntCalVal
add wave -noupdate /adcclock_testbench/UUT/IntProceedCnt
add wave -noupdate /adcclock_testbench/UUT/IntproceedCntTc
add wave -noupdate /adcclock_testbench/UUT/IntproceedCntTc_d
add wave -noupdate /adcclock_testbench/UUT/IntProceed
add wave -noupdate /adcclock_testbench/UUT/IntProceedDone
add wave -noupdate /adcclock_testbench/UUT/State
add wave -noupdate /adcclock_testbench/UUT/ReturnState
add wave -noupdate /adcclock_testbench/UUT/PassedSubState
add wave -noupdate /adcclock_testbench/UUT/IntNumIncDecIdly
add wave -noupdate /adcclock_testbench/UUT/IntAction
add wave -noupdate /adcclock_testbench/UUT/IntClkCtrlDone
add wave -noupdate /adcclock_testbench/UUT/IntClkCtrlAlgnWrn
add wave -noupdate /adcclock_testbench/UUT/IntClkCtrlInvrtd
add wave -noupdate /adcclock_testbench/UUT/IntTurnAroundBit
add wave -noupdate /adcclock_testbench/UUT/IntCalValReg
add wave -noupdate /adcclock_testbench/UUT/IntTimeOutCnt
add wave -noupdate /adcclock_testbench/UUT/IntStepCnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3125 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 375
configure wave -valuecolwidth 74
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {39261 ps}
