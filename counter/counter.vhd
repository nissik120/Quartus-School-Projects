LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY counter IS
	PORT(
			clk, rst : IN STD_LOGIC;
			q: OUT STD_LOGIC_VECTOR(0 TO 6)
		);
END counter;

ARCHITECTURE structural OF counter IS
	COMPONENT bcd_count IS
		PORT(	clk_a, rst_a : IN STD_LOGIC;
				b: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
	END COMPONENT;
	COMPONENT bcd_seven IS
		PORT(
				a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				y: OUT STD_LOGIC_VECTOR(0 TO 6)
			);
	END COMPONENT;
	SIGNAL x: STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
		U1: bcd_count PORT MAP(clk, rst, x);
		U2: bcd_seven PORT MAP (x, q);
END structural;