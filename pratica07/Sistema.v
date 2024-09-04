module Sistema (
    input wire clk50,

    input wire movUp, movDown, movLeft, movRight,

    output wire clk25, Hsync, Vsync,
    output wire syncVGA,blankVGA,
    output wire[7:0] R,G,B
);
    
    wire[8:0] CircleRow;
    wire[9:0] CircleCol;
    CircleTracker CT01(clk50, movUp, movDown, movLeft, movRight, CircleRow, CircleCol);

    ControleVGA CVGA01(clk50, CircleRow, CircleCol, clk25, Hsync, Vsync, syncVGA, blankVGA, R, G, B);
endmodule