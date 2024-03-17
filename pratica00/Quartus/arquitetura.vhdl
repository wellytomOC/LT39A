library ieee;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity arquitetura is
    port
    (
        Clock: in std_logic;
        DataInput: in std_logic_vector(7 downto 0);
        En: in std_logic;

        ss: out std_logic_vector(6 downto 0);
        DataOutOut: out std_logic
    );
end entity;

architecture behavior of arquitetura is

    component entrada is
        port
        (
            Clock: in std_logic;
            DataInput: in std_logic_vector(7 downto 0);

            DataOutput: out std_logic_vector(7 downto 0);
            ClockDivided: out std_logic
        );
    end component;
    signal DataOutput: std_logic_vector(7 downto 0);
    signal ClockDivided: std_logic;

    component sistema is
        port
        (
            CLK: in std_logic;
            D: in std_logic_vector(7 downto 0);
            En: in std_logic;

            DataOut: out std_logic;
            Counter: out std_logic_vector(2 downto 0)
        );
    end component;
    signal DataOut: std_logic;
    signal Counter: std_logic_vector(2 downto 0);

    component saida is
        port
        (
            Data: in std_logic;
            Counter: in std_logic_vector(2 downto 0);

            ss: out std_logic_vector(6 downto 0);
            DataOut: out std_logic
        );
    end component;

begin

ent: entrada    port map(Clock,DataInput,DataOutput,ClockDivided);
sis: sistema    port map(ClockDivided,DataOutput,En,DataOut,Counter);
sai: saida      port map(DataOut,Counter,ss,DataOutOut);

end architecture;
