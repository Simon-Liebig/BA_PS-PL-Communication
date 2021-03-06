# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/simon/IP_repro/fir_memo_top_v1_1/tmp_edit_project.cache/wt [current_project]
set_property parent.project_path /home/simon/IP_repro/fir_memo_top_v1_1/tmp_edit_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:microzed_7020:part0:1.1 [current_project]
set_property ip_repo_paths {
  /home/simon/Dokumente/EIB_S8-BA/Kohlert/demo_ila_nov18.xpr/demo_ila_nov18
  /home/simon/IP_repro
} [current_project]
set_property ip_output_repo /home/simon/IP_repro/fir_memo_top_v1_1/tmp_edit_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /home/simon/IP_repro/fir_memo_top_v1_1/src/adda_firtop.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/dp_ram_byte0.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/dp_ram_byte1.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/dp_ram_byte2.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/dp_ram_byte3.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/fir_serial_coeffs.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/fsm_pmodda3.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/gen_reg24.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/gen_reg32.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/mem_top.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/reg_par.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/spi_ad5541.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/sreg_fir.vhd
  /home/simon/IP_repro/fir_memo_top_v1_1/src/fir_memo_top.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{/home/simon/IP_repro/fir_memo_top_v1_1/src/Z7010 or Z7020 MicroZed with MBCC-IO-PCB-D_v2.xdc}}
set_property used_in_implementation false [get_files {{/home/simon/IP_repro/fir_memo_top_v1_1/src/Z7010 or Z7020 MicroZed with MBCC-IO-PCB-D_v2.xdc}}]


synth_design -top fir_memo_top -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef fir_memo_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file fir_memo_top_utilization_synth.rpt -pb fir_memo_top_utilization_synth.pb"
