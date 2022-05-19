onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /tbw2/clk
add wave -noupdate -format Literal -radix hexadecimal /tbw2/inw0
add wave -noupdate -format Literal -radix hexadecimal /tbw2/inw1
add wave -noupdate -format Literal -radix hexadecimal /tbw2/outw0
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/pc
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/instr
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/u_regs/rdreg1
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/rddata1
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/u_regs/rdreg2
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/rddata2
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/u_alu/faddr
add wave -noupdate -format Logic -radix hexadecimal /tbw2/uut/alusrc
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/aluop
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/alu_out
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/memout
add wave -noupdate -format Logic -radix hexadecimal /tbw2/uut/memwr
add wave -noupdate -format Logic -radix hexadecimal /tbw2/uut/regwr
add wave -noupdate -format Logic -radix hexadecimal /tbw2/uut/mem2reg
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/wrdata
add wave -noupdate -format Logic -radix hexadecimal /tbw2/uut/regdest
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/u_muxregd/i1
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/wrreg
add wave -noupdate -format Literal -radix hexadecimal /tbw2/uut/u_regs/s32regs32
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 165
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
WaveRestoreZoom {0 ps} {952399 ps}
