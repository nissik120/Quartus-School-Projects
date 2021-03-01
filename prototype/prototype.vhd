LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY prototype IS
	PORT(
			clk,rst,sensor: IN STD_LOGIC;
			r1,r2: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
		);
END prototype;
-----------------------------------------------------------

ARCHITECTURE behaviour OF prototype IS
		TYPE state_type IS (s0, s1, s2, s3, s4, s5); 
		SIGNAL next_state: state_type;
		SIGNAL current_state : state_type:=s0;
		
		SIGNAL count: STD_LOGIC_VECTOR(4 DOWNTO 0); 
		CONSTANT SEC30: STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; 
		CONSTANT SEC10: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00101";
		CONSTANT ZERO: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";

	BEGIN
		response: PROCESS(clk, rst)
			BEGIN
				IF (rst='1') THEN
					current_state<=s0;
				ELSIF (rising_edge(clk)) THEN
					current_state<=next_state;				
						IF(sensor='0') THEN
							IF count < SEC10 THEN
								current_state<=s5;
								count<=count +1;
							ELSE
								current_state<=s0;
								count<=ZERO;
							END IF;
						ELSE
							CASE current_state IS
								WHEN s0 =>
									IF count < SEC30 THEN
									 current_state <= s0; 
									 count <= count + 1; 
									ELSE 
										current_state <= s1; 
										count <= ZERO; 
									END IF;
								WHEN s1 =>
									IF count < SEC10 THEN
									 current_state <= s1; 
									 count <= count + 1; 
									ELSE 
										current_state <= s2; 
										count <= ZERO; 
									END IF;
								WHEN s2 =>
									IF count < SEC10 THEN
									 current_state <= s2; 
									 count <= count + 1; 
									ELSE 
										current_state <= s3; 
										count <=ZERO; 
									END IF;
								WHEN s3 =>
									IF count < SEC30 THEN
									 current_state <= s3; 
									 count <= count + 1; 
									ELSE 
										current_state <= s4; 
										count <= ZERO; 
									END IF;
								WHEN s4 =>
									IF count < SEC10 THEN
									 current_state <= s4; 
									 count <= count + 1; 
									ELSE 
										current_state <= s0; 
										count <= ZERO; 
									END IF;
								WHEN s5 =>
									IF count < SEC10 THEN
									 current_state <= s5; 
									 count <= count + 1; 
									ELSE 
										current_state <= s0; 
										count <=ZERO; 
									END IF;
							END CASE;
						END IF;
				END IF;
		END PROCESS;
		
		output: PROCESS(current_state)
			BEGIN
				CASE current_state IS
					WHEN s0 =>r1<="001";r2<="100";
					WHEN s1 =>r1<="010";r2<="100";
					WHEN s2 =>r1<="100";r2<="100";
					WHEN s3 =>r1<="100";r2<="001";
					WHEN s4 =>r1<="100";r2<="010";
					WHEN s5 =>r1<="100";r2<="100";
				END CASE;
		END PROCESS;
		


END behaviour;