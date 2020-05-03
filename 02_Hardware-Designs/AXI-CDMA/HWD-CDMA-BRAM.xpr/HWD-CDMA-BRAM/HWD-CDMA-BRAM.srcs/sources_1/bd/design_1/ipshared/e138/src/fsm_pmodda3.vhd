library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity fsm_pmodda3 is
port (
      ck : in  STD_LOGIC;
      start  : in  STD_LOGIC;
      ctr  : in  STD_LOGIC_VECTOR(3 downto 0);
          ld_send_reg  : OUT  STD_LOGIC := '0';
          shift  : OUT  STD_LOGIC := '0';
          CS  : OUT  STD_LOGIC := '1';
          sclk  : OUT  STD_LOGIC := '1';
          ldac  : OUT  STD_LOGIC := '0';
          ready  : OUT  STD_LOGIC := '1'
      );
end fsm_pmodda3;

architecture arch_fsm_pmodda3 of fsm_pmodda3 is
signal    d_out_ld_send_reg  : STD_LOGIC ;
signal    d_out_shift  : STD_LOGIC ;
signal    d_out_CS  : STD_LOGIC ;
signal    d_out_sclk  : STD_LOGIC ;
signal    d_out_ldac  : STD_LOGIC ;
signal    d_out_ready  : STD_LOGIC ;
type states is (
         s_idle,
         s_start,
         s_send0,
         s_send1,
         s_send2,
         s_send3,
         s_cs1,
         s_ldac0,
         s_ldac1
         );
signal state,nxt_state    : states;
begin
calc_next_state: process (
state,start,ctr
)
begin
	case state is
	  when s_idle => if (start = '1') then
	    nxt_state <= s_start;
	  else nxt_state <= s_idle;
	  end if;
	  when s_start => nxt_state <= s_send0;
	  when s_send0 => nxt_state <= s_send1;
	  when s_send1 => nxt_state <= s_send2;
	  when s_send2 => if (ctr = "1111") then
	    nxt_state <= s_cs1;
	  else nxt_state <= s_send3;
	  end if;
	  when s_send3 => if (ctr = "1111") then
	    nxt_state <= s_cs1;
	  else nxt_state <= s_send0;
	  end if;
	  when s_cs1 => nxt_state <= s_ldac0;
	  when s_ldac0 => nxt_state <= s_ldac1;
	  when s_ldac1 => nxt_state <= s_idle;
	  when others => nxt_state <= s_idle;
	end case;
end process calc_next_state;
-- Auscodierung Ausgaenge;
with nxt_state select
   d_out_ld_send_reg <= 
      '1' when s_start,
      '0' when others;
with nxt_state select
   d_out_shift <= 
      '1' when s_send3,
      '0' when others;
with nxt_state select
   d_out_CS <= 
      '1' when s_idle,
      '1' when s_cs1,
      '1' when s_ldac0,
      '1' when s_ldac1,
      '0' when others;
with nxt_state select
   d_out_sclk <= 
      '1' when s_idle,
      '1' when s_start,
      '1' when s_send2,
      '1' when s_send3,
      '1' when s_cs1,
      '1' when s_ldac0,
      '1' when s_ldac1,
      '0' when others;
with nxt_state select
   d_out_ldac <= 
      '1' when s_ldac0,
      '1' when s_ldac1,
      '0' when others;
with nxt_state select
   d_out_ready <= 
      '1' when s_idle,
      '0' when others;
clkd:Process(ck)
Begin
    if rising_edge(ck) THEN
          state <= nxt_state ;
          ld_send_reg <= d_out_ld_send_reg;
          shift <= d_out_shift;
          CS <= d_out_CS;
          sclk <= d_out_sclk;
          ldac <= d_out_ldac;
          ready <= d_out_ready;
    end if;
END PROCESS clkd;
end arch_fsm_pmodda3;
