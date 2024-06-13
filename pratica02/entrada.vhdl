library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity entrada is
    port
    (
        Clock50MHz: in std_logic;
        InpA,InpB: in unsigned(3 downto 0);

        OutA,OutB: out unsigned(3 downto 0);
        Clock1Hz: out std_logic
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

    OutA <= InpA;
    OutB <= InpB;
    CD01: ClockDivider port map (Clock50MHz, Clock1Hz);

end architecture;