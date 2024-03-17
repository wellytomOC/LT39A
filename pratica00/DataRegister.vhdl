library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DataRegister is 
    Port(
        CLK: in std_logic;
        D: in std_logic_vector(7 downto 0);
        Q: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavior of DataRegister is 

begin

    Process(CLK) 
    begin
        if(CLK'event and CLK='1') then
            Q <= D;
        end if;

    end Process;
    
end architecture;
