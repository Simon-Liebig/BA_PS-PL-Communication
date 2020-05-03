-- Generic Register 
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;	

entity gen_reg24 is
    port (
        clk,nres   		: in  STD_LOGIC;
        cken       		: in  STD_LOGIC;
		  load 			: in  STD_LOGIC;
		  in_dat		: in  STD_LOGIC_VECTOR (23 downto 0);
		  out_dat		: out STD_LOGIC_VECTOR (23 downto 0)
    );
end gen_reg24;
architecture arch_gen_reg24 of gen_reg24 is

begin
----------------------------------------------------------------------
--Generic Register -> 
gen_reg24_pr: process (clk,nres)
begin
    if (nres ='0') then	
		 out_dat <= x"000000";
    elsif (clk'event and clk= '1') then 
		if (cken = '1') then 
			if (load = '1') then
		     out_dat(23 downto 0) <= in_dat;			
			end if;
		end if;			
    end if;	
end process gen_reg24_pr;
end arch_gen_reg24;























