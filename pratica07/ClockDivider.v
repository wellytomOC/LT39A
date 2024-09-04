module ClockDivider (
    input wire clk,
    output reg clk20Hz
);

    parameter DIV20HZ = 1250000;
    
    reg [20:0] counter20Hz = 0; 

    always @(posedge clk) begin

        // Clock divider for 20Hz
        if (counter20Hz == DIV20HZ - 1) begin
            counter20Hz <= 0;
            clk20Hz <= ~clk20Hz;
        end else begin
            counter20Hz <= counter20Hz + 21'd1;
        end

    end

    
endmodule