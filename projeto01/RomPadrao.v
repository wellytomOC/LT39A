module RomPadrao (
    input wire clock,
    input wire[4:0] addr,

    output reg[7:0] dataOut
);

    reg[7:0] phrase [0:31];
    initial begin
        phrase[0]  = "P";
        phrase[1]  = ":";
        phrase[2]  = " ";
        phrase[3]  = "G";
        phrase[4]  = " ";
        phrase[5]  = "X";
        phrase[6]  = "Y";

        phrase[7]  = " ";

        phrase[8]  = "S";
        phrase[9]  = ":";
        phrase[10] = " ";
        phrase[11] = "R";
        phrase[12] = " ";
        phrase[13] = "X";
        phrase[14] = "Y";
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