LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity registrador is
    port
    (
        DataIn: in unsigned(3 downto 0);
        clock, reset: in std_logic;

        DataOut: out unsigned(3 downto 0)
    );
end entity;

architecture behavior of registrador is

begin

    process(clock,reset)
    begin
        if(reset = '0') then
            DataOut <= "0000";
        elsif rising_Edge(clock) then
            DataOut <= DataIn;
        end if;
    end process;


end architecture;