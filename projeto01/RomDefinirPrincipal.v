module RomDefinirPrincipal (
    input wire clock,
    input wire[4:0] addr,

    output reg[7:0] dataOut
);

    reg[7:0] phrase [0:31];
    initial begin
        phrase[0] = "";
        phrase[1] = "";
        phrase[2] = "";
        phrase[3] = "";
        phrase[4] = "";
        phrase[5] = "";
        phrase[6] = "";
        phrase[7] = "";
        phrase[8] = "";
        phrase[9] = "";
        phrase[10] = "";
        phrase[11] = "";
        phrase[12] = "";
        phrase[13] = "";
        phrase[14] = "";
        phrase[15] = "";

        phrase[16] = "";
        phrase[17] = "";
        phrase[18] = "";
        phrase[19] = "";
        phrase[20] = "";
        phrase[21] = "";
        phrase[22] = "";
        phrase[23] = "";
        phrase[24] = "";
        phrase[25] = "";
        phrase[26] = "";
        phrase[27] = "";
        phrase[28] = "";
        phrase[29] = "";
        phrase[30] = "";
        phrase[31] = "";
    end
    always @(posedge clock ) begin
        dataOut <= phrase[addr];
    end
    
endmodule