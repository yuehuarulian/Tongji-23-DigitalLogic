##############################################################################
## Filename:          D:\Nexys4_lab\lab/drivers/audio_ip_v1_00_a/data/audio_ip_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Sun Dec 01 22:02:13 2013 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "audio_ip" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
