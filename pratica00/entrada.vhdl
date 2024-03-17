library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity entrada is
    port
    (
        Clock: in std_logic;
        DataInput: in std_logic_vector(7 downto 0);

        DataOutput: out std_logic_vector(7 downto 0);
        ClockDivided: out std_logic
    );
end entity;

architecture behavior of entrada is

component ClockDivider is
	port
    (
        clk: in std_logic;
		clock_out: out std_logic
    );
end component;

begin

    DataOutput <= DataInput;
    CD01: ClockDivider port map (Clock, ClockDivided);

end architecture;