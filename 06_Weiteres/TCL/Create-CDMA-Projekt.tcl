#projekt name
set design_name microzed_cdma
# Set the reference directory for source file relative paths / here the Project will be created
set origin_dir "/home/simon/FPGADEVELOPMENT"
#Ort für weitere Skripte und IPrepro / Path to /TCL/Ressourcen
set skript_dir "/PATH/to/TCL/Ressourcen"

#create
create_project $design_name $origin_dir/$design_name -part xc7z020clg400-1
set_property board_part em.avnet.com:microzed_7020:part0:1.1 [current_project]
set_property target_language VHDL [current_project]
set_property simulator_language VHDL [current_project]
import_files -fileset constrs_1 -force -norecurse $skript_dir/MBCC-IO-PCB-D_v2.xdc
create_bd_design "design_1"
update_compile_order -fileset sources_1
#Add PS
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
endgroup
#Add DDR and FiXED_IO
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
endgroup
#Alle einstellungen für PS
source $skript_dir/MicroZed_PS_properties_for_cdma.tcl
#ADD CDMA und konfiguriere
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 axi_cdma_0
endgroup
set_property -dict [list CONFIG.C_M_AXI_DATA_WIDTH {64} CONFIG.C_M_AXI_MAX_BURST_LEN {256} CONFIG.C_INCLUDE_SG {0}] [get_bd_cells axi_cdma_0]
#Add BRAM Control und Konfiguriere
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0
endgroup
set_property -dict [list CONFIG.SINGLE_PORT_BRAM {1}] [get_bd_cells axi_bram_ctrl_0]
#Add Concat und Slice und konfig
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
endgroup
set_property -dict [list CONFIG.NUM_PORTS {1}] [get_bd_cells xlconcat_0]
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0
endgroup
set_property -dict [list CONFIG.DIN_FROM {10} CONFIG.DIN_WIDTH {13} CONFIG.DIN_TO {0} CONFIG.DOUT_WIDTH {11}] [get_bd_cells xlslice_0]
#Add fir memo top
set_property  ip_repo_paths  $skript_dir/IP_repro [current_project]
update_ip_catalog
create_bd_cell -type ip -vlnv user.org:user:fir_memo_top:1.0 fir_memo_top_0
# verbindungen fir memo top
connect_bd_net [get_bd_pins axi_bram_ctrl_0/bram_clk_a] [get_bd_pins fir_memo_top_0/clk_in]
connect_bd_net [get_bd_pins axi_bram_ctrl_0/bram_en_a] [get_bd_pins fir_memo_top_0/ena]
connect_bd_net [get_bd_pins fir_memo_top_0/wea] [get_bd_pins axi_bram_ctrl_0/bram_we_a]
connect_bd_net [get_bd_pins axi_bram_ctrl_0/bram_addr_a] [get_bd_pins xlslice_0/Din]
connect_bd_net [get_bd_pins fir_memo_top_0/douta] [get_bd_pins axi_bram_ctrl_0/bram_rddata_a]
connect_bd_net [get_bd_pins fir_memo_top_0/dina] [get_bd_pins axi_bram_ctrl_0/bram_wrdata_a]
# create ports for DAC
startgroup
create_bd_port -dir O JA6_7_N
connect_bd_net [get_bd_pins /fir_memo_top_0/JA6_7_N] [get_bd_ports JA6_7_N]
endgroup
startgroup
create_bd_port -dir O JA6_7_P
connect_bd_net [get_bd_pins /fir_memo_top_0/JA6_7_P] [get_bd_ports JA6_7_P]
endgroup
startgroup
create_bd_port -dir O JA4_5_N
connect_bd_net [get_bd_pins /fir_memo_top_0/JA4_5_N] [get_bd_ports JA4_5_N]
endgroup
startgroup
create_bd_port -dir O JA4_5_P
connect_bd_net [get_bd_pins /fir_memo_top_0/JA4_5_P] [get_bd_ports JA4_5_P]
endgroup
# connect interrupt
startgroup
connect_bd_net [get_bd_pins axi_cdma_0/cdma_introut] [get_bd_pins xlconcat_0/In0]
endgroup
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins processing_system7_0/IRQ_F2P]
#autoconnect für GP to CDMA LITE
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" intc_ip "New AXI Interconnect" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_cdma_0/S_AXI_LITE]
# autocennect für HP und Bram to CDMA
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/axi_cdma_0/M_AXI" intc_ip "Auto" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/axi_cdma_0/M_AXI" intc_ip "Auto" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
endgroup
#design wrapper
make_wrapper -files [get_files $origin_dir/$design_name/$design_name.srcs/sources_1/bd/design_1/design_1.bd] -top
add_files -norecurse $origin_dir/$design_name/$design_name.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
#validate design
validate_bd_design
#generate bitstream
save_bd_design
#launch_runs impl_1 -to_step write_bitstream -jobs 2
