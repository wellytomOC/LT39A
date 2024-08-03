module registrador #(
    parameter INITIAL_VALUE = 4'b0  
)(
    input wire clock, reset,
    input wire [3:0] din,  
    output reg [3:0] dout
);

    initial begin
        dout = INITIAL_VALUE; 
    end

    always @(negedge clock or posedge reset) begin
        if (reset) begin
            dout <= 4'b0; 
        end else begin
            dout <= din; 
        end
    end

endmodule