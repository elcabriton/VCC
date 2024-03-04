onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 40 {clock reset}
add wave -noupdate /main_tb/inst_top/clock
add wave -noupdate /main_tb/inst_top/reset
add wave -noupdate -divider -height 40 ENTRADAS
add wave -noupdate -radix unsigned /main_tb/inst_top/escolha
add wave -noupdate -radix unsigned /main_tb/inst_top/entrada
add wave -noupdate -radix unsigned /main_tb/inst_top/sk
add wave -noupdate -divider -height 40 ENTRADAS
add wave -noupdate -radix unsigned /main_tb/inst_top/reg0_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg1_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg2_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg3_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg4_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg5_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg6_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg7_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg8_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg9_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg10_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg11_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg12_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg13_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg14_neibor
add wave -noupdate -radix unsigned /main_tb/inst_top/reg15_neibor
add wave -noupdate -divider -height 40 M0
add wave -noupdate -radix unsigned /main_tb/inst_top/M0
add wave -noupdate -radix unsigned /main_tb/inst_top/M1
add wave -noupdate -radix unsigned /main_tb/inst_top/M2
add wave -noupdate -radix unsigned /main_tb/inst_top/M3
add wave -noupdate -radix unsigned /main_tb/inst_top/M4
add wave -noupdate -radix unsigned /main_tb/inst_top/M5
add wave -noupdate -radix unsigned /main_tb/inst_top/M6
add wave -noupdate -radix unsigned /main_tb/inst_top/M7
add wave -noupdate -radix unsigned /main_tb/inst_top/M8
add wave -noupdate -radix unsigned /main_tb/inst_top/M9
add wave -noupdate -radix unsigned /main_tb/inst_top/M10
add wave -noupdate -radix unsigned /main_tb/inst_top/M11
add wave -noupdate -radix unsigned /main_tb/inst_top/M12
add wave -noupdate -radix unsigned /main_tb/inst_top/M13
add wave -noupdate -radix unsigned /main_tb/inst_top/M14
add wave -noupdate -radix unsigned /main_tb/inst_top/M15
add wave -noupdate -divider -height 40 POS0
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_0
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_1
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_2
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_3
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_4
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_5
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_6
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_7
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_8
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_9
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_10
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_11
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_12
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_13
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_14
add wave -noupdate -radix unsigned /main_tb/inst_top/pos0_15
add wave -noupdate -divider -height 40 DECK
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_0
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_1
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_2
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_3
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_4
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_5
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_6
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_7
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_8
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_9
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_10
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_11
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_12
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_13
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_14
add wave -noupdate -radix unsigned /main_tb/inst_top/deck_abs_level_15
add wave -noupdate /main_tb/inst_top/regpos0_menor
add wave -noupdate /main_tb/inst_top/regpos1_maior
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {98164 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 240
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {315 ns}
