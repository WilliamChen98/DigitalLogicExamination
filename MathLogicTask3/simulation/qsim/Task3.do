onerror {quit -f}
vlib work
vlog -work work Task3.vo
vlog -work work Task3.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Counter_2421_16071005_vlg_vec_tst
vcd file -direction Task3.msim.vcd
vcd add -internal Counter_2421_16071005_vlg_vec_tst/*
vcd add -internal Counter_2421_16071005_vlg_vec_tst/i1/*
add wave /*
run -all
