module ContadorLinha (
    input wire Hsync, Vsync, Vactive,
    output reg[8:0] row
);

    always @(posedge Hsync ) begin
        if (Vsync == 1'b0) row <= 9'd0;
        else if (Vactive == 1'b1) row <= row + 9'd1;
    end
    
endmodule