module Entrada (
    input wire clk50,
    input wire movUp, movDown, movLeft, movRight,

    output wire clk50Out,
    output wire movUpOut, movDownOut, movLeftOut, movRightOut
);

assign clk50Out = clk50;

assign movUpOut = ~movUp;
assign movDownOut = ~movDown;
assign movLeftOut = ~movLeft;
assign movRightOut = ~movRight;
    
endmodule