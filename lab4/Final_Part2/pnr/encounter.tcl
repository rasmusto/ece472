# Load LEF Files
loadLefFile /nfs/spectre/u8/vlsi/UMC180/umc18_6lm.lef

# Setup Design
loadConfig ./encounter.conf
commitConfig

# Add power rings and power stripes
synthesizePowerPlan -totalPower 10.0

# Place the standard cells
placeDesign

# Do the power routing
sroute

# Route the Design
nanoRoute

show
