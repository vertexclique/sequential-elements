-------------------------------------------------------------------------------
--
-- Title       : nanddff
-- Design      : exercise1
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : nanddff.vhd
-- Generated   : Wed Mar  6 11:03:06 2013
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
--{entity {nanddff} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nanddff is
	 port(
		 a : IN BIT;
		 b : IN BIT;
		 clk : IN BIT;
		 q : OUT BIT
	     );
end nanddff;

--}} End of automatically maintained section

architecture behavior of nanddff is
	SIGNAL temporary : BIT;
begin

	temporary <= a NAND b;
	PROCESS (clk)
	BEGIN 
		IF (clk'EVENT AND clk='1') THEN q<=temporary;
		END IF;
	END PROCESS;
	
end behavior;
