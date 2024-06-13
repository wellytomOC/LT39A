library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity saida is
    port
    (
        InpA,InpB: in unsigned(3 downto 0);
        ALUOut: in unsigned(4 downto 0);

        InpA_ssU,InpA_ssD: out std_logic_vector(6 downto 0);
        InpB_ssU,InpB_ssD: out std_logic_vector(6 downto 0);
        ALUOut_ssU,ALUOut_ssD: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of saida is

    component SevenSegmentsDecoder_4bitsToDec is
        port(
            A: in unsigned(3 downto 0);
            ssA0,ssA1: out std_logic_vector(6 downto 0)
        );
    end component;

    component SevenSegmentsDecoder_5bitsToDec is
        port(
            A: in unsigned(4 downto 0);
            ssA0,ssA1: out std_logic_vector(6 downto 0)
        );
    end component;

begin

    outA: SevenSegmentsDecoder_4bitsToDec port map(inpA,InpA_ssU,InpA_ssD);
    outB: SevenSegmentsDecoder_4bitsToDec port map(InpB,InpB_ssU,InpB_ssD);
    outALU: SevenSegmentsDecoder_5bitsToDec port map(ALUOut,ALUOut_ssU,ALUOut_ssD);

end architecture;