## File       : spp.mips_core.appR.cmd
## Created at : Tue Dec 07 14:17:58 PST 2010
## Created by : synthesizePowerPlan
   
## Design Name : mips_core
cutRow
clearCutRow
deselectAll
deselectAll
deselectAll
addStripe -nets VDD -direction vertical -layer METAL4 -width 1.56 -spacing 0.6 -set_to_set_distance 60.0 -xleft_offset 36.89 -xright_offset 35.33 -extend_to design_boundary -create_pins 1 -merge_stripes_value auto -break_stripes_at_block_rings 1 -snap_wire_center_to_grid None
deselectAll
addStripe -nets VDD -direction horizontal -layer METAL5 -width 1.56 -spacing 0.6 -set_to_set_distance 336.0 -ybottom_offset 276.42 -ytop_offset 274.86 -extend_to design_boundary -create_pins 1 -merge_stripes_value auto -snap_wire_center_to_grid None
deselectAll
addStripe -nets VDD -direction vertical -layer METAL6 -width 1.56 -spacing 0.6 -set_to_set_distance 210.0 -xleft_offset 171.89 -xright_offset 170.33 -extend_to design_boundary -create_pins 1 -merge_stripes_value auto -skip_via_on_pin {Block Standardcell} -snap_wire_center_to_grid None
deselectAll
deleteCutRow
## Closed at : Tue Dec 07 14:17:58 PST 2010
## End of File
