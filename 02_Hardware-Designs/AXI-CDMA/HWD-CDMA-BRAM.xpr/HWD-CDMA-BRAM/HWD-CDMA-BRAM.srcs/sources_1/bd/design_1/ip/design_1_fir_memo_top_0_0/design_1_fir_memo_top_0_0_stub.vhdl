-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Jan 13 18:54:56 2020
-- Host        : simon-ThinkPad-X250 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/simon/FPGADEVELOPER/HWD-CDMA-BRAM/HWD-CDMA-BRAM.srcs/sources_1/bd/design_1/ip/design_1_fir_memo_top_0_0/design_1_fir_memo_top_0_0_stub.vhdl
-- Design      : design_1_fir_memo_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fir_memo_top_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    JA6_7_N : out STD_LOGIC;
    JA6_7_P : out STD_LOGIC;
    JA4_5_N : out STD_LOGIC;
    JA4_5_P : out STD_LOGIC;
    conv_start_adc : out STD_LOGIC;
    hi_out : out STD_LOGIC;
    adc_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_dat_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_fir_memo_top_0_0;

architecture stub of design_1_fir_memo_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,ena,wea[3:0],addra[10:0],dina[31:0],douta[31:0],JA6_7_N,JA6_7_P,JA4_5_N,JA4_5_P,conv_start_adc,hi_out,adc_data[15:0],dac_dat_out[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fir_memo_top,Vivado 2017.4";
begin
end;
