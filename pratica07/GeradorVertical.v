module GeradorVertical (
    input wire Hsync,
    output reg Vsync, Vactive
);

    localparam  Vp = 2, Vbp = 31,
                Vact = 480, Vfp = 11;
    
    reg[9:0] count;

    always @(posedge Hsync) begin
        count <= count + 10'd1;
        if (count == Vp) Vsync <= 1'b1;
        else if(count == Vp+Vbp) Vactive <= 1'b1;
        else if(count == Vp+Vbp+Vact) Vactive <= 1'b0;
        else if(count == Vp+Vbp+Vact+Vfp) begin
            Vsync <= 1'b0;
            count <= 10'd0;
        end
    end
    
endmodule