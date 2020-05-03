-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:fir_memo_top:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_fir_memo_top_0_0 IS
  PORT (
    clk_in : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    JA6_7_N : OUT STD_LOGIC;
    JA6_7_P : OUT STD_LOGIC;
    JA4_5_N : OUT STD_LOGIC;
    JA4_5_P : OUT STD_LOGIC;
    conv_start_adc : OUT STD_LOGIC;
    hi_out : OUT STD_LOGIC;
    adc_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    dac_dat_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END design_1_fir_memo_top_0_0;

ARCHITECTURE design_1_fir_memo_top_0_0_arch OF design_1_fir_memo_top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_fir_memo_top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT fir_memo_top IS
    PORT (
      clk_in : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      JA6_7_N : OUT STD_LOGIC;
      JA6_7_P : OUT STD_LOGIC;
      JA4_5_N : OUT STD_LOGIC;
      JA4_5_P : OUT STD_LOGIC;
      conv_start_adc : OUT STD_LOGIC;
      hi_out : OUT STD_LOGIC;
      adc_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dac_dat_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT fir_memo_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_fir_memo_top_0_0_arch: ARCHITECTURE IS "fir_memo_top,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_fir_memo_top_0_0_arch : ARCHITECTURE IS "design_1_fir_memo_top_0_0,fir_memo_top,{}";
BEGIN
  U0 : fir_memo_top
    PORT MAP (
      clk_in => clk_in,
      ena => ena,
      wea => wea,
      addra => addra,
      dina => dina,
      douta => douta,
      JA6_7_N => JA6_7_N,
      JA6_7_P => JA6_7_P,
      JA4_5_N => JA4_5_N,
      JA4_5_P => JA4_5_P,
      conv_start_adc => conv_start_adc,
      hi_out => hi_out,
      adc_data => adc_data,
      dac_dat_out => dac_dat_out
    );
END design_1_fir_memo_top_0_0_arch;
