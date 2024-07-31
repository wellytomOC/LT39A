module Arquitetura (
    input wire[3:0]InputA, InputB,
    input wire clock50Mhz, reset,

    output wire[2:0] PrStateLed,NxStateLed,
    output wire[6:0] InputASsdU,InputASsdD,
    output wire[6:0] InputBSsdU,InputBSsdD,
    output wire[6:0] AluOutSsdU,AluOutSsdD
);

wire clock1Hz;
entrada entrada01(clock50Mhz, reset, clock1Hz);

wire[3:0] AluOut;
sistema sistema01(clock1Hz, reset, InputA, InputB, AluOut, PrStateLed, NxStateLed);

saida saida01(InputA, InputB, AluOut, InputASsdU, InputASsdD, InputBSsdU, InputBSsdD, AluOutSsdU, AluOutSsdD);

endmodule