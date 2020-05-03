// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed Feb  5 12:46:01 2020
// Host        : simon-ThinkPad-X250 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/simon/FPGADEVELOPER/FFT-Example/FFT-Example/FFT-Example.srcs/sources_1/bd/design_1/ip/design_1_edge_detect_0_0/design_1_edge_detect_0_0_sim_netlist.v
// Design      : design_1_edge_detect_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_edge_detect_0_0,edge_detect,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "edge_detect,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_edge_detect_0_0
   (clk,
    din,
    edge_detected);
  input clk;
  input [23:0]din;
  output edge_detected;

  wire clk;
  wire [23:0]din;
  wire edge_detected;

  design_1_edge_detect_0_0_edge_detect inst
       (.clk(clk),
        .din(din),
        .edge_detected(edge_detected));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module design_1_edge_detect_0_0_edge_detect
   (edge_detected,
    din,
    clk);
  output edge_detected;
  input [23:0]din;
  input clk;

  wire clk;
  wire [23:0]din;
  wire edge_detected;
  wire edge_detected_i_i_10_n_0;
  wire edge_detected_i_i_3_n_0;
  wire edge_detected_i_i_4_n_0;
  wire edge_detected_i_i_5_n_0;
  wire edge_detected_i_i_6_n_0;
  wire edge_detected_i_i_7_n_0;
  wire edge_detected_i_i_8_n_0;
  wire edge_detected_i_i_9_n_0;
  wire edge_detected_i_reg_i_1_n_1;
  wire edge_detected_i_reg_i_1_n_2;
  wire edge_detected_i_reg_i_1_n_3;
  wire edge_detected_i_reg_i_2_n_0;
  wire edge_detected_i_reg_i_2_n_1;
  wire edge_detected_i_reg_i_2_n_2;
  wire edge_detected_i_reg_i_2_n_3;
  wire p_0_in;
  wire [23:0]tmp;
  wire [3:0]NLW_edge_detected_i_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_edge_detected_i_reg_i_2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_10
       (.I0(tmp[0]),
        .I1(din[0]),
        .I2(din[2]),
        .I3(tmp[2]),
        .I4(din[1]),
        .I5(tmp[1]),
        .O(edge_detected_i_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_3
       (.I0(tmp[21]),
        .I1(din[21]),
        .I2(din[23]),
        .I3(tmp[23]),
        .I4(din[22]),
        .I5(tmp[22]),
        .O(edge_detected_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_4
       (.I0(tmp[18]),
        .I1(din[18]),
        .I2(din[20]),
        .I3(tmp[20]),
        .I4(din[19]),
        .I5(tmp[19]),
        .O(edge_detected_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_5
       (.I0(tmp[15]),
        .I1(din[15]),
        .I2(din[17]),
        .I3(tmp[17]),
        .I4(din[16]),
        .I5(tmp[16]),
        .O(edge_detected_i_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_6
       (.I0(tmp[12]),
        .I1(din[12]),
        .I2(din[14]),
        .I3(tmp[14]),
        .I4(din[13]),
        .I5(tmp[13]),
        .O(edge_detected_i_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_7
       (.I0(tmp[9]),
        .I1(din[9]),
        .I2(din[11]),
        .I3(tmp[11]),
        .I4(din[10]),
        .I5(tmp[10]),
        .O(edge_detected_i_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_8
       (.I0(tmp[6]),
        .I1(din[6]),
        .I2(din[8]),
        .I3(tmp[8]),
        .I4(din[7]),
        .I5(tmp[7]),
        .O(edge_detected_i_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    edge_detected_i_i_9
       (.I0(tmp[3]),
        .I1(din[3]),
        .I2(din[5]),
        .I3(tmp[5]),
        .I4(din[4]),
        .I5(tmp[4]),
        .O(edge_detected_i_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    edge_detected_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(edge_detected),
        .R(1'b0));
  CARRY4 edge_detected_i_reg_i_1
       (.CI(edge_detected_i_reg_i_2_n_0),
        .CO({p_0_in,edge_detected_i_reg_i_1_n_1,edge_detected_i_reg_i_1_n_2,edge_detected_i_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_edge_detected_i_reg_i_1_O_UNCONNECTED[3:0]),
        .S({edge_detected_i_i_3_n_0,edge_detected_i_i_4_n_0,edge_detected_i_i_5_n_0,edge_detected_i_i_6_n_0}));
  CARRY4 edge_detected_i_reg_i_2
       (.CI(1'b0),
        .CO({edge_detected_i_reg_i_2_n_0,edge_detected_i_reg_i_2_n_1,edge_detected_i_reg_i_2_n_2,edge_detected_i_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_edge_detected_i_reg_i_2_O_UNCONNECTED[3:0]),
        .S({edge_detected_i_i_7_n_0,edge_detected_i_i_8_n_0,edge_detected_i_i_9_n_0,edge_detected_i_i_10_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(din[0]),
        .Q(tmp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(din[10]),
        .Q(tmp[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(din[11]),
        .Q(tmp[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(din[12]),
        .Q(tmp[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(din[13]),
        .Q(tmp[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(din[14]),
        .Q(tmp[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(din[15]),
        .Q(tmp[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(din[16]),
        .Q(tmp[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(din[17]),
        .Q(tmp[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(din[18]),
        .Q(tmp[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(din[19]),
        .Q(tmp[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(din[1]),
        .Q(tmp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(din[20]),
        .Q(tmp[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(din[21]),
        .Q(tmp[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(din[22]),
        .Q(tmp[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(din[23]),
        .Q(tmp[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(din[2]),
        .Q(tmp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(din[3]),
        .Q(tmp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(din[4]),
        .Q(tmp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(din[5]),
        .Q(tmp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(din[6]),
        .Q(tmp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(din[7]),
        .Q(tmp[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(din[8]),
        .Q(tmp[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(din[9]),
        .Q(tmp[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
