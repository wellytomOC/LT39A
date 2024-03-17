library ieee;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity saida is
    port
    (
        Data: in std_logic;
        Counter: in std_logic_vector(2 downto 0);

        ss: out std_logic_vector(6 downto 0);
        DataOut: out std_logic
    );
end entity;

architecture behavior of saida is

    component sevenSegDecoder is
        port(
            data: in std_logic_vector(3 downto 0);
            ss: out std_logic_vector(6 downto 0)
        );
    end component;
    signal FilledCounter: std_logic_vector(3 downto 0);

begin

    FilledCounter <= "0000" or Counter;

    ssd1: sevenSegDecoder port map(FilledCounter,ss);
    DataOut <= Data;

end architecture;