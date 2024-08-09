module RomDefinirPrincipal (
    input wire clock,
    input wire[4:0] addr,

    output reg[7:0] dataOut
);

    reg[7:0] phrase [0:31];
    initial begin
        phrase[0]  = "D";
        phrase[1]  = "E";
        phrase[2]  = "F";
        phrase[3]  = "I";
        phrase[4]  = "N";
        phrase[5]  = "I";
        phrase[6]  = "R";
        phrase[7]  = " ";
        phrase[8]  = "P";
        phrase[9]  = "R";
        phrase[10] = "I";
        phrase[11] = "N";
        phrase[12] = "C";
        phrase[13] = ":";
        phrase[14] = " ";
        phrase[15] = " ";

        phrase[16] = "P";
        phrase[17] = ":";
        phrase[18] = "X";
        phrase[19] = "Y";
        phrase[20] = " ";
        phrase[21] = " ";
        phrase[22] = "S";
        phrase[23] = ":";
        phrase[24] = "X";
        phrase[25] = "Y";
        phrase[26] = " ";
        phrase[27] = " ";
        phrase[28] = "A";
        phrase[29] = ":";
        phrase[30] = "X";
        phrase[31] = "Y";
    end
    always @(posedge clock ) begin
        dataOut <= phrase[addr];
    end
    
endmodule