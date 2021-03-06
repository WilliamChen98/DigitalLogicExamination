onerror {quit -f}
vlib work
vlog -work work Eleventhproject.vo
vlog -work work Eleventhproject.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.frequency_divider_vlg_vec_tst
vcd file -direction Eleventhproject.msim.vcd
vcd add -internal frequency_divider_vlg_vec_tst/*
vcd add -internal frequency_divider_vlg_vec_tst/i1/*
add wave /*
run -all
