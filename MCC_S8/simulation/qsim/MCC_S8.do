onerror {exit -code 1}
vlib work
vcom -work work MCC_S8.vho
vcom -work work MCC_S8.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.MCC_S8_vhd_vec_tst
vcd file -direction MCC_S8.msim.vcd
vcd add -internal MCC_S8_vhd_vec_tst/*
vcd add -internal MCC_S8_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
