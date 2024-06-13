LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity arquitetura is
    port
    (
        Clock50MHz, reset: in std_logic;
        InpA,InpB: in unsigned(3 downto 0);

        InpA_ssU,InpA_ssD: out std_logic_vector(6 downto 0);
        InpB_ssU,InpB_ssD: out std_logic_vector(6 downto 0);
        ALUOut_ssU,ALUOut_ssD: out std_logic_vector(6 downto 0);

        RegPrState,RegNxState: out std_logic_vector(1 downto 0)

    );
end entity;

architecture behavior of arquitetura is

    component entrada is
        port
        (
            Clock50MHz: in std_logic;
            InpA,InpB: in unsigned(3 downto 0);

            OutA,OutB: out unsigned(3 downto 0);
            Clock1Hz: out std_logic
        );
    end component;

    signal OutA,OutB: unsigned(3 downto 0);
    signal Clock1Hz: std_logic;

    component Sistema is
        port
        (
            clock,reset: in std_logic;
            InpA,InpB: in unsigned(3 downto 0);

            ALUout: buffer unsigned(4 downto 0);
            RegPrState,RegNxState: out std_logic_vector(1 downto 0)

        );
    end component;
    signal ALUout: unsigned(4 downto 0);


    component saida is
        port
        (
            InpA,InpB: in unsigned(3 downto 0);
            ALUOut: in unsigned(4 downto 0);

            InpA_ssU,InpA_ssD: out std_logic_vector(6 downto 0);
            InpB_ssU,InpB_ssD: out std_logic_vector(6 downto 0);
            ALUOut_ssU,ALUOut_ssD: out std_logic_vector(6 downto 0)
        );
    end component;

begin

    ent: entrada port map(Clock50MHz,InpA,InpB,OutA,OutB,Clock1Hz);
    sis: Sistema port map(Clock1Hz,reset,OutA,OutB,ALUOut,RegPrState,RegNxState);
    sai: saida   port map(InpA,InpB,ALUOut,InpA_ssU,InpA_ssD,InpB_ssU,InpB_ssD,ALUOut_ssU,ALUOut_ssD);

end architecture;