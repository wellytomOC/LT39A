module Sistema (
    input wire clock, clock1Hz, reset,
    input wire[3:0] dataIn,

    output wire trigger,
    output wire[6:0] timeRemaining
);

wire[5:0] RegisterSelect;
wire[6:0] Tpv, Tsv, Ta;
RegisterBank regBank01 (reset, RegisterSelect, dataIn, Tpv, Tsv, Ta);

wire[6:0] MuxOut;
TimerMultiplexer TimerMux01 (2'b00, Tpv, Tsv, Ta, MuxOut);

Timer Timer01  (MuxOut, clock1Hz, reset, trigger, timeRemaining);
    
endmodule