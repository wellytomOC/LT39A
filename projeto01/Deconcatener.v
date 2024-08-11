module Deconcatener (
    input wire[6:0] Ta, Tpv, Tsv, timeRemaining,

    output wire[3:0] TaUnit, TaTens, TpvUnit, TpvTens, TsvUnit, TsvTens, TrUnit, TrTens
);

assign TaUnit = Ta % 10;
assign TaTens = Ta / 10;

assign TpvUnit = Tpv % 10;
assign TpvTens = Tpv / 10;

assign TsvUnit = Tsv % 10;
assign TsvTens = Tsv / 10;

assign TrUnit = timeRemaining % 10;
assign TrTens = timeRemaining / 10;
    
endmodule