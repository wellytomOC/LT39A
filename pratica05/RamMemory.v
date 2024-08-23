module RamMemory (
    input clk,
    input write_enable,
    input [9:0]address,
    input [3:0]data_in,
    output reg [3:0]data_out
);


reg [3:0] RamBlock [0:15];

always @(posedge clk) begin
    if(write_enable)
        RamBlock[address] <= data_in;
    else
        data_out <= RamBlock[address];
end
    
endmodule