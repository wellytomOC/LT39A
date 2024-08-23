module Saida (
    input wire clock50MHz, clock500Hz, reset,

	 input wire[3:0] AddressIn, DataIn, KeypadDataIn,
	 input wire RWin,
	 
    output wire RS,RW,
    output wire E,
    output wire[7:0] DB
);

wire[4:0] DisplayAddr;
wire[7:0] Phrase;
PhraseBank inst01 (clock50MHz, DisplayAddr, AddressIn, DataIn, KeypadDataIn, RWin, Phrase);

DisplayControlUnit inst02 (clock500Hz, reset, Phrase, DisplayAddr, RS, RW, E, DB);
    
endmodule