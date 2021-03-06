// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Jan 13 19:01:46 2020
// Host        : simon-ThinkPad-X250 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/simon/FPGADEVELOPER/HWD-CDMA-BRAM/HWD-CDMA-BRAM.srcs/sources_1/bd/design_1/ip/design_1_xlslice_0_0/design_1_xlslice_0_0_stub.v
// Design      : design_1_xlslice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2017.4" *)
module design_1_xlslice_0_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[12:0],Dout[10:0]" */;
  input [12:0]Din;
  output [10:0]Dout;
endmodule
