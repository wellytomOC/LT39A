module Saida (
    input wire clock50MHz, clock500Hz, reset,

    input wire[1:0] PhraseSel, StateFlag,

    input wire[6:0] Tpv, Tsv, Ta,
    input wire[6:0] timeRemaining,

    input wire[2:0] Principal_Road,
    input wire[2:0] Secondary_Road,
    input wire[1:0] Principal_Pedestrian,
    input wire[1:0] Secondary_Pedestrian,

    output wire RS,RW,
    output wire E,
    output wire[7:0] DB
);

wire[4:0] addr;
wire[7:0] Phrase;
PhraseBank inst01 (clock50MHz, addr, PhraseSel, Phrase);

DisplayControlUnit inst02 (clock500Hz, reset, 8'b01000001, addr, RS, RW, E, DB);
    
endmodule