library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;	
use ieee.numeric_std.all;

entity spi_ad5541 is
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
end spi_ad5541;


architecture arch_spi_ad5541 of spi_ad5541 is
---------------------------------------------------------------
--Component Declaration fsm_pmodda3
component fsm_pmodda3 is
port (
      ck : in  STD_LOGIC;
      start  : in  STD_LOGIC;
      ctr  : in  STD_LOGIC_VECTOR(3 downto 0);
      ld_send_reg  : OUT  STD_LOGIC;
      shift  : OUT  STD_LOGIC;
      CS  : OUT  STD_LOGIC;
      sclk  : OUT  STD_LOGIC;
      ldac  : OUT  STD_LOGIC;
      ready  : OUT  STD_LOGIC
      );
end component;
---------------------------------------------------------------
COMPONENT reg_par
generic (reg_width : natural := 16);
    Port ( 	ck  		: in  STD_LOGIC;
			ld_par		: in  STD_LOGIC;
			data_in 	: in  STD_LOGIC_VECTOR (reg_width - 1 downto 0);
			data_out 	: out  STD_LOGIC_VECTOR (reg_width - 1 downto 0)
			);
END COMPONENT;
------------------------------------------------------------------
signal ld_send_reg,shift   : STD_LOGIC;
signal ctr       : STD_LOGIC_VECTOR(3 downto 0):= x"0";
signal bufdat  	 : STD_LOGIC_VECTOR(15 downto 0);
signal send_reg	 : STD_LOGIC_VECTOR(15 downto 0):= x"0000";

begin
-----------------------------------------------
-- Main Counter
proc_main_ctr:process(ck)
    begin
    if ck'event and ck = '1' then
			if  ld_send_reg = '1'  then 
				ctr <= x"0";
			else
                if  shift = '1'  then 
                    ctr <= ctr + x"1";
                end if;
			end if;	
    end if;
end process proc_main_ctr;
--------------------------------------------------------------
i_reg_din: reg_par 
          generic map (reg_width => 16)
          Port map (
                  ck       => ck,
                  ld_par   => start,
                  data_in  => dacdat,
                  data_out => bufdat
                  );    
-------------------------------------------------------------	
  
--Sendregister and related Signals
proc_send_reg:process(ck)
    begin
    if rising_edge(ck)  then
		if ld_send_reg = '1' then 
			send_reg <= bufdat;
		elsif shift = '1' then 
		    send_reg(15 downto 1) <= send_reg(14 downto 0);
			send_reg(0) <= '0';
		end if;
    end if;
end process proc_send_reg; 	
mosi <= send_reg(15);	
---------------------------------------------------------------
--Instanciation fsm_pmodda3
i_fsm_pmodda3 :fsm_pmodda3 port map (
    --formal => actual
      ck => ck,
      start => start,
      ctr => ctr,
      ld_send_reg => ld_send_reg,
      shift => shift,
      CS => CS,
      sclk => sclk,
      ldac => ldac,
      ready => ready
      );
	  
--debug, an Pmod-Steckern angeschlossen:
debug <= bufdat;
--debug(0) <= rx;  
--debug(1) <= tx_int;
--debug(2) <= s_axi_lite_arvalid;
--debug(3) <= s_axi_lite_arready;
--debug(4) <= s_axi_lite_araddr (3);
--debug(5) <= s_axi_lite_araddr (1);
--debug(6) <= s_axi_lite_araddr (0);
--debug(7) <= dat_received_int;
--debug(15 downto 8) <=  rxfifo_dat_int;      			  
end arch_spi_ad5541;























