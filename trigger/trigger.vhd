library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity trigger is
    Port (  clk : in STD_LOGIC;
			echo: in STD_LOGIC;
			trig : out STD_LOGIC
          );
end trigger;
----------------------------------------------------------
architecture trigger_arch of trigger is

begin
    process(clk)
    variable count: integer range 0 to 10000;
    variable sendTrig: std_logic := '1';
    variable echoPrev: std_logic:= '0';
    variable echoCurrent : std_logic:= '0';
    begin
        if (rising_edge(clk)) then
            if sendTrig = '1' then -- send 20us trig
                if count = 1000 then --20 us trig is completed, reset tmp signals for the new calculation
                    trig <= '0';
                    sendTrig := '0';
                    count := 0;
                else
                    trig <= '1';
                    count := count + 1;
                end if;
            elsif (sendTrig = '0') then

                --send trigger when echo goes down
				if echoPrev = '1' and echoCurrent = '0' then
						sendTrig := '1';
						count :=0;
						  
				end if;
				-----------------------------------------------
				if echo = '0' then
                    --send trigger after a certain period if echo=0
                    if count = 5899 then
						sendTrig := '1';
                        count := 0;
                    else
                        count := count + 1;
                    end if;                               
                end if;
				 
            end if;
            echoPrev := echoCurrent;
            echoCurrent := echo; 
        end if;      
    end process;
     

end trigger_arch;