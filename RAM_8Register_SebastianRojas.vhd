-- Sebastian Rojas
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_8Register_SebastianRojas is
    port (
        D       : in  std_logic_vector(15 downto 0);
        load    : in  std_logic;
        clock   : in  std_logic;
        address : in  std_logic_vector(2 downto 0);
        Q       : out std_logic_vector(15 downto 0)
    );
end RAM_8Register_SebastianRojas;

architecture Behavior of RAM_8Register_SebastianRojas is
    type Array8x16 is array (7 downto 0) of std_logic_vector(15 downto 0);
    signal RAM : Array8x16;
begin
    process (clock)
    begin
        if rising_edge(clock) then
            if load = '1' then
                for i in 0 to 7 loop
                    if address = std_logic_vector(to_unsigned(i, 3)) then
                        RAM(i) <= D;
                    end if;
                end loop;
                Q <= D;
            else
                for i in 0 to 7 loop
                    if address = std_logic_vector(to_unsigned(i, 3)) then
                        Q <= RAM(i);
                    end if;
                end loop;
            end if;
        end if;
    end process;
end Behavior;