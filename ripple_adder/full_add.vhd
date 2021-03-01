LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_add IS
	PORT(
			a, b, c : IN STD_LOGIC;
			s, cr: OUT STD_LOGIC
		);
END full_add;

ARCHITECTURE structural OF full_add IS
	COMPONENT half_adder IS
	PORT(
			a,b: IN STD_LOGIC;
			s, c: OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT or_function IS
	PORT(
			a, b: IN STD_LOGIC;
			y: OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL W, Cout, X: STD_LOGIC;
	BEGIN
		U1: half_adder PORT MAP(a, b, W, Cout);
        U2: half_adder PORT MAP(W, c, s, X);
		U3: or_function PORT MAP (X, Cout,cr);
END structural;