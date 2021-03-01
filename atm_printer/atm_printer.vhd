LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY atm_printer IS
	PORT(
	clk, q, r, b: IN STD_LOGIC;
	s, t: OUT STD_LOGIC
	);
END atm_printer;

ARCHITECTURE arch OF atm_printer IS
	TYPE mode_type IS (m1, m2, m3, m4);
	SIGNAL mode: mode_type:=m1;
 BEGIN
	state_control: PROCESS(clk,q,r,b)
		BEGIN
		 IF (clk'EVENT AND clk = '1') THEN
			CASE mode IS
				WHEN m1 =>
					IF (q='1') THEN
						mode<=m2;
					ELSE
						mode<=m1;
					END IF;
				WHEN m2 => 
					IF (r='1') THEN
						mode<=m3;
					ELSE
						mode<=m2;
					END IF;
				WHEN m3=> 
					IF (b='1') THEN
						mode<=m4;
					ELSIF (r='0') THEN
						mode<=m1;
					ELSE
						mode<=m3;
					END IF;
				WHEN m4 => 
					IF (r='0') THEN
						mode<=m2;
					ELSE
						mode<=m4;
					END IF;
			END CASE;
		 END IF;
	END PROCESS state_control;
	
	output_control: PROCESS(mode)
		BEGIN
			CASE mode IS
				WHEN m1=>
					s<='0';
					t<='0';
				WHEN m2=>
					s<='1';
					t<='0';
				WHEN m3=>
					s<='1';
					t<='1';
				WHEN m4 =>
					s<='1';
					t<='0';
			END CASE;
	END PROCESS output_control;

END arch;