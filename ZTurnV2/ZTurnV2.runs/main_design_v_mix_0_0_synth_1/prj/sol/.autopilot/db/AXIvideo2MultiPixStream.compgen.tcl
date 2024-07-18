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
    id 245 \
    name s_axis_video2_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video2} \
    metadata {  } \
    op interface \
    ports { s_axis_video2_TDATA { I 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video2_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 246 \
    name s_axis_video2_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video2} \
    metadata {  } \
    op interface \
    ports { s_axis_video2_TKEEP { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video2_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 247 \
    name s_axis_video2_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video2} \
    metadata {  } \
    op interface \
    ports { s_axis_video2_TSTRB { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video2_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 248 \
    name s_axis_video2_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video2} \
    metadata {  } \
    op interface \
    ports { s_axis_video2_TUSER { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video2_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 249 \
    name s_axis_video2_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video2} \
    metadata {  } \
    op interface \
    ports { s_axis_video2_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video2_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 250 \
    name s_axis_video2_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video2} \
    metadata {  } \
    op interface \
    ports { s_axis_video2_TID { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video2_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 251 \
    name s_axis_video2_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_video2} \
    metadata {  } \
    op interface \
    ports { s_axis_video2_TVALID { I 1 bit } s_axis_video2_TREADY { O 1 bit } s_axis_video2_TDEST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_video2_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name srcLayer2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer2 \
    op interface \
    ports { srcLayer2_din { O 24 vector } srcLayer2_num_data_valid { I 3 vector } srcLayer2_fifo_cap { I 3 vector } srcLayer2_full_n { I 1 bit } srcLayer2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name HwReg_layerHeight_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_2_val \
    op interface \
    ports { HwReg_layerHeight_2_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name HwReg_layerWidth_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_2_val \
    op interface \
    ports { HwReg_layerWidth_2_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name HwReg_layerEnableFlag_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_2_val \
    op interface \
    ports { HwReg_layerEnableFlag_2_val { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name HwReg_layerEnableFlag_2_val_c20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_2_val_c20 \
    op interface \
    ports { HwReg_layerEnableFlag_2_val_c20_din { O 1 vector } HwReg_layerEnableFlag_2_val_c20_num_data_valid { I 3 vector } HwReg_layerEnableFlag_2_val_c20_fifo_cap { I 3 vector } HwReg_layerEnableFlag_2_val_c20_full_n { I 1 bit } HwReg_layerEnableFlag_2_val_c20_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name HwReg_layerWidth_2_val_c28 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_2_val_c28 \
    op interface \
    ports { HwReg_layerWidth_2_val_c28_din { O 16 vector } HwReg_layerWidth_2_val_c28_num_data_valid { I 3 vector } HwReg_layerWidth_2_val_c28_fifo_cap { I 3 vector } HwReg_layerWidth_2_val_c28_full_n { I 1 bit } HwReg_layerWidth_2_val_c28_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name HwReg_layerHeight_2_val_c36 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_2_val_c36 \
    op interface \
    ports { HwReg_layerHeight_2_val_c36_din { O 16 vector } HwReg_layerHeight_2_val_c36_num_data_valid { I 3 vector } HwReg_layerHeight_2_val_c36_fifo_cap { I 3 vector } HwReg_layerHeight_2_val_c36_full_n { I 1 bit } HwReg_layerHeight_2_val_c36_write { O 1 bit } } \
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


