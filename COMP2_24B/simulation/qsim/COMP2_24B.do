onerror {exit -code 1}
vlib work
vcom -work work COMP2_24B.vho
vcom -work work COMP2_24B.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.COMP2_24B_vhd_vec_tst
vcd file -direction COMP2_24B.msim.vcd
vcd add -internal COMP2_24B_vhd_vec_tst/*
vcd add -internal COMP2_24B_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
