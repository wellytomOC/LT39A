module GeradorControle (
    input wire clk50,
    output wire clk25,
    output wire Hsync, Hactive,
    output wire Vsync, Vactive,
    output wire enable
);

    Counter gF(clk50,clk25);
    GeradorSync gS(clk25, Hsync, Hactive, Vsync, Vactive, enable); 
endmodule