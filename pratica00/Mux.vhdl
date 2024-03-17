library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Mux is
    port(
        DataIn: in std_logic_vector(7 downto 0);
        Sel: in std_logic_vector(2 downto 0);
        En: in std_logic;
        DataOut: out std_logic
    );
end entity;

architecture behavior of Mux is

signal DataBuffer: std_logic;

begin

    with Sel select
    DataBuffer <=   DataIn(0) when "000",
                    DataIn(1) when "001",
                    DataIn(2) when "010",
                    DataIn(3) when "011",
                    DataIn(4) when "100",
                    DataIn(5) when "101",
                    DataIn(6) when "110",
                    DataIn(7) when "111",
                    '0' when OTHERS;

    DataOut <= DataBuffer when En = '0' else '0';

end architecture;
