--Designer: Dipl.Ing(TU)). D.Kohlert, CEO Kohlert Enterprises Int.
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

ENTITY fir_memo_top IS
    port (
        clk_in   : in  STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        JA6_7_N         : OUT STD_LOGIC;
        JA6_7_P         : OUT STD_LOGIC;
        JA4_5_N         : OUT STD_LOGIC;
        JA4_5_P         : OUT STD_LOGIC;
        conv_start_adc  : OUT STD_LOGIC;
        hi_out          : OUT STD_LOGIC;
        adc_data    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        dac_dat_out :OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );

END fir_memo_top;
ARCHITECTURE arch_fir_memo_top OF fir_memo_top IS

COMPONENT mem_top IS
    port (
         clka   : in  STD_LOGIC;
           ena : IN STD_LOGIC;
           wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
           addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
           dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
           douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
           dac_start_mem   : OUT STD_LOGIC;
           dac_dat_mem : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END COMPONENT;	

COMPONENT adda_firtop
     port (
          clk       : in std_logic; 
          dac_start_fir    : OUT STD_LOGIC;
          dac_dat_fir    : OUT STD_LOGIC_VECTOR (15 downto 0);
          shift_in_coeffs : IN STD_LOGIC;
          coeffs_in       : IN STD_LOGIC_VECTOR (19 downto 0);
          conv_start_adc  : OUT STD_LOGIC;
          adc_data   : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
           --debug  : OUT STD_LOGIC_VECTOR (15 downto 0)
    );               
END COMPONENT;

COMPONENT gen_reg32 
    port (
        clk         : in  STD_LOGIC;
	    load 	    : in  STD_LOGIC;
	    in_dat		: in  STD_LOGIC_VECTOR (31 downto 0);
	    out_dat		: out STD_LOGIC_VECTOR (31 downto 0)
    );
END COMPONENT;

component spi_ad5541 is
   port (
		 ck		: in  STD_LOGIC;
		 start 		: in  STD_LOGIC;
		 dacdat 	    : in  STD_LOGIC_VECTOR (15 downto 0);		
		 mosi		: out STD_LOGIC;
		 cs    		: out STD_LOGIC;		
		 sclk    	: out STD_LOGIC;
		 ldac    	: out STD_LOGIC;
		 ready    	: out STD_LOGIC;
         debug  : OUT STD_LOGIC_VECTOR (15 downto 0) 
         );
end component;

signal dinb, doutb : STD_LOGIC_VECTOR (31 downto 0)  ;
signal web : STD_LOGIC_VECTOR (3 downto 0)  ;
signal enb : STD_LOGIC;
signal adr_a_aligned : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal clka:  STD_LOGIC;
signal shift_in_coeffs,wr_ctr_reg,analog_out_sel : STD_LOGIC:='0';
signal ctr_word :  STD_LOGIC_VECTOR (31 downto 0);
signal dac_start_mem, dac_start_fir, dac_start,ready_int   :  STD_LOGIC;
signal dac_dat_mem, dac_dat_fir, dac_dat,debug_spi :  STD_LOGIC_VECTOR (15 downto 0);

begin
clkf_buf: BUFG
    port map (
      I => clk_in,
      O => clka
    );
hi_out <= '1';    
	
i_mem_top: mem_top
    port map (
	   clka => clka,
	   ena => ena,
	   wea => wea,
	   addra => addra,
	   dina => dina,
	   douta => douta,
	   dac_start_mem => dac_start_mem,
       dac_dat_mem =>   dac_dat_mem
    );
    dac_dat_out <= dac_dat_mem;
adr_a_aligned <= addra(10 downto 2);
shift_in_coeffs <= '1' when (adr_a_aligned = "111111111" and wea = x"f")else '0';
i_adda_firtop: adda_firtop 
   port map(
          clk     	       =>  clka,
          dac_start_fir    => dac_start_fir,
          dac_dat_fir      => dac_dat_fir,
		  shift_in_coeffs  =>  shift_in_coeffs,
          coeffs_in        =>  dina(19 downto 0),
          conv_start_adc   =>  conv_start_adc,
          adc_data         => adc_data
         );

-----------------------------------------------------------------------------
wr_ctr_reg <= '1' when (adr_a_aligned = "1111111110"  and wea = x"f") else '0';
i_contr_reg: gen_reg32 
    port map (
        clk        => clka,
	    load 	   => wr_ctr_reg,
	    in_dat	   => dina,
	    out_dat	   => ctr_word
    );
analog_out_sel <= ctr_word(0);

dac_start <= dac_start_mem when analog_out_sel = '0' else dac_start_fir;
dac_dat   <= dac_dat_mem   when analog_out_sel = '0' else dac_dat_fir;

spi_dac: spi_ad5541 
port map (
		 ck		=> clka,
		 start 	=> dac_start,
		 dacdat  => dac_dat, --Daten rein in DA-Interface
		 mosi	=> JA4_5_N,
		 cs    	=> JA4_5_P,
		 sclk   => JA6_7_N,
		 ldac   => JA6_7_P,
		 ready  => ready_int,
         debug   => debug_spi
);

--JA6_7_N    <= JA6_7_N_mem when analog_out_sel = '0' else sclk_int_adda;
--JA6_7_P    <= JA6_7_P_mem when analog_out_sel = '0' else ldac_int_adda;
--JA4_5_N	   <= JA4_5_N_mem when analog_out_sel = '0' else dac_dat_int_adda;
--JA4_5_P    <= JA4_5_P_mem when analog_out_sel = '0' else cs_int_adda;


--JA6_7_N    <= sclk_int;
--JA6_7_P    <= ldac_int;
--JA4_5_N	 <= dac_dat_int;
--JA4_5_P    <= cs_int;

END arch_fir_memo_top;
