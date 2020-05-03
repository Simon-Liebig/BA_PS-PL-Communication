--Designer: Dipl.Ing(TU)). D.Kohlert, CEO Kohlert Enterprises Int.
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
ENTITY mem_top IS
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

END mem_top;
ARCHITECTURE arch_mem_top OF mem_top IS

COMPONENT dp_ram_byte0
     port (
   clka : in std_logic;
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
END COMPONENT;
COMPONENT dp_ram_byte1
    port(
      clka : in std_logic;
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
      dob : out std_logic_vector(7 downto 0)   
  );
END COMPONENT;
COMPONENT dp_ram_byte2
    port(
      clka : in std_logic;
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
      dob : out std_logic_vector(7 downto 0) 
  );
END COMPONENT;
COMPONENT dp_ram_byte3
    port(
      clka : in std_logic;
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
      dob : out std_logic_vector(7 downto 0)   
  );
END COMPONENT;

signal portb_adr_ctr : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
signal adr_a_aligned : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
signal sam_ctr : STD_LOGIC_VECTOR (15 downto 0)      := x"0063";

signal dinb, doutb : STD_LOGIC_VECTOR (31 downto 0)  ;
signal web : STD_LOGIC_VECTOR (3 downto 0)  ;

signal enb,convst_in : STD_LOGIC;

signal  sclk_int  :  STD_LOGIC;
signal debug_spi  :  STD_LOGIC_VECTOR (15 downto 0);
signal dac_dat_int, ready_int,ldac_int, cs_int, word_sel :  STD_LOGIC;
signal  doutb_dac :  STD_LOGIC_VECTOR (15 downto 0);

begin
adr_a_aligned <= addra(10 downto 2);
my_mem0 : dp_ram_byte0
  PORT MAP (  
    clka  => clka,
    clkb  => clka,
    ena   => ena,
    enb   => enb,
    wea(0)   => wea(0),
    web(0)   => web(0),
    addra => adr_a_aligned,
    addrb => portb_adr_ctr(9 downto 1),
    dia  => dina(7 downto 0),
    dib  => dinb(7 downto 0),
    doa => douta(7 downto 0),
    dob => doutb(7 downto 0)
  );   
my_mem1 : dp_ram_byte1
    PORT MAP (
      clka  => clka,
      clkb  => clka,
      ena   => ena,
      enb   => enb,
      wea(0)   => wea(1),
      web(0)   => web(1),
      addra => adr_a_aligned,
      addrb => portb_adr_ctr(9 downto 1),
      dia  => dina(15 downto 8),
      dib  => dinb(15 downto 8),
      doa => douta(15 downto 8),
      dob => doutb(15 downto 8)
    );
my_mem2 : dp_ram_byte2
      PORT MAP (
            clka  => clka,
            clkb  => clka,
            ena   => ena,
            enb   => enb,
            wea(0)   => wea(2),
            web(0)   => web(2),
            addra => adr_a_aligned,
            addrb => portb_adr_ctr(9 downto 1),
            dia  => dina(23 downto 16),
            dib  => dinb(23 downto 16),
            doa => douta(23 downto 16),
            dob => doutb(23 downto 16)
      );
my_mem3 : dp_ram_byte3
        PORT MAP (
            clka  => clka,
            clkb  => clka,
            ena   => ena,
            enb   => enb,
            wea(0)   => wea(3),
            web(0)   => web(3),
            addra => adr_a_aligned,
            addrb => portb_adr_ctr(9 downto 1),
            dia  => dina(31 downto 24),
            dib  => dinb(31 downto 24),
            doa => douta(31 downto 24),
            dob => doutb(31 downto 24) 
        ); 

enb <= '1';
web <= x"0";
dinb <= x"00000000";
--sampling-ctr
proc_sam_ctr: process (clka)
begin 
    if (rising_edge(clka)) then        
               sam_ctr <= sam_ctr - x"0001";            
               if (sam_ctr = x"0000") then
                   sam_ctr <= x"0063";
                   convst_in <= '1';
               else
                   convst_in <= '0';
               end if;
    end if;	
end process proc_sam_ctr; 
--Zaehler ext. Adr
proc_portb_adr:process(clka)
    begin
    if clka'event and clka = '1' then
        if convst_in = '1' then
            if portb_adr_ctr = "1111111111" then 
			     portb_adr_ctr <= "0000000000";
			else
			     portb_adr_ctr <= portb_adr_ctr + 1;			     
            end if; 
        end if;
    end if;
end process proc_portb_adr; 	

---------------------------------------------------------------
 word_sel <= portb_adr_ctr(0);
 doutb_dac <= doutb(15 downto 0) when word_sel = '1' else
              doutb(31 downto 16);

dac_start_mem <= convst_in;
dac_dat_mem  <= doutb_dac;
END arch_mem_top;
