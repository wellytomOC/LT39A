library ieee;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity testMod8Counter is
end entity;

architecture behavior of testMod8Counter is

    component Mod8Counter is
        port
        (
            CLK: in std_logic;
            RegisterClock: out std_logic;
            SelOut: out std_logic_vector(2 downto 0)
        );
    end component;

    signal CLK: std_logic;
    signal RegisterClock: std_logic;
    signal SelOut: std_logic_vector(2 downto 0);

begin

    M8C: Mod8Counter port map(CLK,RegisterClock,SelOut);

    process
    begin

        for i in 0 to 50 loop
            CLK <= '0'; wait for 50 ns;
            CLK <= '1'; wait for 50 ns;
        end loop;

    end process;

end architecture;


