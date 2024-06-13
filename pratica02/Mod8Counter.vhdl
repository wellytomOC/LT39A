library ieee;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mod8Counter is
    port
    (
        CLK,reset: in std_logic;
        dv: out std_logic
    );
end entity;

architecture behavior of Mod8Counter is

begin

    process(CLK,reset)

    variable CountBuffer: std_logic_vector(2 downto 0);

    begin
        if(reset = '0') then
            CountBuffer := "000";
        elsif rising_edge(CLK) then
            CountBuffer := CountBuffer + 1;
        end if;

        if(CountBuffer >= 7) then
            dv <= '1';
        else
            dv <= '0';
        end if;
        
    end process;

end architecture;



