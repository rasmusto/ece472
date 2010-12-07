#!/bin/csh
rm -rf work

echo "########## Running dc_shell ###########"
design_vision-xg -f bin/dc_syn2


####################################################
## Use a better v2s to create netlist from verliog ##
####################################################
#echo "### Running v2lvs ###"
#/usr/local/apps/synopsys/hsim/current/hsimplus/platform/linux/bin/v2s vlogout/MADD.gate.v -o spice/MADD.gate.v.sp -s cms9flphvt_m.cdl -bn 0 -case 0 -const0 VSS -const1 VDD -supply
