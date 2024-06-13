LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Sistema is
    port
    (
        clock,reset: in std_logic;
        InpA,InpB: in unsigned(3 downto 0);

        ALUout: buffer unsigned(4 downto 0);
        RegPrState,RegNxState: out std_logic_vector(1 downto 0)
    );
end entity;

architecture behavior of Sistema is

    component StateMachine_ControlUnit is
        port
        (
            clock,reset: in std_logic;
            dv: in std_logic;

            RegSelA, RegWrA, RegWrB: out std_logic;
            RegALUop: out std_logic_vector(1 downto 0);
            RegPrState,RegNxState: out std_logic_vector(1 downto 0)
        );
    end component;

    signal RegSelA, RegWrA, RegWrB: std_logic;
    signal RegALUop: std_logic_vector(1 downto 0);

    component blocoOperacional is
        port
        (
            InpA,InpB: in unsigned(3 downto 0);
            selA: in std_logic;
            wrA,wrB: in std_logic;
            ALUop: in std_logic_vector(1 downto 0);
				reset: in std_logic;

            ALUout: buffer unsigned(4 downto 0)
        );
    end component;

    component Mod8Counter is
        port
        (
            CLK,reset: in std_logic;
            dv: out std_logic
        );
    end component;
    signal dv: std_logic;

begin

    FSM01: StateMachine_ControlUnit port map(clock, reset, dv, RegSelA, RegWrA, RegWrB, RegALUop, RegPrState, RegNxState);
    blocoOp: blocoOperacional port map(InpA, InpB, RegSelA, RegWrA, RegWrB, RegALUop, reset, ALUout);
    m8c: Mod8Counter port map(clock, reset, dv);

end architecture;