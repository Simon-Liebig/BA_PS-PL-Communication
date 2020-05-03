-- Generic Register 
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;	

entity gen_reg32 is
    port (
        clk         : in  STD_LOGIC;
	    load 	    : in  STD_LOGIC;
	    in_dat		: in  STD_LOGIC_VECTOR (31 downto 0);
	    out_dat		: out STD_LOGIC_VECTOR (31 downto 0)
    );
end gen_reg32;

architecture arch_gen_reg32 of gen_reg32 is

signal int_dat:  STD_LOGIC_VECTOR (31 downto 0) := x"00000000";

begin
----------------------------------------------------------------------
--Generic Register -> 
gen_reg32_pr: process (clk)
    begin
        if (clk'event and clk = '1') then 			
                if (load = '1') then
                      int_dat(31 downto 0) <= in_dat;			
                end if;				
        end if;	
    end process gen_reg32_pr;
out_dat <= int_dat;
end arch_gen_reg32;























