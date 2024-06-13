    LIBRARY ieee;
    USE ieee.std_logic_1164.all;

    entity StateMachine_ControlUnit is
        port
        (
            clock,reset: in std_logic;
            dv: in std_logic;

            RegSelA, RegWrA, RegWrB: out std_logic;
            RegALUop: out std_logic_vector(1 downto 0);
            RegPrState,RegNxState: out std_logic_vector(1 downto 0)
        );
    end entity;

    architecture behavior of StateMachine_ControlUnit is

    type states is (idle, load, store);
    signal PresentState, NextState: states;


    signal selA, wrA, wrB: std_logic;
    signal ALUop: std_logic_vector(1 downto 0);
    signal PrState,NxState: std_logic_vector(1 downto 0);

    begin

        process(clock,reset)
        begin
            
            if reset = '0' then
                PresentState <= idle;
            elsif rising_edge(clock) then
                PresentState <= NextState;
            end if;

        end process;

        process(PresentState,dv)
        begin
            case PresentState is
                when idle =>    
                                selA <= '0';
                                wrA <= '0';
                                wrB <= '0';
                                ALUop <= "01";
                                PrState <= "01";

                                if dv = '1' then
                                    NextState <= load;
                                    NxState <= "10";
                                else
                                    NextState <= idle;
                                    NxState <= "01";
                                end if;
                                
                                

                when load =>    selA <= '1';
                                wrA <= '1';
                                wrB <= '1';
                                ALUop <= "01";
                                PrState <= "10";
                                
                                NextState <= store;
                                NxState <= "11";

                when store =>   selA <= '0';
                                wrA <= '1';
                                wrB <= '0';
                                ALUop <= "11";
                                PrState <= "11";

                                NextState <= idle;
                                NxState <= "01";
            end case;
        end process;

        process(clock, reset)
        begin

        if reset = '0' then
            RegSelA <= '0';
            RegWrA <= '0';
            RegWrB <= '0';
            RegALUop <= "01";
        elsif rising_edge(clock) then
            RegSelA <= selA;
            RegWrA <= wrA;
            RegWrB <= wrB;
            RegALUop <= ALUop;

            RegPrState <= PrState;
            RegNxState <= NxState;

        end if;

        end process;

    end architecture;