library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity SevenSegmentsDecoder_4bitsToDec is
    port(
        A: in unsigned(3 downto 0);
        ssA0,ssA1: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of SevenSegmentsDecoder_4bitsToDec is

    signal decimalTemp: integer range 0 to 999;
    signal unidades, dezenas: integer range 0 to 9;

begin

    decimalTemp <= to_integer(A);
    
    dezenas <= (decimalTemp) / 10;
    unidades <= decimalTemp - dezenas * 10;

    ssA1 <= "1000000" when dezenas = 0 else
            "1111001" when dezenas = 1 else
            "0100100" when dezenas = 2 else
            "0110000" when dezenas = 3 else
            "0011001" when dezenas = 4 else
            "0010010" when dezenas = 5 else
            "0000010" when dezenas = 6 else
            "1111000" when dezenas = 7 else
            "0000000" when dezenas = 8 else
            "0011000";

	ssA0 <= 	"1000000" when unidades = 0 else
            "1111001" when unidades = 1 else
            "0100100" when unidades = 2 else
            "0110000" when unidades = 3 else
            "0011001" when unidades = 4 else
            "0010010" when unidades = 5 else
            "0000010" when unidades = 6 else
            "1111000" when unidades = 7 else
            "0000000" when unidades = 8 else
            "0011000";

end architecture;
