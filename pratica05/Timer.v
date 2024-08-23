module Timer (
    input wire[7:0] TimerRef,
    input wire clock, reset,

    output reg trigger
);

    reg[6:0] counter;

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            counter = 8'd0;
            trigger = 1'd0;
        end else begin
            if (counter == TimerRef) begin
                trigger <= 1'd1;  
                counter <= 8'd0; 
            end else begin
                trigger <= 1'd0;  
                counter <= counter + 8'd1; 
            end
        end
    end

    
endmodule