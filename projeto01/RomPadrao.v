module RomPadrao (
    input wire clock,
    input wire[4:0] addr,

    input  wire[3:0] TrUnit, TrTens,
    input wire[1:0] StateFlag,

    output reg[7:0] dataOut
);

    reg[7:0] phrase [0:31];
    initial begin
        phrase[0]  = "P";
        phrase[1]  = "r";
        phrase[2]  = ":";
        phrase[3]  = " ";
        phrase[4]  = "G";
        phrase[5]  = " ";
        phrase[6]  = "S";
        phrase[7]  = "e";
        phrase[8]  = ":";
        phrase[9]  = " ";
        phrase[10] = "R";
        phrase[11] = " ";
        phrase[12] = " ";
        phrase[13] = "X";
        phrase[14] = "Y";
        phrase[15] = "s";



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

    reg[7:0] SemaphoreColor [0:2];
    initial begin
        SemaphoreColor[0] = "R";
        SemaphoreColor[1] = "Y";
        SemaphoreColor[2] = "G";
    end

    reg[7:0] Numbers [0:9];
    initial begin
        Numbers[0] = "0";
        Numbers[1] = "1";
        Numbers[2] = "2";
        Numbers[3] = "3";
        Numbers[4] = "4";
        Numbers[5] = "5";
        Numbers[6] = "6";
        Numbers[7] = "7";
        Numbers[8] = "8";
        Numbers[9] = "9";
    end

    always @(*) begin
        case (StateFlag)
            2'd0: begin
                if(addr == 5'd4) dataOut = SemaphoreColor[2];
                else if(addr == 5'd10) dataOut = SemaphoreColor[0];
                else if(addr == 5'd13) dataOut = Numbers[TrTens];
                else if(addr == 5'd14) dataOut = Numbers[TrUnit];
                else dataOut = phrase[addr];

            end 

            2'd1: begin
                if(addr == 5'd4) dataOut = SemaphoreColor[1];
                else if(addr == 5'd10) dataOut = SemaphoreColor[0];
                else if(addr == 5'd13) dataOut = Numbers[TrTens];
                else if(addr == 5'd14) dataOut = Numbers[TrUnit];
                else dataOut = phrase[addr];
            end 

            2'd2: begin
                if(addr == 5'd4) dataOut = SemaphoreColor[0];
                else if(addr == 5'd10) dataOut = SemaphoreColor[2];
                else if(addr == 5'd13) dataOut = Numbers[TrTens];
                else if(addr == 5'd14) dataOut = Numbers[TrUnit];
                else dataOut = phrase[addr];
            end 

            2'd3: begin
                if(addr == 5'd4) dataOut = SemaphoreColor[0];
                else if(addr == 5'd10) dataOut = SemaphoreColor[1];
                else if(addr == 5'd13) dataOut = Numbers[TrTens];
                else if(addr == 5'd14) dataOut = Numbers[TrUnit];
                else dataOut = phrase[addr];
            end 

            default: begin
                dataOut = phrase[addr];
            end
        endcase
    end

   /* always @(posedge clock ) begin
        if(StateFlag == 2'd0)
        dataOut <= phrase[addr];
    end*/
    
endmodule