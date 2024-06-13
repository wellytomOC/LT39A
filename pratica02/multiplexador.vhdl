LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity multiplexador is
    port
    (
        Inp0,Inp1: in unsigned(3 downto 0);
        selA: in std_logic;

        OutMux: out unsigned(3 downto 0)
    );
end entity;

architecture behavior of multiplexador is

begin

with selA select
    OutMux <=   Inp0 when '0',
                Inp1 when others;

end architecture;