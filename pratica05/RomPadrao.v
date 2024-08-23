module RomPadrao (
    input wire clock,
    input wire[4:0] addr,

    output reg[7:0] dataOut
);

    reg[7:0] phrase [0:31];
    initial begin
        phrase[0]  = "A";
        phrase[1]  = "i";
        phrase[2]  = "n";
        phrase[3]  = ":";
        phrase[4]  = "X";		// Dezena Address
        phrase[5]  = "X";		// Unidade Address
        phrase[6]  = " ";
        phrase[7]  = " ";
        phrase[8]  = "S";
        phrase[9]  = "t";
        phrase[10] = "a";
        phrase[11] = "t";
        phrase[12] = "e";
        phrase[13] = ":";
        phrase[14] = "Y";		// R ou W
        phrase[15] = " ";



        phrase[16] = "D";
        phrase[17] = "i";
        phrase[18] = "n";
        phrase[19] = ":";
        phrase[20] = "X";		// Dezena DataTeclado
        phrase[21] = "X";		// Unidade DataTeclado
        phrase[22] = " ";
        phrase[23] = " ";
        phrase[24] = "D";
        phrase[25] = "o";
        phrase[26] = "u";
        phrase[27] = "t";
        phrase[28] = ":";
        phrase[29] = "Y";		// Dezena DataMemoria
        phrase[30] = "Y";		// Unidade DataMemoria
        phrase[31] = " ";
    end


    always @(posedge clock ) begin
        dataOut <= phrase[addr];
    end
    
endmodule