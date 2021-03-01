LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_seven IS
	PORT(
			a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y: OUT STD_LOGIC_VECTOR(0 TO 6)
		);
END bcd_seven;
--------------------------------------------------
ARCHITECTURE behavioral OF bcd_seven IS
	BEGIN
		PROCESS(a)
			BEGIN
				CASE a IS
					WHEN "0000" => y <="0000001";
					WHEN "0001" => y <="1001111";
					WHEN "0010"=> y <="0010010";
					WHEN "0011"=> y <="0000110";
					WHEN "0100"=> y <="1001100";
					WHEN "0101"=> y <="0100100";
					WHEN "0110"=> y <="0100000";
					WHEN "0111"=> y <="0001111";
					WHEN "1000"=> y <="0000000";
					WHEN "1001"=> y <="0000100";
					WHEN OTHERS => y <="0011000";
			END CASE;
	END PROCESS;
END behavioral;