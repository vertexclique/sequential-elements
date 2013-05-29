-------------------------------------------------------------------------------
--
-- Title       : tff
-- Design      : examples
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : tflipflop.vhd
-- Generated   : Wed May 15 10:40:51 2013
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
--{entity {tff} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tff is
	 port(
		 clk : in STD_LOGIC;
		 reset : in STD_LOGIC;	
		 clock_enable: in std_logic;
		 tin : in STD_LOGIC;
		 o : out STD_LOGIC
	     );
end tff;

--}} End of automatically maintained section

architecture behavior of tff is
   signal temp: std_logic;
begin
   process (clk) 
   begin
      if rising_edge(clk) then                 
         if reset='1' then   
            temp <= '0';
         elsif clock_enable ='1' then
            if tin='0' then
               temp <= temp;
            elsif tin='1' then
               temp <= not (temp);
            end if;
         end if;
      end if;
   end process;
   o <= temp;
end behavior;
