module RegisterBank (
    input wire reset,
    input wire[5:0] RS,
    input wire[3:0] dataIn,

    output wire[6:0] TpvOut, TsvOut, TaOut
);


wire[3:0] TpvUnit, TpvTen;
Register #(.INITIAL_VALUE(4'd0)) reg_TempoPrincipalVerde_Unit (RS[0], reset, dataIn, TpvUnit);
Register #(.INITIAL_VALUE(4'd3)) reg_TempoPrincipalVerde_Ten (RS[1], reset, dataIn, TpvTen);

Concatener Concat_Tpv (TpvUnit, TpvTen, TpvOut);

wire[3:0] TsvUnit, TsvTen;
Register #(.INITIAL_VALUE(4'd5)) reg_TempoSecundariaVerde_Unit (RS[2], reset, dataIn, TsvUnit);
Register #(.INITIAL_VALUE(4'd1))reg_TempoSecundariaVerde_Ten (RS[3], reset, dataIn, TsvTen);

Concatener Concat_Tsv (TsvUnit, TsvTen, TsvOut);

wire[3:0] TaUnit, TaTen;
Register #(.INITIAL_VALUE(4'd3)) reg_TempoAmarelo_Unit (RS[4], reset, dataIn, TaUnit);
Register #(.INITIAL_VALUE(4'd0)) reg_TempoAmarelo_Ten (RS[5], reset, dataIn, TaTen);

Concatener Concat_Ta (TaUnit, TaTen, TaOut);


    
endmodule