module Timer (
    input wire[6:0] TimerRef,
    input wire clock, reset,

    output reg trigger,
    output reg[6:0]timeRemaining
);

    reg[6:0] counter;

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            counter = 8'b0;
            trigger = 1'b0;
        end else begin
            if (counter == TimerRef) begin
                trigger <= 1'b1;  
                counter <= 8'b0; 
            end else begin
                trigger <= 1'b0;  
                counter <= counter + 1; 
            end
				timeRemaining <= TimerRef - counter;
        end
    end

    
endmodule