module RowColEncoder (
    input wire[1:0] RowOut, ColOut,

    output reg[3:0] dataConverted
);
    wire[3:0]RowCol;
    assign RowCol[3:2] = RowOut;
    assign RowCol[1:0] = ColOut;

    always @(*) begin
        case (RowCol)
            4'b0000: dataConverted = 4'd1;
            4'b0001: dataConverted = 4'd2;
            4'b0010: dataConverted = 4'd3;
            4'b0100: dataConverted = 4'd4;
            4'b0101: dataConverted = 4'd5;
            4'b0110: dataConverted = 4'd6;
            4'b1000: dataConverted = 4'd7;
            4'b1001: dataConverted = 4'd8;
            4'b1010: dataConverted = 4'd9;
            4'b1101: dataConverted = 4'd0;
            4'b1110: dataConverted = 4'b1111;
            default: dataConverted = 4'd0;
        endcase
    end
    
endmodule