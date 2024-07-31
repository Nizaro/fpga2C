onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {CONSTANTS in _Testbench for AdcToplevel}
add wave -noupdate /adctoplevel_testbench/Sim_C_AdcChnls
add wave -noupdate /adctoplevel_testbench/Sim_C_AdcWireInt
add wave -noupdate /adctoplevel_testbench/Sim_C_BufioLoc
add wave -noupdate /adctoplevel_testbench/Sim_C_BufrLoc
add wave -noupdate /adctoplevel_testbench/Sim_C_StatTaps
add wave -noupdate /adctoplevel_testbench/Sim_C_AdcUseIdlyCtrl
add wave -noupdate /adctoplevel_testbench/Sim_C_AdcIdlyCtrlLoc
add wave -noupdate /adctoplevel_testbench/Sim_C_FrmPattern
add wave -noupdate -divider {CONSTANTS in _testbench for AdcToplevel_Checker}
add wave -noupdate /adctoplevel_testbench/sim_C_CheckVecFile
add wave -noupdate /adctoplevel_testbench/Sim_C_AdcBits
add wave -noupdate -divider {CONSTANTS in _Testbench for Adctoplevel_Tester}
add wave -noupdate /adctoplevel_testbench/Sim_C_ClockPeriod
add wave -noupdate /adctoplevel_testbench/Sim_C_Ads6445DataVecFile
add wave -noupdate /adctoplevel_testbench/Sim_C_Ads6445TestVecFile
add wave -noupdate -divider {UUT : AdcToplevel}
add wave -noupdate /adctoplevel_testbench/Sim_DCLK_p
add wave -noupdate /adctoplevel_testbench/Sim_DCLK_n
add wave -noupdate /adctoplevel_testbench/Sim_FCLK_p
add wave -noupdate /adctoplevel_testbench/Sim_FCLK_n
add wave -noupdate /adctoplevel_testbench/Sim_DATA_p
add wave -noupdate /adctoplevel_testbench/Sim_DATA_n
add wave -noupdate /adctoplevel_testbench/Sim_SysRefClk
add wave -noupdate /adctoplevel_testbench/Sim_AdcMemClk
add wave -noupdate /adctoplevel_testbench/Sim_AdcIntrfcRst
add wave -noupdate /adctoplevel_testbench/Sim_AdcIntrfcEna
add wave -noupdate /adctoplevel_testbench/Sim_AdcReSync
add wave -noupdate /adctoplevel_testbench/Sim_AdcFrmSyncWrn
add wave -noupdate /adctoplevel_testbench/Sim_AdcBitClkAlgnWrn
add wave -noupdate /adctoplevel_testbench/Sim_AdcBitClkInvrtd
add wave -noupdate /adctoplevel_testbench/Sim_AdcBitClkDone
add wave -noupdate /adctoplevel_testbench/Sim_AdcIdlyCtrlRdy
add wave -noupdate /adctoplevel_testbench/Sim_AdcFrmDataOut
add wave -noupdate /adctoplevel_testbench/Sim_AdcMemDataOut
add wave -noupdate /adctoplevel_testbench/Sim_AdcMemRst
add wave -noupdate /adctoplevel_testbench/Sim_AdcMemEna
add wave -noupdate /adctoplevel_testbench/Sim_AdcMemFlags
add wave -noupdate /adctoplevel_testbench/Sim_AdcMemFull
add wave -noupdate /adctoplevel_testbench/Sim_AdcMemEmpty
add wave -noupdate -divider {DTU : AdcToplevel_Tester}
add wave -noupdate /adctoplevel_testbench/Sim_Pdna
add wave -noupdate /adctoplevel_testbench/Sim_Pdnb
add wave -noupdate /adctoplevel_testbench/Sim_Cfg1
add wave -noupdate /adctoplevel_testbench/Sim_Cfg2
add wave -noupdate /adctoplevel_testbench/Sim_Cfg3
add wave -noupdate /adctoplevel_testbench/Sim_Cfg4
add wave -noupdate /adctoplevel_testbench/Sim_Sen
add wave -noupdate /adctoplevel_testbench/Sim_Sclk
add wave -noupdate /adctoplevel_testbench/Sim_Sdata
add wave -noupdate /adctoplevel_testbench/Sim_Reset
add wave -noupdate -divider <NULL>
add wave -noupdate /adctoplevel_testbench/Sim_PowerOn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 299
configure wave -valuecolwidth 224
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
WaveRestoreZoom {0 ps} {86718028 ps}
