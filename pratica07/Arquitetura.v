module Arquitetura (
    input wire clk50,
    input wire movUp, movDown, movLeft, movRight,

    output wire clk25, Hsync, Vsync,
    output wire syncVGA,blankVGA,
    output wire[7:0] R,G,B
);
    

    wire clk50Out;
    wire movUpOut, movDownOut, movLeftOut, movRightOut;
    Entrada inst01(clk50, movUp, movDown, movLeft, movRight, clk50Out, movUpOut, movDownOut, movLeftOut, movRightOut);

    Sistema inst02(clk50Out, movUpOut, movDownOut, movLeftOut, movRightOut, clk25, Hsync, Vsync, syncVGA,blankVGA, R,G,B);
endmodule