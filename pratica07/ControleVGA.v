module ControleVGA (
    input wire clk50,
    input wire[8:0] CircleRow,
    input wire[9:0] CircleCol,

    output wire clk25, Hsync, Vsync,
    output wire syncVGA,blankVGA,
    output wire[7:0] R,G,B
);

assign syncVGA = 1'b0;
assign blankVGA = 1'b1;

wire Hactive, Vactive, enable;
GeradorControle gC(clk50, clk25, Hsync, Hactive, Vsync, Vactive, enable);
GeradorImagem gI(clk25, Hsync, Hactive, Vsync, Vactive, enable, CircleRow, CircleCol, R, G, B);
    
endmodule