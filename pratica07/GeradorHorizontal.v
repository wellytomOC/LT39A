module GeradorHorizontal (
    input wire clk25,
    output reg Hsync, Hactive
);

    localparam  Hp = 96, Hbp = 48,
                Hact = 640, Hfp = 16;
    
    reg[9:0] count;

    always @(posedge clk25) begin
        count <= count + 10'd1;
        if (count == Hp) Hsync <= 1'b1;
        else if(count == Hp+Hbp) Hactive <= 1'b1;
        else if(count == Hp+Hbp+Hact) Hactive <= 1'b0;
        else if(count == Hp+Hbp+Hact+Hfp) begin
            Hsync <= 1'b0;
            count <= 10'd0;
        end
    end
    
endmodule