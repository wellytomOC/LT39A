module Saida (
    input wire clock50MHz, clock500Hz, reset,

	input wire[3:0] AddressIn, DataIn, KeypadDataIn,
	input [1:0] PresentStateFlag,
	 
    output wire RS,RW,
    output wire E,
    output wire[7:0] DB,
    output wire LCD_Blon, LCD_On
);

assign LCD_Blon = 1'b1;
assign LCD_On = 1'b1;

wire[4:0] DisplayAddr;
wire[7:0] Phrase;
PhraseBank inst01 (clock50MHz, DisplayAddr, AddressIn, DataIn, KeypadDataIn, PresentStateFlag, Phrase);

DisplayControlUnit inst02 (clock500Hz, reset, Phrase, DisplayAddr, RS, RW, E, DB);
    
endmodule