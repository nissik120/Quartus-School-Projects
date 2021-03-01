LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decimal_seven IS
	PORT(
			d0,d1,d2,d3,d4,d5,d6,d7,d8,d9 : IN STD_LOGIC;
			f: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END decimal_seven;
------------------------------------------------------------------------
ARCHITECTURE decimal_arch OF decimal_seven IS
	BEGIN
	   f <= "0000001" WHEN d0='1' ELSE
			"1001111" WHEN d1='1' ELSE
			"0010010" WHEN d2='1' ELSE
			"0000110" WHEN d3='1' ELSE
			"1001100" WHEN d4='1' ELSE
			"0100100" WHEN d5='1' ELSE
			"0100000" WHEN d6='1' ELSE
			"0001111" WHEN d7='1' ELSE
			"0000000" WHEN d8='1' ELSE
			"0000100" WHEN d9='1' ELSE
			"1111111";
		
END decimal_arch;