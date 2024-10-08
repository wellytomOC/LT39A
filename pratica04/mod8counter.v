module mod8counter (
    input wire clk, reset,
    output reg dv
);
    
    reg[2:0] counter = 3'b001;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            dv <= 1'b0;
        end else begin
            counter <= counter +1;
            if(!counter) begin
                dv <= 1'b1;
            end else begin
                dv <= 1'b0;
            end
        end
    end

endmodule