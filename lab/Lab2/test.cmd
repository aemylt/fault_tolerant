read_netlist /home/staff/jimson/Lab2/verilog_simulation_models/*.v
read_netlist  full_add_syn.v
run_build_model fulladder

write_drc_file ./test1.spf -replace
run_drc ./test1.spf 
set_faults -model stuck
add_faults -all
set_atpg -abort 300 -merge high -coverage 100 -DEcision NORandom  -norandom_fill
run atpg
report patterns -all 
write patterns ./c171.stil -replace -format stil


