library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divider_50 is
	port(rst    : in  std_logic;  -- reset controller
    	 clk_in : in  std_logic;  -- input frecuency
    	 clk_out: out std_logic); -- output frequency
end divider_50;

architecture behavior of divider_50 is
	signal r_reg, r_next: unsigned (5 downto 0);
begin
	-- r_reg setting
	process(clk_in,rst)
    begin
    	if rst='0' then r_reg<=(others=>'0');
        elsif falling_edge(clk_in) then r_reg<=r_next;
        end if;
    end process;
    -- next state logic
    r_next <= (others=>'0') when r_reg=49 else
    		  r_reg+1;
    -- clk_out setting
    clk_out <= '1' when r_reg=49 else
    	   	   '0';
end behavior;