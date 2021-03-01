LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY bcd_count IS
	PORT(
			clk_a, rst_a : IN STD_LOGIC;
			b: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
END bcd_count;
-------------------------------------------------------
ARCHITECTURE behavioral OF bcd_count IS
	SIGNAL c: STD_LOGIC_VECTOR(3 DOWNTO 0):="0000"; 
	BEGIN
		PROCESS(clk_a, rst_a)
			VARIABLE a: STD_LOGIC_VECTOR(3 DOWNTO 0):=c;
			BEGIN
				IF(clk_a'EVENT AND clk_a ='1') THEN
					IF(rst_a ='1') THEN
						a:="0000";
					ELSE
						a:=a+1;
					END IF;
					c<=a;
				END IF;
			END PROCESS;
			b<=c;
END behavioral;