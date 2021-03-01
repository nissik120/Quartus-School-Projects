LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab IS
	PORT(
			h,i,j,k : IN STD_LOGIC;
			a,b,c,d,e,f,g: OUT STD_LOGIC
		);
END lab;

------------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE code OF lab IS
	BEGIN
		a <= ((NOT h) AND (NOT i) AND (NOT j) AND k) OR ((NOT h) AND (NOT k) AND (NOT j) AND i);
		
		b <= (i AND (NOT j) AND k) OR (i AND j AND (NOT k)) OR (h AND i) OR (h AND j);
		
		c <= ((NOT i) AND j AND (NOT k)) OR (h AND i) OR (h AND j);
		d <= ((NOT h) AND (NOT i) AND (NOT j) AND k) OR ((NOT h) AND (NOT k) AND (NOT j) AND i) OR ((NOT h) AND i AND j AND k);
		e <= ((NOT h) AND i AND (NOT j)) OR ((NOT h) AND k) OR ((NOT i) AND (NOT j) AND k);
		f <= ((NOT h) AND (NOT i) AND j) OR ((NOT h) AND (NOT i) AND k) OR ((NOT h) AND j AND k);
		g <= ((NOT h) AND (NOT i) AND (NOT j)) OR ((NOT h) AND i AND j AND k);
END code;