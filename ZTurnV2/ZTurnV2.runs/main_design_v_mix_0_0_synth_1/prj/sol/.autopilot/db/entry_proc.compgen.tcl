# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name HwReg_layerEnable_val16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnable_val16 \
    op interface \
    ports { HwReg_layerEnable_val16 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name HwReg_layerEnable_val16_c12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnable_val16_c12 \
    op interface \
    ports { HwReg_layerEnable_val16_c12_din { O 3 vector } HwReg_layerEnable_val16_c12_num_data_valid { I 4 vector } HwReg_layerEnable_val16_c12_fifo_cap { I 4 vector } HwReg_layerEnable_val16_c12_full_n { I 1 bit } HwReg_layerEnable_val16_c12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name HwReg_layerStartX_1_val17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartX_1_val17 \
    op interface \
    ports { HwReg_layerStartX_1_val17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name HwReg_layerStartX_1_val17_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartX_1_val17_c \
    op interface \
    ports { HwReg_layerStartX_1_val17_c_din { O 16 vector } HwReg_layerStartX_1_val17_c_num_data_valid { I 4 vector } HwReg_layerStartX_1_val17_c_fifo_cap { I 4 vector } HwReg_layerStartX_1_val17_c_full_n { I 1 bit } HwReg_layerStartX_1_val17_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name HwReg_layerStartX_2_val18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartX_2_val18 \
    op interface \
    ports { HwReg_layerStartX_2_val18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name HwReg_layerStartX_2_val18_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartX_2_val18_c \
    op interface \
    ports { HwReg_layerStartX_2_val18_c_din { O 16 vector } HwReg_layerStartX_2_val18_c_num_data_valid { I 4 vector } HwReg_layerStartX_2_val18_c_fifo_cap { I 4 vector } HwReg_layerStartX_2_val18_c_full_n { I 1 bit } HwReg_layerStartX_2_val18_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name HwReg_layerStartY_1_val19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartY_1_val19 \
    op interface \
    ports { HwReg_layerStartY_1_val19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name HwReg_layerStartY_1_val19_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartY_1_val19_c \
    op interface \
    ports { HwReg_layerStartY_1_val19_c_din { O 16 vector } HwReg_layerStartY_1_val19_c_num_data_valid { I 4 vector } HwReg_layerStartY_1_val19_c_fifo_cap { I 4 vector } HwReg_layerStartY_1_val19_c_full_n { I 1 bit } HwReg_layerStartY_1_val19_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name HwReg_layerStartY_2_val20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartY_2_val20 \
    op interface \
    ports { HwReg_layerStartY_2_val20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name HwReg_layerStartY_2_val20_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartY_2_val20_c \
    op interface \
    ports { HwReg_layerStartY_2_val20_c_din { O 16 vector } HwReg_layerStartY_2_val20_c_num_data_valid { I 4 vector } HwReg_layerStartY_2_val20_c_fifo_cap { I 4 vector } HwReg_layerStartY_2_val20_c_full_n { I 1 bit } HwReg_layerStartY_2_val20_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name HwReg_layerScaleFactor_1_val25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerScaleFactor_1_val25 \
    op interface \
    ports { HwReg_layerScaleFactor_1_val25 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name HwReg_layerScaleFactor_1_val25_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerScaleFactor_1_val25_c \
    op interface \
    ports { HwReg_layerScaleFactor_1_val25_c_din { O 8 vector } HwReg_layerScaleFactor_1_val25_c_num_data_valid { I 4 vector } HwReg_layerScaleFactor_1_val25_c_fifo_cap { I 4 vector } HwReg_layerScaleFactor_1_val25_c_full_n { I 1 bit } HwReg_layerScaleFactor_1_val25_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name HwReg_layerScaleFactor_2_val26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerScaleFactor_2_val26 \
    op interface \
    ports { HwReg_layerScaleFactor_2_val26 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name HwReg_layerScaleFactor_2_val26_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerScaleFactor_2_val26_c \
    op interface \
    ports { HwReg_layerScaleFactor_2_val26_c_din { O 8 vector } HwReg_layerScaleFactor_2_val26_c_num_data_valid { I 4 vector } HwReg_layerScaleFactor_2_val26_c_fifo_cap { I 4 vector } HwReg_layerScaleFactor_2_val26_c_full_n { I 1 bit } HwReg_layerScaleFactor_2_val26_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


