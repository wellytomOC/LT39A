module Concatener (
    input wire[3:0] unit, ten,

    output reg[6:0]dout
);

    always @(*) begin
        dout = (ten * 4'd10) + unit; 
    end

endmodule