library ieee;
use ieee.std_logic_1164.all;

entity clock50 is
	port(
	 a: in std_logic;
	 y: buffer std_logic
	);
end clock50;
-------------------------------------------------------------------

architecture dataflow of clock50 is
	component my_counter is
	port(
			clock		: IN STD_LOGIC ;
			clock_1hz : OUT STD_LOGIC
		);
	end component;
	signal clk: std_logic;
	
	begin
		clkdiv: my_counter PORT MAP (a,clk);
	process(clk)
	begin
		if(rising_edge(clk)) then
			y<= NOT(y);
		end if;
	end process;
end dataflow;