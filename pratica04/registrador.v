module registrador (
    input wire clk,   
    input wire reset, 
    input wire [3:0] din,  
    output reg [3:0] dout
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            dout <= 4'b0000; 
        end else begin
            dout <= din; 
        end
    end

endmodule