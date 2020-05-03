 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity dp_ram_byte1 is
    port(clka : in std_logic;
    clkb : in std_logic;
    ena : in std_logic;
    enb : in std_logic;
    wea : in std_logic_vector(0 downto 0);
    web : in std_logic_vector(0 downto 0);
    addra : in std_logic_vector(8 downto 0);
    addrb : in std_logic_vector(8 downto 0);
    dia : in std_logic_vector(7 downto 0);
    dib : in std_logic_vector(7 downto 0);
    doa : out std_logic_vector(7 downto 0);
    dob : out std_logic_vector(7 downto 0));
end dp_ram_byte1;
architecture arch_dp_ram_byte1 of dp_ram_byte1 is
    type ram_type is array (511 downto 0) of std_logic_vector(7 downto 0);
    shared variable RAM : ram_type:= (
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"00",   
   X"80",   
   X"82",   
   X"85",   
   X"87",   
   X"8a",   
   X"8c",   
   X"8f",   
   X"91",   
   X"93",   
   X"96",   
   X"98",   
   X"9b",   
   X"9d",   
   X"a0",   
   X"a2",   
   X"a4",   
   X"a7",   
   X"a9",   
   X"ab",   
   X"ae",   
   X"b0",   
   X"b2",   
   X"b4",   
   X"b6",   
   X"b8",   
   X"ba",   
   X"bc",   
   X"be",   
   X"c0",   
   X"c2",   
   X"c4",   
   X"c6",   
   X"c8",   
   X"ca",   
   X"cb",   
   X"cd",   
   X"cf",   
   X"d0",   
   X"d2",   
   X"d3",   
   X"d5",   
   X"d6",   
   X"d7",   
   X"d9",   
   X"da",   
   X"db",   
   X"dc",   
   X"dd",   
   X"de",   
   X"df",   
   X"e0",   
   X"e1",   
   X"e1",   
   X"e2",   
   X"e3",   
   X"e3",   
   X"e4",   
   X"e4",   
   X"e5",   
   X"e5",   
   X"e5",   
   X"e6",   
   X"e6",   
   X"e6",   
   X"e6",   
   X"e6",   
   X"e6",   
   X"e6",   
   X"e5",   
   X"e5",   
   X"e5",   
   X"e4",   
   X"e4",   
   X"e3",   
   X"e3",   
   X"e2",   
   X"e1",   
   X"e1",   
   X"e0",   
   X"df",   
   X"de",   
   X"dd",   
   X"dc",   
   X"db",   
   X"da",   
   X"d9",   
   X"d7",   
   X"d6",   
   X"d5",   
   X"d3",   
   X"d2",   
   X"d0",   
   X"cf",   
   X"cd",   
   X"cb",   
   X"ca",   
   X"c8",   
   X"c6",   
   X"c4",   
   X"c2",   
   X"c0",   
   X"be",   
   X"bc",   
   X"ba",   
   X"b8",   
   X"b6",   
   X"b4",   
   X"b2",   
   X"b0",   
   X"ae",   
   X"ab",   
   X"a9",   
   X"a7",   
   X"a4",   
   X"a2",   
   X"a0",   
   X"9d",   
   X"9b",   
   X"98",   
   X"96",   
   X"93",   
   X"91",   
   X"8f",   
   X"8c",   
   X"8a",   
   X"87",   
   X"85",   
   X"82",   
   X"80",   
   X"7d",   
   X"7a",   
   X"78",   
   X"75",   
   X"73",   
   X"70",   
   X"6e",   
   X"6c",   
   X"69",   
   X"67",   
   X"64",   
   X"62",   
   X"5f",   
   X"5d",   
   X"5b",   
   X"58",   
   X"56",   
   X"54",   
   X"51",   
   X"4f",   
   X"4d",   
   X"4b",   
   X"49",   
   X"47",   
   X"45",   
   X"43",   
   X"41",   
   X"3f",   
   X"3d",   
   X"3b",   
   X"39",   
   X"37",   
   X"35",   
   X"34",   
   X"32",   
   X"30",   
   X"2f",   
   X"2d",   
   X"2c",   
   X"2a",   
   X"29",   
   X"28",   
   X"26",   
   X"25",   
   X"24",   
   X"23",   
   X"22",   
   X"21",   
   X"20",   
   X"1f",   
   X"1e",   
   X"1e",   
   X"1d",   
   X"1c",   
   X"1c",   
   X"1b",   
   X"1b",   
   X"1a",   
   X"1a",   
   X"1a",   
   X"19",   
   X"19",   
   X"19",   
   X"19",   
   X"19",   
   X"19",   
   X"19",   
   X"1a",   
   X"1a",   
   X"1a",   
   X"1b",   
   X"1b",   
   X"1c",   
   X"1c",   
   X"1d",   
   X"1e",   
   X"1e",   
   X"1f",   
   X"20",   
   X"21",   
   X"22",   
   X"23",   
   X"24",   
   X"25",   
   X"26",   
   X"28",   
   X"29",   
   X"2a",   
   X"2c",   
   X"2d",   
   X"2f",   
   X"30",   
   X"32",   
   X"34",   
   X"35",   
   X"37",   
   X"39",   
   X"3b",   
   X"3d",   
   X"3f",   
   X"40",   
   X"42",   
   X"45",   
   X"47",   
   X"49",   
   X"4b",   
   X"4d",   
   X"4f",   
   X"51",   
   X"54",   
   X"56",   
   X"58",   
   X"5b",   
   X"5d",   
   X"5f",   
   X"62",   
   X"64",   
   X"67",   
   X"69",   
   X"6c",   
   X"6e",   
   X"70",   
   X"73",   
   X"75",   
   X"78",   
   X"7a",   
   X"7d"   
); 
 begin 
 process (CLKA) 
  begin 
  if (rising_edge(CLKA)) then 
   if ENA = '1' then 
    if WEA(0) = '1' then 
      RAM(conv_integer(ADDRA)) := DIA; 
    end if; 
   DOA <= RAM(conv_integer(ADDRA)); 
   end if; 
  end if; 
 end process; 
 process (CLKB) 
  begin 
   if (rising_edge(CLKB)) then 
    if ENB = '1' then 
      if WEB(0) = '1' then 
        RAM(conv_integer(ADDRB)) := DIB; 
      end if; 
    DOB <= RAM(conv_integer(ADDRB)); 
   end if; 
  end if; 
 end process; 
 end arch_dp_ram_byte1;  