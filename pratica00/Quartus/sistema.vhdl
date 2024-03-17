library ieee;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sistema is
    port
    (
        CLK: in std_logic;
        D: in std_logic_vector(7 downto 0);
        En: in std_logic;

        DataOut: out std_logic;
        Counter: out std_logic_vector(2 downto 0)
    );
end entity;

architecture behavior of sistema is

    component DataRegister is 
        Port(
            CLK: in std_logic;
            D: in std_logic_vector(7 downto 0);
            Q: out std_logic_vector(7 downto 0)
        );
    end component;
    signal Q: std_logic_vector(7 downto 0);

    component Mux is
        port(
            DataIn: in std_logic_vector(7 downto 0);
            Sel: in std_logic_vector(2 downto 0);
            En: in std_logic;
            DataOut: out std_logic
        );
    end component;

    component Mod8Counter is
        port
        (
            CLK: in std_logic;
            RegisterClock: out std_logic;
            SelOut: out std_logic_vector(2 downto 0)
        );
    end component;
    signal RegisterClock: std_logic;
    signal SelOut: std_logic_vector(2 downto 0);

begin

    DR1: DataRegister port map(RegisterClock,D,Q);
    MX1: Mux port map(Q,SelOut,En,DataOut);
    M8C1: Mod8Counter port map(CLK,RegisterClock,SelOut);

    Counter <= SelOut;

end architecture;
