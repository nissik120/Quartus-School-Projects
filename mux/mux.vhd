LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS
	PORT(
			sw: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			F : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
END mux;
-----------------------------------------------
ARCHITECTURE mux_arch OF mux IS
	SIGNAL a, b, c, d : STD_LOGIC_VECTOR(1 DOWNTO 0);
	BEGIN
		a<="11";
		b<="10";
		c<="01";
		d<="00";	
	WITH sw SELECT
		F<= a WHEN "00",
			b WHEN "01",
			c WHEN "10",
			d WHEN OTHERS;
END mux_arch;