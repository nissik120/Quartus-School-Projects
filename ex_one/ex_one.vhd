-----------VHDL FOR QUESTION A-------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex_one IS
	PORT(
		 A,B,C : IN STD_LOGIC;
		 X: OUT STD_LOGIC
		 );
END ex_one;
---------------------------------------------------------
ARCHITECTURE dataflow OF ex_one IS
	BEGIN
		PROCESS(A,B,C)
			BEGIN
			X<= ((NOT A) AND B AND C) OR (A AND (NOT B) AND (NOT C));
		END PROCESS;
END dataflow;