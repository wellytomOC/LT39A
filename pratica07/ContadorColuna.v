module ContadorColuna (
    input wire Hsync, clk25, Hactive,
    output reg[9:0] col
);

    always @(posedge clk25 ) begin
        if (Hsync == 1'b0) col <= 10'd0;
        else if (Hactive == 1'b1) col <= col + 10'd1;
    end
    
endmodule