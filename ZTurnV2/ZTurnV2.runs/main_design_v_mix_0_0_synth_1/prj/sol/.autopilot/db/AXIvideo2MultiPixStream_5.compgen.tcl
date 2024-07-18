# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 125 \
    name s_axis_video1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video1} \
    metadata {  } \
    op interface \
    ports { s_axis_video1_TDATA { I 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 126 \
    name s_axis_video1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video1} \
    metadata {  } \
    op interface \
    ports { s_axis_video1_TKEEP { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 127 \
    name s_axis_video1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video1} \
    metadata {  } \
    op interface \
    ports { s_axis_video1_TSTRB { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 128 \
    name s_axis_video1_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video1} \
    metadata {  } \
    op interface \
    ports { s_axis_video1_TUSER { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video1_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 129 \
    name s_axis_video1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video1} \
    metadata {  } \
    op interface \
    ports { s_axis_video1_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 130 \
    name s_axis_video1_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video1} \
    metadata {  } \
    op interface \
    ports { s_axis_video1_TID { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video1_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 131 \
    name s_axis_video1_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video1} \
    metadata {  } \
    op interface \
    ports { s_axis_video1_TVALID { I 1 bit } s_axis_video1_TREADY { O 1 bit } s_axis_video1_TDEST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video1_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name srcLayer1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer1 \
    op interface \
    ports { srcLayer1_din { O 24 vector } srcLayer1_num_data_valid { I 3 vector } srcLayer1_fifo_cap { I 3 vector } srcLayer1_full_n { I 1 bit } srcLayer1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name HwReg_layerHeight_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_1_val \
    op interface \
    ports { HwReg_layerHeight_1_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name HwReg_layerWidth_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_1_val \
    op interface \
    ports { HwReg_layerWidth_1_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name HwReg_layerEnableFlag_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_1_val \
    op interface \
    ports { HwReg_layerEnableFlag_1_val { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name HwReg_layerEnableFlag_1_val_c17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_1_val_c17 \
    op interface \
    ports { HwReg_layerEnableFlag_1_val_c17_din { O 1 vector } HwReg_layerEnableFlag_1_val_c17_num_data_valid { I 3 vector } HwReg_layerEnableFlag_1_val_c17_fifo_cap { I 3 vector } HwReg_layerEnableFlag_1_val_c17_full_n { I 1 bit } HwReg_layerEnableFlag_1_val_c17_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name HwReg_layerWidth_1_val_c24 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_1_val_c24 \
    op interface \
    ports { HwReg_layerWidth_1_val_c24_din { O 16 vector } HwReg_layerWidth_1_val_c24_num_data_valid { I 3 vector } HwReg_layerWidth_1_val_c24_fifo_cap { I 3 vector } HwReg_layerWidth_1_val_c24_full_n { I 1 bit } HwReg_layerWidth_1_val_c24_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name HwReg_layerHeight_1_val_c32 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_1_val_c32 \
    op interface \
    ports { HwReg_layerHeight_1_val_c32_din { O 16 vector } HwReg_layerHeight_1_val_c32_num_data_valid { I 3 vector } HwReg_layerHeight_1_val_c32_fifo_cap { I 3 vector } HwReg_layerHeight_1_val_c32_full_n { I 1 bit } HwReg_layerHeight_1_val_c32_write { O 1 bit } } \
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


