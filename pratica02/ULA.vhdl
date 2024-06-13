LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity ULA is
    port
    (
        A,B: in unsigned(3 downto 0);
        ALUop: in std_logic_vector(1 downto 0);

        ALUout: out unsigned(4 downto 0)
    );
end entity;

architecture behavior of ULA is

component Somador is
    port
    (
        A,B: in unsigned(3 downto 0);

        Sum: out unsigned(4 downto 0)
    );
end component;

signal Sum: unsigned(4 downto 0);

begin

    sum01: Somador port map(A,B,Sum);

    with ALUop select ALUout <=
        "00000" when "00",
        ("0" & A)       when "01",
        ("0" & B)       when "10",
        Sum     when "11";

end architecture;