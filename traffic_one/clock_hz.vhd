library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_hz is
	port
	(	
			clk_in: IN STD_LOGIC;
			clk_out: OUT STD_LOGIC
	);
end clock_hz;

architecture behavior of clock_hz is
	SIGNAL temp: STD_LOGIC := '0';
	SIGNAL counter: INTEGER := 1;

	BEGIN
		PROCESS(clk_in)
			BEGIN
				IF (clk_in'EVENT AND clk_in='1') THEN
					IF (counter = 25000000) THEN
						temp <= NOT(temp);
						counter <= 1;
					ELSE
						counter <= counter + 1;
					END IF;	
				END IF;
	END PROCESS;
	
	
	clk_out <= temp;
END behavior;