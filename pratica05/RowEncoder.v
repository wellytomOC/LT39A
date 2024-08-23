module RowEncoder (
    input wire[3:0] row,

    output reg[1:0] rowOut
);

    always @(*) begin
        case (row)      
            4'b1110: rowOut = 2'b00;
            4'b1101: rowOut = 2'b01;
            4'b1011: rowOut = 2'b10;
            4'b0111: rowOut = 2'b11;
            default: rowOut = 2'b00;
        endcase
    end
    
    
endmodule