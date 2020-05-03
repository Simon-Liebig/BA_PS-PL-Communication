
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity reg_par is
	generic (reg_width : natural := 16);
    Port ( 		ck  		: in  STD_LOGIC;
				ld_par	: in  STD_LOGIC;
				data_in 	: in  STD_LOGIC_VECTOR (reg_width - 1 downto 0);
				data_out : out  STD_LOGIC_VECTOR (reg_width - 1 downto 0)
				);
	end reg_par;
architecture arch_reg_par of reg_par is
signal reg : STD_LOGIC_VECTOR (reg_width - 1 downto 0) := (others => '0');
begin
process(ck)
begin

if rising_edge(ck) then
	if ld_par = '1' then
		reg	<=	data_in;
	end if;
end if;
end process;
data_out <= reg;
end arch_reg_par;