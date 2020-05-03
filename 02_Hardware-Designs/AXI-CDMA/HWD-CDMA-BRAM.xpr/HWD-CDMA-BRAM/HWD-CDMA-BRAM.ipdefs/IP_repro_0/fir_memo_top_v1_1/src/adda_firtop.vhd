library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--USE work.reg_pack.ALL;

library unisim;
use unisim.vcomponents.all;
library work;

entity adda_firtop is
   port (
         clk       : in std_logic; 
         dac_start_fir    : OUT STD_LOGIC;
         dac_dat_fir    : OUT STD_LOGIC_VECTOR (15 downto 0);
         shift_in_coeffs : IN STD_LOGIC;
         coeffs_in       : IN STD_LOGIC_VECTOR (19 downto 0);
         conv_start_adc  : OUT STD_LOGIC;
         adc_data        : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
          --debug  : OUT STD_LOGIC_VECTOR (15 downto 0)
         );
end entity;

architecture arch_adda_firtop of adda_firtop is

COMPONENT fir_serial_coeffs 
    port (
            clk,nres     : in  STD_LOGIC;
            data_rdy     : in  STD_LOGIC;
            in_dat         : in  STD_LOGIC_VECTOR (15 downto 0);
            out_dat         : out STD_LOGIC_VECTOR (15 downto 0);
            shift_coeffs : in  STD_LOGIC;
            in_coeffs     : in STD_LOGIC_VECTOR (19 downto 0)
    );
END COMPONENT; 


--signal bresp_reg : STD_LOGIC_VECTOR (1 downto 0);

signal  sam_ctr         :  STD_LOGIC_VECTOR (15 downto 0):= x"0063";
signal  ax_ar_adr_int   :  STD_LOGIC_VECTOR (31 downto 0):= x"00000000";
signal  ad_dat_int        : STD_LOGIC_VECTOR (11 downto 0);

--signal   :  STD_LOGIC_VECTOR (15 downto 0);
signal  sync_int  :  STD_LOGIC;
signal debug_spi  :  STD_LOGIC_VECTOR (15 downto 0);
signal  dac_trig  :  STD_LOGIC;
signal  dac_in    :  STD_LOGIC_VECTOR (15 downto 0);
signal  ready_int :  STD_LOGIC;
signal fir_dat,fir_out, dac_uni	   :  STD_LOGIC_VECTOR (15 downto 0);
signal convst_in :  STD_LOGIC;


begin
-----------------------------------------------------------------
fir_dat(15) <= not adc_data(15);
fir_dat(14 downto 4) <= adc_data(14 downto 4);
fir_dat(3 downto  0) <= x"0";

myfilter: fir_serial_coeffs
        port map (
            clk               => clk,   
            nres              => '1',
            data_rdy      => convst_in,     
            in_dat        => fir_dat,   
            out_dat       => fir_out,
            shift_coeffs  =>   shift_in_coeffs,   
            in_coeffs     =>  coeffs_in
        );

dac_uni(15) <= not fir_out(15);
dac_uni(14 downto 0 ) <= fir_out(14 downto 0);

dac_start_fir <= convst_in;
dac_dat_fir   <= dac_uni;
--dac_dat_fir   <= adc_data;

conv_start_adc <= convst_in;

---------------------------------------------------------------
--sampling-ctr
proc_sam_ctr: process (clk)
begin 
    if (rising_edge(clk)) then        
               sam_ctr <= sam_ctr - x"0001";
               convst_in <= '0';
               if (sam_ctr = x"0000") then
                   sam_ctr <= x"0063";
                   convst_in <= '1';
               end if;
    end if;	
end process proc_sam_ctr; 
----------------------------------------------   

--JA6_7_N    <= sclk_int;
--JA6_7_P    <= ldac_int;
--JA4_5_N	   <= dac_dat_int;
--JA4_5_P    <= cs_int;

---------------------------------------------- 
--debug, an Pmod-Steckern angeschlossen:
--debug(0) <=  ad_dat_valid;
--debug(1) <= ad_dat_int( 7);
--debug(2) <= ad_dat_int( 8);
--debug(3) <= ad_dat_int( 9);
--debug(4) <= ad_dat_int(10);
--debug(5) <= ad_dat_int(11);
--debug(6) <= s_axi_lite_araddr(0);

--debug(0) <= sclk_int;  
--debug(1) <= sync_int;
--debug(2) <= dac_dat_int;
--debug(3) <= ck_10meg;

--debug(6) <= '0';
--debug(7) <= '0';
--debug(15 downto 8) <=  ad_dat_int_filt(15 downto 8);
--debug(15 downto 8) <=  fil_out_dat(15 downto 8);
--debug(15 downto 8) <= s_axi_lite_araddr (7 downto 0);
--debug(15) <= s_axi_lite_arready;
--debug(14) <= s_axi_lite_arvalid;
--debug(13) <= s_axi_lite_rready;
--debug(12) <= s_axi_lite_rvalid;
--debug(11 downto 8) <= s_axi_lite_rdata(3 downto 0);
end arch_adda_firtop;

