onerror {quit -f}
vlib work
vlog -work work NinthProject-00.vo
vlog -work work NinthProject-00.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.NinthProject_00_vlg_vec_tst
vcd file -direction NinthProject-00.msim.vcd
vcd add -internal NinthProject_00_vlg_vec_tst/*
vcd add -internal NinthProject_00_vlg_vec_tst/i1/*
add wave /*
run -all
