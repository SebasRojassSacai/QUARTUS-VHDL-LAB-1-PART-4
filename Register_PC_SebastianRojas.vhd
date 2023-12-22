--Sebastian Rojas
Library ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY Register_PC_SebastianRojas IS
	PORT( D                        : IN    STD_LOGIC_VECTOR(15 downto 0);
		  load, inc, reset, Clock  : IN    STD_LOGIC;
		  Q			               : INOUT STD_LOGIC_VECTOR(15 downto 0) );
END Register_PC_SebastianRojas;

ARCHITECTURE Behavioral OF Register_PC_SebastianRojas IS
BEGIN
    process(Clock)
    begin
        if rising_edge(Clock) then
            if reset = '1' then
                Q <= (others => '0');
            elsif load = '1' then
                Q <= D;
            elsif inc = '1' then
                Q <= Q + 1;
            end if;
        end if;
    end process;
end Behavioral;