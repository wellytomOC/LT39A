library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity sevenSegDecoder is
	port(
		data: in std_logic_vector(3 downto 0);
		ss: out std_logic_vector(6 downto 0)
	);
end entity;

architecture behavior of sevenSegDecoder is

begin

	ss <= 	"1000000" when data = x"0" else
			"1111001" when data = x"1" else
			"0100100" when data = x"2" else
			"0110000" when data = x"3" else
			"0011001" when data = x"4" else
			"0010010" when data = x"5" else
			"0000010" when data = x"6" else
			"1111000" when data = x"7" else
			"0000000" when data = x"8" else
			"0011000" when data = x"9" else
			"0001000" when data = x"a" else --invertidos
			"1100000" when data = x"b" else
			"0110001" when data = x"c" else
			"1000010" when data = x"d" else
			"0110000" when data = x"e" else
			"0111000";
end architecture;


