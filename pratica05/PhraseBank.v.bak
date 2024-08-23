module PhraseBank(
    input wire clock,
    input wire[4:0] addr,
    input wire[1:0] PhraseSel,

    input wire[6:0] Ta, Tpv, Tsv, timeRemaining,
    input wire[1:0] StateFlag,

    output reg[7:0] Phrase
);

    wire[7:0] OutPadrao, OutPrinc, OutSec, OutAmarelo;
    wire[3:0] TaUnit, TaTens, TpvUnit, TpvTens, TsvUnit, TsvTens, TrUnit, TrTens;

    Deconcatener inst00(Ta, Tpv, Tsv, timeRemaining, TaUnit, TaTens, TpvUnit, TpvTens, TsvUnit, TsvTens, TrUnit, TrTens);
    RomPadrao inst01 (clock,addr, TrUnit, TrTens, StateFlag, OutPadrao);
    RomDefinirPrincipal inst02 (clock,addr,OutPrinc);
    RomDefinirSecundario inst03 (clock,addr,OutSec);
    RomDefinirAmarelo inst04 (clock,addr,OutAmarelo);

    reg[7:0] Numbers [0:9];
    initial begin
        Numbers[0] = "0";
        Numbers[1] = "1";
        Numbers[2] = "2";
        Numbers[3] = "3";
        Numbers[4] = "4";
        Numbers[5] = "5";
        Numbers[6] = "6";
        Numbers[7] = "7";
        Numbers[8] = "8";
        Numbers[9] = "9";
    end

    always @(*) begin   
        if(addr == 5'd18) Phrase = Numbers[TpvTens];
        else if(addr == 5'd19) Phrase = Numbers[TpvUnit];
        else if(addr == 5'd24) Phrase = Numbers[TsvTens];
        else if(addr == 5'd25) Phrase = Numbers[TsvUnit];
        else if(addr == 5'd30) Phrase = Numbers[TaTens];
        else if(addr == 5'd31) Phrase = Numbers[TaUnit];
        else begin
            case (PhraseSel)
            2'b00: Phrase = OutPadrao;
            2'b01: Phrase = OutPrinc;
            2'b10: Phrase = OutSec; 
            2'b11: Phrase = OutAmarelo; 
            default: Phrase = 7'b0000000;
        endcase
        end
    end
    
endmodule