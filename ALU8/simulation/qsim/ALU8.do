onerror {exit -code 1}
vlib work
vcom -work work ALU8.vho
vcom -work work ALU8.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ALU8_vhd_vec_tst
vcd file -direction ALU8.msim.vcd
vcd add -internal ALU8_vhd_vec_tst/*
vcd add -internal ALU8_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
