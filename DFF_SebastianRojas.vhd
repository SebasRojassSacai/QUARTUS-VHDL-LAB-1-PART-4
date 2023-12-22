--Sebastian Rojas
Library ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DFF_SebastianRojas IS
	PORT (D, Clock : IN STD_LOGIC;
				 Q : OUT STD_LOGIC );
END DFF_SebastianRojas;

Architecture Behavior OF DFF_SebastianRojas IS
BEGIN

	PROCESS (Clock)
	BEGIN
		IF (rising_edge(clock)) THEN
			Q <= D;
		END IF;
	END PROCESS;
END Behavior;

