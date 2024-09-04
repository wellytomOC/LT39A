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
    output wire[7:0] DB,


    output wire[40:1] Header40
);

wire[4:0] addr;
wire[7:0] Phrase;
PhraseBank inst01 (clock50MHz, addr, PhraseSel, Ta, Tpv, Tsv, timeRemaining, StateFlag, Phrase);

DisplayControlUnit inst02 (clock500Hz, reset, Phrase, addr, RS, RW, E, DB);

DecoderMaquete inst03(StateFlag, Header40);
    
endmodule