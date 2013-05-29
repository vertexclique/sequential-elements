-------------------------------------------------------------------------------
--
-- Title       : counter
-- Design      : examples
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : counter.vhd
-- Generated   : Wed May 22 10:50:54 2013
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
--{entity {counter} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity counter is
	 port(
		 clk : in STD_LOGIC;
		 Bcd_Number : out integer
	     );
end counter;

--}} End of automatically maintained section

architecture behavior of counter is
begin

process (clk)  
variable counter:integer :=0;
begin	

if clk'event and clk='1' then 
	 
counter:=counter+1;

	if counter = 10 then 
	   counter:= 0;
	end if;			
	
Bcd_Number<=counter;	

end if;	 
end process;
end behavior;

