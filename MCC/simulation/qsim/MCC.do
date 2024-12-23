onerror {exit -code 1}
vlib work
vcom -work work MCC.vho
vcom -work work MCC.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.MCC_vhd_vec_tst
vcd file -direction MCC.msim.vcd
vcd add -internal MCC_vhd_vec_tst/*
vcd add -internal MCC_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
