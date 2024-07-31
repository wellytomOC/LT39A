module saida(
    input wire[3:0] InputA,InputB,AluOut,

    output wire[6:0] InputASsdU,InputASsdD,
    output wire[6:0] InputBSsdU,InputBSsdD,
    output wire[6:0] AluOutSsdU,AluOutSsdD

);

DecoderSsd_4bits_Dec SsdInpA(InputA,InputASsdD,InputASsdU);
DecoderSsd_4bits_Dec SsdInpB(InputB,InputBSsdD,InputBSsdU);
DecoderSsd_4bits_Dec SsdAluOut(AluOut,AluOutSsdD,AluOutSsdU);

endmodule