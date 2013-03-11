-------------------------------------------------------------------------------
--
-- Title       : basiccomparator
-- Design      : units
-- Author      : Mahmut Bulut
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : 2-3-basiccomparator.vhd
-- Generated   : Mon Mar 11 05:44:31 2013
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
--{entity {basiccomparator} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_SIGNED.all;

entity basiccomparator is
	 port(
		 a : in SIGNED(7 downto 0);
		 b : in SIGNED(7 downto 0);
		 x1 : out STD_LOGIC;
		 x2 : out STD_LOGIC;
		 x3 : out STD_LOGIC
	     );
end basiccomparator;

--}} End of automatically maintained section

architecture behavior of basiccomparator is
begin

	-- signed first
	x1 <= '1' when a>b else '0';
	x2 <= '1' when a=b else '0';
	x3 <= '1' when a<b else '0';
	 
	 
end behavior;
