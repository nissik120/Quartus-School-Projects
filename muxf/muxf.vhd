LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY muxf IS
	PORT(
		a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		clk : IN STD_LOGIC;
		f : OUT STD_LOGIC
	);
END muxf;
------------------------------------------------------


ARCHITECTURE mux_arch OF muxf IS
	SIGNAL b: STD_LOGIC:='0';
	SIGNAL c: INTEGER:=0; 
	BEGIN
		PROCESS(clk,c)
			BEGIN
			IF (clk'EVENT AND clk ='1' AND c<=7) THEN
				b <= a(c);
				c <= c+1;
			ELSIF (clk'EVENT AND clk ='1' AND c>7) THEN
				c<=0;
				b <= a(c);
				c<=1;
			END IF;
		END PROCESS;
		f<=b;
	END mux_arch;
			
