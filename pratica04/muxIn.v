module muxIn (
    input wire[3:0] zero, one,
    input wire sel,
    output reg[3:0] s
);
    always @(sel) begin
        if(sel) begin
            s = one;
        end else begin
            s = zero;
        end
    end
endmodule