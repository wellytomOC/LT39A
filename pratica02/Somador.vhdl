LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Somador is
    port
    (
        A,B: in unsigned(3 downto 0);

        Sum: out unsigned(4 downto 0)
    );
end entity;

architecture behavior of Somador is

begin


    Sum <= ("0" & A) + ("0" & B);


end architecture;