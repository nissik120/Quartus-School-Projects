LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY jk_flip IS
	PORT(
			clk: IN STD_LOGIC; 
			j: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Qout, Qinv: BUFFER STD_LOGIC:='0'
		);
END jk_flip;

ARCHITECTURE behaviour OF jk_flip IS
	SIGNAL x, y: STD_LOGIC;
	BEGIN
		PROCESS(clk)
		BEGIN
		IF(clk'EVENT AND clk = '1') THEN
			CASE j IS
				WHEN "00"=> x<=Qout; y<=Qinv;
				WHEN "01"=> x<='0'; y<='1';
				WHEN "10"=> x<='1'; y<='0';
				WHEN "11"=> x<=Qinv; y<=Qout;
			END CASE;
		END IF;
		Qout<=x; Qinv<=y;
		END PROCESS;
END behaviour;