## ----------------------------------------------------------------------------
##     _____
##    /     \
##   /____   \____
##  / \===\   \==/
## /___\===\___\/  AVNET ELECTRONICS MARKETING
##      \======/         www.em.avnet.com/drc
##       \====/    
## ----------------------------------------------------------------------------
## 
##  Created With Avnet Constraints Generator V0.8.0 
##     Date: Wednesday, September 03, 2014 
##     Time: 3:46:25 PM 
## 
##  This design is the property of Avnet.  Publication of this
##  design is not authorized without written consent from Avnet.
##  
##  Please direct any questions to:
##     MicroZed.org Community Forums
##     http://www.microzed.org
## 
##  Disclaimer:
##     Avnet, Inc. makes no warranty for the use of this code or design.
##     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
##     any errors, which may appear in this code, nor does it make a commitment
##     to update the information contained herein. Avnet, Inc specifically
##     disclaims any implied warranties of fitness for a particular purpose.
##                      Copyright(c) 2014 Avnet, Inc.
##                              All rights reserved.
## 
## ----------------------------------------------------------------------------
## 
##  Notes: 
##
##  03 September 2014
##     IO standards based upon Bank 34 and Bank 35 (and Bank 13) Vcco supply 
##     options of 1.8V, 2.5V, or 3.3V are possible based upon the Vadj 
##     jumper (J18) settings.  By default, Vadj is expected to be set to 
##     1.8V but if a different voltage is used for a particular design, then 
##     the corresponding IO standard within this UCF should also be updated 
##     to reflect the actual Vadj jumper selection.
##
##     Net names are not allowed to contain hyphen characters '-' since this
##     is not a legal VHDL87 or Verilog character within an identifier.  
##     HDL net names are adjusted to contain no hyphen characters '-' but 
##     rather use underscore '_' characters.  Comment net name with the hyphen 
##     characters will remain in place since these are intended to match the 
##     schematic net names in order to better enable schematic search.
##
##     The string provided in the comment field provides the Zynq device pin 
##     mapping through the expansion connector to the carrier card net name
##     according to the following format:
##
##     "<Zynq Pin>.<SOM Net>.<Connector Ref>.<Connector Pin>.<Carrier Net>"
## 
## ----------------------------------------------------------------------------


## ----------------------------------------------------------------------------
## User LEDs - Bank 34
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN U14 [get_ports {LED0}];  # "U14.JX1_LVDS_10_P.JX1.41.LED0"
#set_property PACKAGE_PIN U15 [get_ports {LED1}];  # "U15.JX1_LVDS_10_N.JX1.43.LED1"
#set_property PACKAGE_PIN U18 [get_ports {LED2}];  # "U18.JX1_LVDS_11_P.JX1.42.LED2"
#set_property PACKAGE_PIN U19 [get_ports {LED3}];  # "U19.JX1_LVDS_11_N.JX1.44.LED3"
#set_property PACKAGE_PIN R19 [get_ports {LED4}];  # "R19.JX1_SE_0.JX1.9.LED4"
#set_property PACKAGE_PIN V13 [get_ports {LED5}];  # "V13.JX1_LVDS_2_N.JX1.19.LED5"
#set_property PACKAGE_PIN P14 [get_ports {LED6}];  # "P14.JX1_LVDS_5_P.JX1.24.LED6"
#set_property PACKAGE_PIN R14 [get_ports {LED7}];  # "R14.JX1_LVDS_5_N.JX1.26.LED7"

 
## ----------------------------------------------------------------------------
## One wire Security EEPROM - Bank 34
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN T19 [get_ports {1W_EEPROM}];  # "T19.JX1_SE_1.JX1.10.1W-EEPROM"


## ----------------------------------------------------------------------------
## JA Pmod - Bank 34
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN T11 [get_ports {JA0_1_P}];  # "T11.JX1_LVDS_0_P.JX1.11.JA0-1_P" - JA - Pin 1
#set_property PACKAGE_PIN T10 [get_ports {JA0_1_N}];  # "T10.JX1_LVDS_0_N.JX1.13.JA0-1_N" - JA - Pin 2
#set_property PACKAGE_PIN T12 [get_ports {JA2_3_P}];  # "T12.JX1_LVDS_1_P.JX1.12.JA2-3_P" - JA - Pin 3
#set_property PACKAGE_PIN U12 [get_ports {JA2_3_N}];  # "U12.JX1_LVDS_1_N.JX1.14.JA2-3_N" - JA - Pin 4
set_property PACKAGE_PIN V12 [get_ports {JA4_5_P}];  # "V12.JX1_LVDS_3_P.JX1.18.JA4-5_P" - JA - Pin 7
set_property PACKAGE_PIN W13 [get_ports {JA4_5_N}];  # "W13.JX1_LVDS_3_N.JX1.20.JA4-5_N" - JA - Pin 8
set_property PACKAGE_PIN T14 [get_ports {JA6_7_P}];  # "T14.JX1_LVDS_4_P.JX1.23.JA6-7_P" - JA - Pin 9
set_property PACKAGE_PIN T15 [get_ports {JA6_7_N}];  # "T15.JX1_LVDS_4_N.JX1.25.JA6-7_N" - JA - Pin 10


## ----------------------------------------------------------------------------
## JB Pmod - Bank 34
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN Y16 [get_ports {JB0_1_P}];  # "Y16.JX1_LVDS_6_P.JX1.29.JB0-1_P" - JB - Pin 1
#set_property PACKAGE_PIN Y17 [get_ports {JB0_1_N}];  # "Y17.JX1_LVDS_6_N.JX1.31.JB0-1_N" - JB - Pin 2
#set_property PACKAGE_PIN W14 [get_ports {JB2_3_P}];  # "W14.JX1_LVDS_7_P.JX1.30.JB2-3_P" - JB - Pin 3
#set_property PACKAGE_PIN Y14 [get_ports {JB2_3_N}];  # "Y14.JX1_LVDS_7_N.JX1.32.JB2-3_N" - JB - Pin 4
#set_property PACKAGE_PIN T16 [get_ports {JB4_5_P}];  # "T16.JX1_LVDS_8_P.JX1.35.JB4-5_P" - JB - Pin 7
#set_property PACKAGE_PIN U17 [get_ports {JB4_5_N}];  # "U17.JX1_LVDS_8_N.JX1.37.JB4-5_N" - JB - Pin 8
#set_property PACKAGE_PIN V15 [get_ports {JB6_7_P}];  # "V15.JX1_LVDS_9_P.JX1.36.JB6-7_P" - JB - Pin 9
#set_property PACKAGE_PIN W15 [get_ports {JB6_7_N}];  # "W15.JX1_LVDS_9_N.JX1.38.JB6-7_N" - JB - Pin 10


## ----------------------------------------------------------------------------
## JC Pmod - Bank 34
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN N18 [get_ports {JC0_1_P}];  # "N18.JX1_LVDS_12_P.JX1.47.JC0-1_P" - JC - Pin 1
#set_property PACKAGE_PIN P19 [get_ports {JC0_1_N}];  # "P19.JX1_LVDS_12_N.JX1.49.JC0-1_N" - JC - Pin 2
#set_property PACKAGE_PIN N20 [get_ports {JC2_3_P}];  # "N20.JX1_LVDS_13_P.JX1.48.JC2-3_P" - JC - Pin 3
#set_property PACKAGE_PIN P20 [get_ports {JC2_3_N}];  # "P20.JX1_LVDS_13_N.JX1.50.JC2-3_N" - JC - Pin 4
#set_property PACKAGE_PIN T20 [get_ports {JC4_5_P}];  # "T20.JX1_LVDS_14_P.JX1.53.JC4-5_P" - JC - Pin 7
#set_property PACKAGE_PIN U20 [get_ports {JC4_5_N}];  # "U20.JX1_LVDS_14_N.JX1.55.JC4-5_N" - JC - Pin 8
#set_property PACKAGE_PIN V20 [get_ports {JC6_7_P}];  # "V20.JX1_LVDS_15_P.JX1.54.JC6-7_P" - JC - Pin 9
#set_property PACKAGE_PIN W20 [get_ports {JC6_7_N}];  # "W20.JX1_LVDS_15_N.JX1.56.JC6-7_N" - JC - Pin 10


## ----------------------------------------------------------------------------
## JD Pmod - Bank 34
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN R16 [get_ports {JD0_1_P}];  # "R16.JX1_LVDS_18_P.JX1.67.JD0-1_P" - JD - Pin 1
#set_property PACKAGE_PIN R17 [get_ports {JD0_1_N}];  # "R17.JX1_LVDS_18_N.JX1.69.JD0-1_N" - JD - Pin 2
#set_property PACKAGE_PIN T17 [get_ports {JD2_3_P}];  # "T17.JX1_LVDS_19_P.JX1.68.JD2-3_P" - JD - Pin 3
#set_property PACKAGE_PIN R18 [get_ports {JD2_3_N}];  # "R18.JX1_LVDS_19_N.JX1.70.JD2-3_N" - JD - Pin 4
#set_property PACKAGE_PIN V17 [get_ports {JD4_5_P}];  # "V17.JX1_LVDS_20_P.JX1.73.JD4-5_P" - JD - Pin 7
#set_property PACKAGE_PIN V18 [get_ports {JD4_5_N}];  # "V18.JX1_LVDS_20_N.JX1.75.JD4-5_N" - JD - Pin 8
#set_property PACKAGE_PIN W18 [get_ports {JD6_7_P}];  # "W18.JX1_LVDS_21_P.JX1.74.JD6-7_P" - JD - Pin 9
#set_property PACKAGE_PIN W19 [get_ports {JD6_7_N}];  # "W19.JX1_LVDS_21_N.JX1.76.JD6-7_N" - JD - Pin 10


## ----------------------------------------------------------------------------
## JK Pmod - Bank 34
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN Y18 [get_ports {JK0_1_P}];  # "Y18.JX1_LVDS_16_P.JX1.61.JK0-1_P" - JK - Pin 1
#set_property PACKAGE_PIN Y19 [get_ports {JK0_1_N}];  # "Y19.JX1_LVDS_16_N.JX1.63.JK0-1_N" - JK - Pin 2
#set_property PACKAGE_PIN V16 [get_ports {JK2_3_P}];  # "V16.JX1_LVDS_17_P.JX1.62.JK2-3_P" - JK - Pin 3
#set_property PACKAGE_PIN W16 [get_ports {JK2_3_N}];  # "W16.JX1_LVDS_17_N.JX1.64.JK2-3_N" - JK - Pin 4
#set_property PACKAGE_PIN N17 [get_ports {JK4_5_P}];  # "N17.JX1_LVDS_22_P.JX1.81.JK4-5_P" - JK - Pin 7
#set_property PACKAGE_PIN P18 [get_ports {JK4_5_N}];  # "P18.JX1_LVDS_22_N.JX1.83.JK4-5_N" - JK - Pin 8
#set_property PACKAGE_PIN P15 [get_ports {JK6_7_P}];  # "P15.JX1_LVDS_23_P.JX1.82.JK6-7_P" - JK - Pin 9
#set_property PACKAGE_PIN P16 [get_ports {JK6_7_N}];  # "P16.JX1_LVDS_23_N.JX1.84.JK6-7_N" - JK - Pin 10


## ----------------------------------------------------------------------------
## JE Pmod - Bank 35
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN E17 [get_ports {JE0_1_P}];  # "E17.JX2_LVDS_2_P.JX2.23.JE0-1_P" - JE - Pin 1
#set_property PACKAGE_PIN D18 [get_ports {JE0_1_N}];  # "D18.JX2_LVDS_2_N.JX2.25.JE0-1_N" - JE - Pin 2
#set_property PACKAGE_PIN D19 [get_ports {JE2_3_P}];  # "D19.JX2_LVDS_3_P.JX2.24.JE2-3_P" - JE - Pin 3
#set_property PACKAGE_PIN D20 [get_ports {JE2_3_N}];  # "D20.JX2_LVDS_3_N.JX2.26.JE2-3_N" - JE - Pin 4
#set_property PACKAGE_PIN E18 [get_ports {JE4_5_P}];  # "E18.JX2_LVDS_4_P.JX2.29.JE4-5_P" - JE - Pin 7
#set_property PACKAGE_PIN E19 [get_ports {JE4_5_N}];  # "E19.JX2_LVDS_4_N.JX2.31.JE4-5_N" - JE - Pin 8
#set_property PACKAGE_PIN F16 [get_ports {JE6_7_P}];  # "F17.JX2_LVDS_5_P.JX2.30.JE6-7_P" - JE - Pin 9
#set_property PACKAGE_PIN F17 [get_ports {JE6_7_N}];  # "F16.JX2_LVDS_5_N.JX2.32.JE6-7_N" - JE - Pin 10


## ----------------------------------------------------------------------------
## JF Pmod - Bank 35
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN L19 [get_ports {JF0_1_P}];  # "L19.JX2_LVDS_6_P.JX2.35.JF0-1_P" - JF - Pin 1
#set_property PACKAGE_PIN L20 [get_ports {JF0_1_N}];  # "L20.JX2_LVDS_6_N.JX2.37.JF0-1_N" - JF - Pin 2
#set_property PACKAGE_PIN M19 [get_ports {JF2_3_P}];  # "M19.JX2_LVDS_7_P.JX2.36.JF2-3_P" - JF - Pin 3
#set_property PACKAGE_PIN M20 [get_ports {JF2_3_N}];  # "M20.JX2_LVDS_7_N.JX2.38.JF2-3_N" - JF - Pin 4
#set_property PACKAGE_PIN M17 [get_ports {JF4_5_P}];  # "M17.JX2_LVDS_8_P.JX2.41.JF4-5_P" - JF - Pin 7
#set_property PACKAGE_PIN M18 [get_ports {JF4_5_N}];  # "M18.JX2_LVDS_8_N.JX2.43.JF4-5_N" - JF - Pin 8
#set_property PACKAGE_PIN K19 [get_ports {JF6_7_P}];  # "K19.JX2_LVDS_9_P.JX2.42.JF6-7_P" - JF - Pin 9
#set_property PACKAGE_PIN J19 [get_ports {JF6_7_N}];  # "J19.JX2_LVDS_9_N.JX2.44.JF6-7_N" - JF - Pin 10


## ----------------------------------------------------------------------------
## JG Pmod - Bank 35
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN G17 [get_ports {JG0_1_P}];  # "G17.JX2_LVDS_14_P.JX2.61.JG0-1_P" - JG - Pin 1
#set_property PACKAGE_PIN G18 [get_ports {JG0_1_N}];  # "G18.JX2_LVDS_14_N.JX2.63.JG0-1_N" - JG - Pin 2
#set_property PACKAGE_PIN F19 [get_ports {JG2_3_P}];  # "F19.JX2_LVDS_15_P.JX2.62.JG2-3_P" - JG - Pin 3
#set_property PACKAGE_PIN F20 [get_ports {JG2_3_N}];  # "F20.JX2_LVDS_15_N.JX2.64.JG2-3_N" - JG - Pin 4
#set_property PACKAGE_PIN H16 [get_ports {JG4_5_P}];  # "H16.JX2_LVDS_12_P.JX2.53.JG4-5_P" - JG - Pin 7
#set_property PACKAGE_PIN H17 [get_ports {JG4_5_N}];  # "H17.JX2_LVDS_12_N.JX2.55.JG4-5_N" - JG - Pin 8
#set_property PACKAGE_PIN J18 [get_ports {JG6_7_P}];  # "J18.JX2_LVDS_13_P.JX2.54.JG6-7_P" - JG - Pin 9
#set_property PACKAGE_PIN H18 [get_ports {JG6_7_N}];  # "H18.JX2_LVDS_13_N.JX2.56.JG6-7_N" - JG - Pin 10


## ----------------------------------------------------------------------------
## JH Pmod - Bank 35
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN K14 [get_ports {JH0_1_P}];  # "K14.JX2_LVDS_18_P.JX2.73.JH0-1_P" - JH - Pin 1
#set_property PACKAGE_PIN J14 [get_ports {JH0_1_N}];  # "J14.JX2_LVDS_18_N.JX2.75.JH0-1_N" - JH - Pin 2
#set_property PACKAGE_PIN H15 [get_ports {JH2_3_P}];  # "H15.JX2_LVDS_19_P.JX2.74.JH2-3_P" - JH - Pin 3
#set_property PACKAGE_PIN G15 [get_ports {JH2_3_N}];  # "G15.JX2_LVDS_19_N.JX2.76.JH2-3_N" - JH - Pin 4
#set_property PACKAGE_PIN N15 [get_ports {JH4_5_P}];  # "N15.JX2_LVDS_20_P.JX2.81.JH4-5_P" - JH - Pin 7
#set_property PACKAGE_PIN N16 [get_ports {JH4_5_N}];  # "N16.JX2_LVDS_20_N.JX2.83.JH4-5_N" - JH - Pin 8
#set_property PACKAGE_PIN L14 [get_ports {JH6_7_P}];  # "L14.JX2_LVDS_21_P.JX2.82.JH6-7_P" - JH - Pin 9
#set_property PACKAGE_PIN L15 [get_ports {JH6_7_N}];  # "L15.JX2_LVDS_21_N.JX2.84.JH6-7_N" - JH - Pin 10


## ----------------------------------------------------------------------------
## Carrier Clock Source - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN K17 [get_ports {BB_CLK}];  # "K17.JX2_LVDS_11_P.JX2.48.BB_CLK"
#set_property PACKAGE_PIN K18 [get_ports {BB_CLK_EN}];  # "K18.JX2_LVDS_11_N.JX2.50.BB_CLK_EN"


## ----------------------------------------------------------------------------
## User DIP Switches - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN M14 [get_ports {DIP_SW0}];  # "M14.JX2_LVDS_22_P.JX2.87.DIP_SW0"
#set_property PACKAGE_PIN M15 [get_ports {DIP_SW1}];  # "M15.JX2_LVDS_22_N.JX2.89.DIP_SW1"
#set_property PACKAGE_PIN K16 [get_ports {DIP_SW2}];  # "K16.JX2_LVDS_23_P.JX2.88.DIP_SW2"
#set_property PACKAGE_PIN J16 [get_ports {DIP_SW3}];  # "J16.JX2_LVDS_23_N.JX2.90.DIP_SW3"


## ----------------------------------------------------------------------------
## User Push Buttons - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN G19 [get_ports {PB0}];  # "G19.JX2_LVDS_16_P.JX2.67.PB0"
#set_property PACKAGE_PIN G20 [get_ports {PB1}];  # "G20.JX2_LVDS_16_N.JX2.69.PB1"
#set_property PACKAGE_PIN J20 [get_ports {PB2}];  # "J20.JX2_LVDS_17_P.JX2.68.PB2"
#set_property PACKAGE_PIN H20 [get_ports {PB3}];  # "H20.JX2_LVDS_17_N.JX2.70.PB3"


## ----------------------------------------------------------------------------
## JY Pmod - Bank 13 (Available on Z7020 device only)
## ---------------------------------------------------------------------------- 
## set_property PACKAGE_PIN U7 [get_ports {JY0_1_P}];  # "U7.BANK13_LVDS_0_P.JX1.87.JY0-1_P" - JY - Pin 1
## set_property PACKAGE_PIN V7 [get_ports {JY0_1_N}];  # "V7.BANK13_LVDS_0_N.JX1.89.JY0-1_N" - JY - Pin 2
## set_property PACKAGE_PIN T9 [get_ports {JY2_3_P}];  # "T9.BANK13_LVDS_1_P.JX1.88.JY2-3_P" - JY - Pin 3
## set_property PACKAGE_PIN U10 [get_ports {JY2_3_N}];  # "U10.BANK13_LVDS_1_N.JX1.90.JY2-3_N" - JY - Pin 4
## set_property PACKAGE_PIN V8 [get_ports {JY4_5_P}];  # "V8.BANK13_LVDS_2_P.JX1.91.JY4-5_P" - JY - Pin 7
## set_property PACKAGE_PIN W8 [get_ports {JY4_5_N}];  # "W8.BANK13_LVDS_2_N.JX1.93.JY4-5_N" - JY - Pin 8
## set_property PACKAGE_PIN T5 [get_ports {JY6_7_P}];  # "T5.BANK13_LVDS_3_P.JX1.92.JY6-7_P" - JY - Pin 9
## set_property PACKAGE_PIN U5 [get_ports {JY6_7_N}];  # "U5.BANK13_LVDS_3_N.JX1.94.JY6-7_N" - JY - Pin 10


## ----------------------------------------------------------------------------
## JZ Pmod - Bank 13 (Available on Z7020 device only)
## ---------------------------------------------------------------------------- 
## set_property PACKAGE_PIN Y12 [get_ports {JZ0_1_P}];  # "Y12.BANK13_LVDS_4_P.JX2.93.JZ0-1_P" - JZ - Pin 1
## set_property PACKAGE_PIN Y13 [get_ports {JZ0_1_N}];  # "Y13.BANK13_LVDS_4_N.JX2.95.JZ0-1_N" - JZ - Pin 2
## set_property PACKAGE_PIN V11 [get_ports {JZ2_3_P}];  # "V11.BANK13_LVDS_5_P.JX2.94.JZ2-3_P" - JZ - Pin 3
## set_property PACKAGE_PIN V10 [get_ports {JZ2_3_N}];  # "V10.BANK13_LVDS_5_N.JX2.96.JZ2-3_N" - JZ - Pin 4
## set_property PACKAGE_PIN V5 [get_ports {JZ5}];  # "V5.BANK13_SE_0.JX2.100.JZ5" - JZ - Pin 8
## set_property PACKAGE_PIN V6 [get_ports {JZ6_7_P}];  # "V6.BANK13_LVDS_6_P.JX2.97.JZ6-7_P" - JZ - Pin 9
## set_property PACKAGE_PIN W6 [get_ports {JZ6_7_N}];  # "W6.BANK13_LVDS_6_N.JX2.99.JZ6-7_N" - JZ - Pin 10


## ----------------------------------------------------------------------------
## XADC
## ---------------------------------------------------------------------------- 
## set_property PACKAGE_PIN M10 [get_ports {XADC_DX_N}];  # "M10.NetJX1_100.JX1.100.XADC_DX_N"
## set_property PACKAGE_PIN M9 [get_ports {XADC_DX_P}];  # "M9.NetJX1_98.JX1.98.XADC_DX_P"
## set_property PACKAGE_PIN L10 [get_ports {XADC_V_N}];  # "L10.NetJX1_99.JX1.99.XADC_V_N"
## set_property PACKAGE_PIN K9 [get_ports {XADC_V_P}];  # "K9.NetJX1_97.JX1.97.XADC_V_P"
## set_property PACKAGE_PIN B20 [get_ports {XADC_AD0_N}];  # "B20.JX2_LVDS_0_N.JX2.19.XADC_AD0_N"
## set_property PACKAGE_PIN C20 [get_ports {XADC_AD0_P}];  # "C20.JX2_LVDS_0_P.JX2.17.XADC_AD0_P"
## set_property PACKAGE_PIN A20 [get_ports {XADC_AD8_N}];  # "A20.JX2_LVDS_1_N.JX2.20.XADC_AD8_N"
## set_property PACKAGE_PIN B19 [get_ports {XADC_AD8_P}];  # "B19.JX2_LVDS_1_P.JX2.18.XADC_AD8_P"
## set_property PACKAGE_PIN L16 [get_ports {XADC_GIO0}];  # "L16.JX2_LVDS_10_P.JX2.47.XADC_GIO0"
## set_property PACKAGE_PIN G14 [get_ports {XADC_GIO1}];  # "G14.JX2_SE_0.JX2.13.XADC_GIO1"
## set_property PACKAGE_PIN J15 [get_ports {XADC_GIO2}];  # "J15.JX2_SE_1.JX2.14.XADC_GIO2"
## set_property PACKAGE_PIN L17 [get_ports {XADC_GIO3}];  # "L17.JX2_LVDS_10_N.JX2.49.XADC_GIO3"


## ----------------------------------------------------------------------------
## IOSTANDARD Constraints
##
## Note that these IOSTANDARD constraints are applied to all IOs currently
## assigned within an I/O bank.  If these IOSTANDARD constraints are 
## evaluated prior to other PACKAGE_PIN constraints being applied, then 
## the IOSTANDARD specified will likely not be applied properly to those 
## pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
## within the XDC file in a location that is evaluated AFTER all 
## PACKAGE_PIN constraints within the target bank have been evaluated.
##
## Un-comment one or more of the following IOSTANDARD constraints according to
## the bank pin assignments that are required within a design.
## ---------------------------------------------------------------------------- 

## Set the bank voltage for IO Bank 34 to 3.3V by default.
 set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];

## Set the bank voltage for IO Bank 35 to 3.3V by default.
## set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];

## Set the bank voltage for IO Bank 13 to 3.3V by default. (I/O bank available on Z7020 device only)
## set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
