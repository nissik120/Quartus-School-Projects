LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_adder IS
	PORT(
			a,b,cin: IN STD_LOGIC;
			s,cout: OUT STD_LOGIC
		);
END full_adder;

----------------------------------------
ARCHITECTURE dataflow OF full_adder IS
	BEGIN
		s<=a XOR b XOR cin;
		cout<= (a AND B) OR (a AND cin) OR (b AND cin);
END dataflow;