--Sebastian Rojas
Library ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY Register_1bit_SebastianRojas IS
	PORT ( D, Clock, load     : IN STD_LOGIC;
		   Q                  : INOUT STD_LOGIC );
END Register_1bit_SebastianRojas;

Architecture Behavior OF Register_1bit_SebastianRojas IS

BEGIN
	Process (load)
	Begin
		IF (RISING_EDGE(Clock)) THEN
			IF (load = '1') THEN
				Q <= D;
			END IF;
		END IF;
	END Process;
END Behavior;

	