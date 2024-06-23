module clockDivider #(
    parameter INPUT_FREQ = 50000000,  
    parameter OUTPUT_FREQ = 1         
)(
    input wire clk_in, 
    input wire reset,
    output reg clk_out  
);

    localparam integer halfPeriod = INPUT_FREQ / (2 * OUTPUT_FREQ);
    
    integer counter;

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            counter <= counter + 1;
            if (counter >= halfPeriod) begin
                clk_out <= ~clk_out;
                counter <= 0;
            end
        end
    end

endmodule