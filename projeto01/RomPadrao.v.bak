module RomPadrao (
    input wire clock,
    input wire[4:0] addr,

    output reg[7:0] dataOut
);

    reg[7:0] phrase [0:31];
    initial begin
        phrase[0]  = "P";
        phrase[1]  = "r";
        phrase[2]  = "i";
        phrase[3]  = "n";
        phrase[4]  = "c";
        phrase[5]  = ".";
        phrase[6]  = ":";
        phrase[7]  = " ";

        phrase[8]  = "R";
        phrase[9]  = "E";
        phrase[10] = "D";

        phrase[11] = "";
        phrase[12] = "";
        phrase[13] = "X";
        phrase[14] = "Y";
        phrase[15] = "s";



        phrase[16] = "S";
        phrase[17] = "e";
        phrase[18] = "c";
        phrase[19] = "u";
        phrase[20] = "n";
        phrase[21] = ".";
        phrase[22] = ":";
        phrase[23] = " ";

        phrase[24] = "G";
        phrase[25] = "R";
        phrase[26] = "N";

        phrase[27] = "";
        phrase[28] = "";
        phrase[29] = "X";
        phrase[30] = "Y";
        phrase[31] = "s";
    end
    always @(posedge clock ) begin
        dataOut <= phrase[addr];
    end
    
endmodule