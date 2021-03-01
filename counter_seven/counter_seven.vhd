LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY counter_seven IS
	PORT(
		x: IN STD_LOGIC;
		y: OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END counter_seven;
-----------------------------------------------

ARCHITECTURE counter_arch OF counter_seven IS
	SIGNAL c: INTEGER RANGE 0 TO 15:=0;  
		BEGIN
		count: PROCESS(x)
			VARIABLE a: INTEGER RANGE 0 TO 15:=c;
			BEGIN
				IF(x'EVENT AND x ='1') THEN
					IF(a > 14) THEN
						a:=0;
					ELSE
						a:=a+1;
					END IF;
					c<=a;
				END IF;
			END PROCESS count;
			
		decoder: PROCESS(c)
				BEGIN
					CASE c IS
						WHEN 0 => y <="0000001";
						WHEN 1 => y <="1001111";
						WHEN 2 => y <="0010010";
						WHEN 3 => y <="0000110";
						WHEN 4 => y <="1001100";
						WHEN 5 => y <="0100100";
						WHEN 6 => y <="0100000";
						WHEN 7 => y <="0001111";
						WHEN 8 => y <="0000000";
						WHEN 9 => y <="0000100";
						WHEN OTHERS => y <="0011000";
					END CASE;
				END PROCESS decoder;
END counter_arch;
					
					
		