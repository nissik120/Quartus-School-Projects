LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY counter_even IS
	PORT(
	clk: IN STD_LOGIC;
	y: OUT INTEGER);
END counter_even;

ARCHITECTURE dataflow OF counter_even IS
	TYPE val_type IS (e0, e1, e2, e3, e4, e5, e6, e7, e8);
	SIGNAL state: val_type:=e0;
BEGIN
	PROCESS(clk)
		BEGIN
			IF (clk'event AND clk = '1') THEN
				CASE state IS 
					WHEN e0 => state<=e1;
					WHEN e1 => state<=e2;
					WHEN e2 => state<=e3;
					WHEN e3 => state<=e4;
					WHEN e4 => state<=e5;
					WHEN e5 => state<=e6;
					WHEN e6 => state<=e7;
					WHEN e7 => state<=e8;
					WHEN e8 => state<=e0;
				END CASE;
			END IF;
	END PROCESS;
y<= 18 WHEN state=e0 ELSE
	20 WHEN state=e1 ELSE
	22 WHEN state=e2 ELSE
	24 WHEN state=e3 ELSE
	26 WHEN state=e4 ELSE
	28 WHEN state=e5 ELSE
	30 WHEN state=e6 ELSE
	32 WHEN state=e7 ELSE
	34 WHEN state=e8;
	
END dataflow;