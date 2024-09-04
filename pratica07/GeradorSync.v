module GeradorSync (
    input wire clk25,
    output wire Hsync, Hactive,
    output wire Vsync, Vactive,
    output wire enable
);

    GeradorHorizontal gH(clk25,Hsync, Hactive);
    GeradorVertical gV(Hsync,Vsync, Vactive);
    assign enable = Hactive & Vactive;
    
endmodule