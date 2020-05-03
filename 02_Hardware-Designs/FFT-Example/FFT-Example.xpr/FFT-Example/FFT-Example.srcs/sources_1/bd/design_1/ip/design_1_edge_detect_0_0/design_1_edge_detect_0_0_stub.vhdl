-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed Feb  5 12:46:01 2020
-- Host        : simon-ThinkPad-X250 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/simon/FPGADEVELOPER/FFT-Example/FFT-Example/FFT-Example.srcs/sources_1/bd/design_1/ip/design_1_edge_detect_0_0/design_1_edge_detect_0_0_stub.vhdl
-- Design      : design_1_edge_detect_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_edge_detect_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    edge_detected : out STD_LOGIC
  );

end design_1_edge_detect_0_0;

architecture stub of design_1_edge_detect_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,din[23:0],edge_detected";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "edge_detect,Vivado 2017.4";
begin
end;
