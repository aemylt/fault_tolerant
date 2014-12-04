read netlist /home/staff/jimson/Lab2/verilog_simulation_models/*.v
read netlist  s27_scan_syn.v
run build_model s27

write drc_file ./test1.spf -replace
run drc ./test1.spf 
set faults -model stuck
add faults -all
set atpg -abort 300 -merge high -coverage 100 -DEcision NORandom  -norandom_fill
run atpg
report patterns -all 
write patterns ./c171.stil -replace -format stil



# capture all faults, 9 capture cycles
set_atpg -capture_cycles 9 -full_seq_atpg
remove_faults -all
add_faults -all
# run atpg in full sequential mode
run_atpg full_sequential_only
# write out patterns (overwrite old files)
write_patterns ./src/${top_module}_tb_patterns.v -replace -internal -format verilog_single_file -
parallel 0
#################################################
#### Output reports
#################################################
report_patterns -all >> ./reports/${top_module}.tmax.patterns
report_violations -all >> ./reports/${top_module}.tmax.violations
report_faults -summary -collapsed >> ./reports/${top_module}.tmax.coverage



