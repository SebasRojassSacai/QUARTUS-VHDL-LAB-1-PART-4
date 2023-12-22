library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Create a 16-bit register by instantiating 16 instances of the 1-bit register
entity Register_16bit_SebastianRojas is
    Port (
        D_in    : in STD_LOGIC_VECTOR(15 downto 0);
        Clock   : in STD_LOGIC;
        load    : in STD_LOGIC;
        Q_out   : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Register_16bit_SebastianRojas;

architecture Behavioral of Register_16bit_SebastianRojas is
    signal Q_bits : STD_LOGIC_VECTOR(15 downto 0);

    -- Component declaration for the 1-bit register
    component Register_1bit_SebastianRojas
        Port (
            D     : in STD_LOGIC;
            Clock : in STD_LOGIC;
            load  : in STD_LOGIC;
            Q     : inout STD_LOGIC
        );
    end component Register_1bit_SebastianRojas;

begin
    -- Instantiate 16 instances of the 1-bit register
    registers: for i in 0 to 15 generate
        register_i: Register_1bit_SebastianRojas
        port map (
            D     => D_in(i),
            Clock => Clock,
            load  => load,
            Q     => Q_bits(i)
        );
    end generate;

    -- Assign the 16-bit output
    Q_out <= Q_bits;
end Behavioral;