transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {EDA2.vo}

vlog -vlog01compat -work work +incdir+F:/Quartus\ II/EDA2_FINAL {F:/Quartus II/EDA2_FINAL/EDA2_tb.v}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  EDA2_tb

add wave *
view structure
view signals
run -all
