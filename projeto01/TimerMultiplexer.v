module TimerMultiplexer (
    input wire[1:0] sel,
    input wire[6:0] Tpv, Tsv, Ta,

    output reg[6:0] MuxOut
);

    always @(*) begin   
        case (sel)
            2'b00: MuxOut = Tpv;
            2'b01: MuxOut = Tsv;
            2'b10: MuxOut = Ta; 
            default: MuxOut = 7'b0000000;
        endcase
    end
    
endmodule