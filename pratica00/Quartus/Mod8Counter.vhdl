library ieee;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mod8Counter is
    port
    (
        CLK: in std_logic;
        RegisterClock: out std_logic;
        SelOut: out std_logic_vector(2 downto 0)
    );
end entity;

architecture behavior of Mod8Counter is

begin

    process(CLK)

    variable CountBuffer: std_logic_vector(2 downto 0);

    begin

        if(CLK'event and CLK='1') then
            CountBuffer := CountBuffer + 1;
        end if;

        if(CountBuffer >= 7) then
            RegisterClock <= '1';
        else
            RegisterClock <= '0';
        end if;

    SelOut <= CountBuffer;
        
    end process;

end architecture;



