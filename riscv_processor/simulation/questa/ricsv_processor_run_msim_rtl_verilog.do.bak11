transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/ricsv_processor.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/register_file.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/alu_control.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/parameter.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/instruction_memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/data_memory.v}

vlog -vlog01compat -work work +incdir+C:/Users/never/OneDrive/Desktop/riscv_processor {C:/Users/never/OneDrive/Desktop/riscv_processor/test_bench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test_bench

add wave *
view structure
view signals
run -all
