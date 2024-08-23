module ColEncoder (
    input wire[2:0] Col,

    output reg[1:0] ColOut
);

    always @(*) begin
        case (Col)       
            3'b110: ColOut = 2'b00;
            3'b101: ColOut = 2'b01;
            3'b011: ColOut = 2'b10;
            default: ColOut = 2'b11;
        endcase
    end

endmodule