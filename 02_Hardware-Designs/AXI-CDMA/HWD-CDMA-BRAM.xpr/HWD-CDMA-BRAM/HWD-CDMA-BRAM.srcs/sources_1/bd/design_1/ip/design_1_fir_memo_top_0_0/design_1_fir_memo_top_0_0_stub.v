// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Jan 13 18:54:56 2020
// Host        : simon-ThinkPad-X250 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/simon/FPGADEVELOPER/HWD-CDMA-BRAM/HWD-CDMA-BRAM.srcs/sources_1/bd/design_1/ip/design_1_fir_memo_top_0_0/design_1_fir_memo_top_0_0_stub.v
// Design      : design_1_fir_memo_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fir_memo_top,Vivado 2017.4" *)
module design_1_fir_memo_top_0_0(clk_in, ena, wea, addra, dina, douta, JA6_7_N, JA6_7_P, 
  JA4_5_N, JA4_5_P, conv_start_adc, hi_out, adc_data, dac_dat_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,ena,wea[3:0],addra[10:0],dina[31:0],douta[31:0],JA6_7_N,JA6_7_P,JA4_5_N,JA4_5_P,conv_start_adc,hi_out,adc_data[15:0],dac_dat_out[15:0]" */;
  input clk_in;
  input ena;
  input [3:0]wea;
  input [10:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  output JA6_7_N;
  output JA6_7_P;
  output JA4_5_N;
  output JA4_5_P;
  output conv_start_adc;
  output hi_out;
  input [15:0]adc_data;
  output [15:0]dac_dat_out;
endmodule
