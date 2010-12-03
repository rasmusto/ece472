onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /proj4_testbench/m1/IF_pc
add wave -noupdate -radix decimal /proj4_testbench/m1/IF_pc_next
add wave -noupdate /proj4_testbench/m1/ID_op
add wave -noupdate -radix decimal /proj4_testbench/m1/ID_rs
add wave -noupdate -radix decimal /proj4_testbench/m1/ID_rt
add wave -noupdate -radix decimal /proj4_testbench/m1/ID_rd
add wave -noupdate /proj4_testbench/m1/ID_RegWrite
add wave -noupdate /proj4_testbench/m1/EX_RegWrite
add wave -noupdate /proj4_testbench/m1/MEM_RegWrite
add wave -noupdate /proj4_testbench/m1/MEM_MemtoReg
add wave -noupdate /proj4_testbench/m1/MEM_MemRead
add wave -noupdate /proj4_testbench/m1/MEM_MemWrite
add wave -noupdate /proj4_testbench/m1/clk
add wave -noupdate -radix decimal {/proj4_testbench/m1/RFILE/file_array[4]}
add wave -noupdate -radix decimal {/proj4_testbench/m1/RFILE/file_array[3]}
add wave -noupdate -radix decimal {/proj4_testbench/m1/RFILE/file_array[2]}
add wave -noupdate -radix decimal {/proj4_testbench/m1/RFILE/file_array[1]}
add wave -noupdate -radix decimal /proj4_testbench/m1/EX_rd
add wave -noupdate -radix decimal /proj4_testbench/m1/EX_rs
add wave -noupdate -radix decimal /proj4_testbench/m1/EX_rt
add wave -noupdate /proj4_testbench/m1/ForwardA
add wave -noupdate /proj4_testbench/m1/ForwardB
add wave -noupdate -radix decimal /proj4_testbench/m1/EX_fw_a_out
add wave -noupdate -radix decimal /proj4_testbench/m1/EX_fw_b_out
add wave -noupdate /proj4_testbench/m1/Stall
add wave -noupdate -radix decimal /proj4_testbench/m1/MEM_memout
add wave -noupdate -radix decimal /proj4_testbench/m1/EX_ALUOut
add wave -noupdate -radix decimal /proj4_testbench/m1/MEM_ALUOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {575800 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {1575 ns}
