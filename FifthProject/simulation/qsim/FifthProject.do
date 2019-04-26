onerror {quit -f}
vlib work
vlog -work work FifthProject.vo
vlog -work work FifthProject.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FifthProject_vlg_vec_tst
vcd file -direction FifthProject.msim.vcd
vcd add -internal FifthProject_vlg_vec_tst/*
vcd add -internal FifthProject_vlg_vec_tst/i1/*
add wave /*
run -all
