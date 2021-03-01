LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_one IS
	PORT(
	 A,B,C : IN STD_LOGIC;
	 Q: OUT STD_LOGIC
	);
END test_one;
-----------------------------------
ARCHITECTURE test_arch OF test_one IS
	BEGIN
		Q <= (NOT ((NOT A) AND (B) AND (B NAND C))) OR ((B AND (B NAND C)) XOR (B AND C));
END test_arch; 