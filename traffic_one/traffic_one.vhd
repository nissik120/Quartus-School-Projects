LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity traffic_one is
    Port (  clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			echo: in STD_LOGIC;
			trig : out STD_LOGIC;
			rob_a,rob_b: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
          );
end traffic_one;
----------------------------------------------------------
architecture structural of traffic_one is
	component clock_hz is
	port
	(	
			clk_in: IN STD_LOGIC;
			clk_out: OUT STD_LOGIC
	);
	end component;
	
	component trigger is
		Port (  
          clk : in STD_LOGIC;
		  echo: in STD_LOGIC;
		  trig : out STD_LOGIC
          );
	end component;
	component prototype is
		Port(
			clk,rst,sensor: IN STD_LOGIC;
			r1,r2: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
		);
	end component;
	signal clk_hz  : STD_LOGIC;
	
	begin
		U1: clock_hz PORT MAP(clk, clk_hz);
		U2: trigger PORT MAP(clk,echo,trig);
		U3: prototype PORT MAP (clk_hz,rst,echo,rob_a,rob_b);
	
end structural;