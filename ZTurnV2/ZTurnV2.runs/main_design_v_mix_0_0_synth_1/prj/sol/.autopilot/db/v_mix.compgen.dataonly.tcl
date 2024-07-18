# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
width { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
height { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
video_format { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
background_Y_R { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
background_U_G { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
background_V_B { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
layerEnable { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
layerAlpha_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 512
	offset_end 519
}
layerStartX_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 520
	offset_end 527
}
layerStartY_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 528
	offset_end 535
}
layerWidth_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 536
	offset_end 543
}
layerStride_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 544
	offset_end 551
}
layerHeight_1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 552
	offset_end 559
}
layerScaleFactor_1 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 560
	offset_end 567
}
layerAlpha_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 768
	offset_end 775
}
layerStartX_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 776
	offset_end 783
}
layerStartY_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 784
	offset_end 791
}
layerWidth_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 792
	offset_end 799
}
layerStride_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 800
	offset_end 807
}
layerHeight_2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 808
	offset_end 815
}
layerScaleFactor_2 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 816
	offset_end 823
}
reserve { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 4080
	offset_end 4087
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


