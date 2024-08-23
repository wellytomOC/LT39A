module Entrada (
    input wire clock, reset,
	 output wire clock50Mhz, clock500Hz, clock1Hz,
	 
	 input wire[3:0] AddressIn,
	 output wire[3:0] AddressOut,
	 
	 input wire RWin,
	 output wire RWout,
	 
    input wire[2:0] col,
    output wire[3:0] row, KeypadData,
    output wire dav
);

assign clock50Mhz = clock;
assign RWout = RWin;
assign AddressOut = AddressIn;

wire clock20Hz;
ClockDivider inst01(clock, clock1Hz, clock20Hz, clock500Hz);

keypadEncoder inst02(clock20Hz, reset, col, row, KeypadData, dav);
    
endmodule