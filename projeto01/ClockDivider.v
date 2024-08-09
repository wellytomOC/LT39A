module ClockDivider (
    input wire clock,
    output reg clock500Hz, Clock1Hz
);

    parameter DIV500HZ = 50000;
    parameter DIV1HZ = 25000000;
    
    reg [15:0] counter500Hz = 0; 
    reg [24:0] counter1Hz = 0;

    always @(posedge clock) begin
        // Clock divider for 500Hz
        if (counter500Hz == DIV500HZ - 1) begin
            counter500Hz <= 0;
            clock500Hz <= ~clock500Hz;
        end else begin
            counter500Hz <= counter500Hz + 16'd1;
        end
        
        // Clock divider for 1Hz
        if (counter1Hz == DIV1HZ - 1) begin
            counter1Hz <= 0;
            Clock1Hz <= ~Clock1Hz;
        end else begin
            counter1Hz <= counter1Hz + 25'd1;
        end
    end

    
endmodule