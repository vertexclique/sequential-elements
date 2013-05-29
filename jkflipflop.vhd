-------------------------------------------------------------------------------
--
-- Title       : jkff
-- Design      : examples
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : jkflipflop.vhd
-- Generated   : Wed May 15 11:31:20 2013
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {jkff} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity jkff is
	 port(
		 j : in STD_LOGIC;
		 k : in STD_LOGIC;
		 reset : in STD_LOGIC;
		 clock_enable : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 output : out STD_LOGIC
	     );
end jkff;

--}} End of automatically maintained section

architecture behavior of jkff is
   signal temp: std_logic;
begin
   process (clk) 
   begin
      if rising_edge(clk) then                 
         if reset='1' then   
            temp <= '0';
         elsif clock_enable ='1' then
            if (J='0' and K='0') then
               temp <= temp;
            elsif (J='0' and K='1') then
               temp <= '0';
            elsif (J='1' and K='0') then
               temp <= '1';
            elsif (J='1' and K='1') then
               temp <= not (temp);
            end if;
         end if;
      end if;
   end process;
   output <= temp;	
	
end behavior;
