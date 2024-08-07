module Entrada (
    input wire clock, reset,
    input wire[2:0] col,

    output wire clock50Mhz, clock1Hz, clock500Hz,
    output wire[3:0] row, KeypadData,
    output wire dav
);

assign clock50Mhz = clock;

ClockDivider inst01(clock, clock500Hz, clock1Hz);

keypadEncoder2 inst02(clock500Hz, reset, col, row, KeypadData, dav);
    
endmodule