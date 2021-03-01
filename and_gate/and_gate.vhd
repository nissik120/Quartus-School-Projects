LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and_gate IS
	PORT(
			a, b: IN STD_LOGIC;
			y: OUT STD_LOGIC
		);
END and_gate;
------------------------------------------------------------------------
ARCHITECTURE and_arch OF and_gate IS
	BEGIN
		y<= a AND b;
END and_arch;