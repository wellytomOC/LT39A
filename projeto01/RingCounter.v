module RingCounter (
    input wire clk, reset,
    input wire freeze,

    output reg[3:0] row
);

    reg [3:0] ring;
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            ring <= 4'b1110;
        end
        else if (freeze == 1'b0) begin
            case (ring)
                4'b1110: ring <= 4'b1101;
                4'b1101: ring <= 4'b1011;
                4'b1011: ring <= 4'b0111;
                4'b0111: ring <= 4'b1110;
                default: ring <= 4'b1110;
            endcase
        end
        row <= ring;
    end
    
endmodule