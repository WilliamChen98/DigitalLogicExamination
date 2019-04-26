vlog -work work E:/testofquartus/FifthProject/simulation/modelsim/Fifth.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Fifth_vlg_vec_tst
onerror {resume}
add wave {Fifth_vlg_vec_tst/i1/clk}
add wave {Fifth_vlg_vec_tst/i1/out}
add wave {Fifth_vlg_vec_tst/i1/out[3]}
add wave {Fifth_vlg_vec_tst/i1/out[2]}
add wave {Fifth_vlg_vec_tst/i1/out[1]}
add wave {Fifth_vlg_vec_tst/i1/out[0]}
add wave {Fifth_vlg_vec_tst/i1/reset}
run -all
