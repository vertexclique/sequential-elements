-------------------------------------------------------------------------------
--
-- Title       : dflipflop
-- Design      : exercise1
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : exercise2.vhd
-- Generated   : Wed Mar  6 10:25:15 2013
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
--{entity {dflipflop} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dflipflop is
	 port(
		 d : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 rst : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end dflipflop;

--}} End of automatically maintained section

architecture behavior of dflipflop is
begin
	PROCESS (rst, clk)
	BEGIN
		IF (rst='1') THEN
			q <= '0';
		ELSIF (clk'EVENT AND clk='1') THEN
			q <= d;
		END IF;	
	END PROCESS;
end behavior;
