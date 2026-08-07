readnet spice MyCMOSInv.spice
readnet spice CMOS_Inverter_Try_lvs.spice

lvs "MyCMOSInv.spice MyCMOSInv" "CMOS_Inverter_Try_lvs.spice CMOS_Inverter_Try" /home/dhruvrathod/EDA/open_pdks/sky130/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs_report.out
