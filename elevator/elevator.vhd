LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY elevator IS
	PORT(
	r: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	y: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END elevator;

ARCHITECTURE dataflow OF elevator IS
	TYPE floor_type IS (s1, s2, s3);
	SIGNAL floor: floor_type:=s1;
 BEGIN
	state_control: PROCESS(r)
	  BEGIN
	   IF(r="01") THEN
		 CASE floor IS
			WHEN s1 => floor<=s1;
			WHEN s2 => floor<=s1;
			WHEN s3 => floor<=s1;
		END CASE;
	  ELSIF(r="10") THEN
		 CASE floor IS
			WHEN s1 => floor<=s2;
			WHEN s2 => floor<=s2;
			WHEN s3 => floor<=s2;
		END CASE;
	  ELSIF (r="11") THEN
		  CASE floor IS 
			WHEN s1 => floor<=s3;
			WHEN s2 => floor<=s3;
			WHEN s3 => floor<=s3;
		END CASE;
	END IF;
END PROCESS state_control;
		 
output_control: PROCESS(floor, r)
	BEGIN
		CASE floor IS
			WHEN s1=>
				IF r="01" THEN
					y<="111";
				ELSIF r="10" THEN
					y<="011"
				ELSE
					y<="100";
				END IF;
			WHEN s2=>
				IF r="01" THEN
					y<="111";
				ELSIF r="10" THEN
					y<="111"
				ELSE
					y<="100";
				END IF;
			WHEN s3=>
				IF r="01" THEN
					y<="111";
				ELSIF r="10" THEN
					y<="011"
				ELSE
					y<="111";
				END IF;
		END CASE;
END PROCESS output_control;
			