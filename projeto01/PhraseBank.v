module PhraseBank(
    input wire clock,
    input wire[4:0] addr,
    input wire[1:0] PhraseSel,

    output reg[7:0] Phrase
);

    wire[7:0] OutPadrao, OutPrinc, OutSec, OutAmarelo;

    RomPadrao inst01 (clock,addr,OutPadrao);
    RomDefinirPrincipal inst02 (clock,addr,OutPrinc);
    RomDefinirSecundario inst03 (clock,addr,OutSec);
    RomDefinirAmarelo inst04 (clock,addr,OutAmarelo);


    always @(*) begin   
        case (PhraseSel)
            2'b00: Phrase = OutPadrao;
            2'b01: Phrase = OutPrinc;
            2'b10: Phrase = OutSec; 
            2'b11: Phrase = OutAmarelo; 
            default: Phrase = 7'b0000000;
        endcase
    end
    
endmodule