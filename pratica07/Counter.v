module Counter (
    input wire clk50,
    output reg clk25
);
    
    always @(negedge clk50) begin
        clk25 <= ~clk25;
    end

endmodule