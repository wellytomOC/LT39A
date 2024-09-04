module Timer (
    input wire[6:0] TimerRef,
    input wire clock, reset,

    output reg trigger,
    output reg[6:0]timeRemaining
);

    reg[6:0] counter;

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            counter = 7'd0;
            trigger = 1'd0;
        end else begin
            if (counter >= TimerRef) begin
                trigger <= 1'd1;  
                counter <= 7'd0; 
            end else begin
                trigger <= 1'd0;  
                counter <= counter + 7'd1; 
            end
				timeRemaining <= TimerRef - counter;
        end
    end

    
endmodule