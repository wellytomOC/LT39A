module ManualControlUnit (
    input wire dav, reset,

    input wire[3:0] dataIn,

    output reg[5:0] RegisterSel,
    output reg[1:0] PhraseSel
);


    parameter
        Padrao = 3'd0,
        DefinirPrincipalUnit = 3'd1,
        DefinirPrincipalTens = 3'd2,
        DefinirSecundarioUnit = 3'd3,
        DefinirSecundarioTens = 3'd4,
        DefinirAmareloUnit = 3'd5,
        DefinirAmareloTens = 3'd6;

    reg[2:0] PresentState,NextState;

    always @(posedge dav or posedge reset) begin
        if (reset) begin
            
            PresentState <= Padrao;
        end
        else begin
            PresentState <= NextState;
        end
    end

    always @(*) begin
        case(PresentState)
            default: begin
                RegisterSel = 6'd0;
                PhraseSel = 2'd0;
                NextState = Padrao;
                end

            Padrao: begin
                RegisterSel = 6'd0;
                PhraseSel = 2'd0;
                
                if(dataIn == 4'b1111)
                    NextState = DefinirPrincipalUnit;
				else
                    NextState = Padrao;
                end

            DefinirPrincipalUnit: begin
                RegisterSel = 6'b000001;
                PhraseSel = 2'b01;

                NextState = DefinirPrincipalTens;
                end

            DefinirPrincipalTens: begin
                RegisterSel = 6'b000010;
                PhraseSel = 2'b01;

                NextState = DefinirSecundarioUnit;
                end

            DefinirSecundarioUnit: begin
                RegisterSel = 6'b000100;
                PhraseSel = 2'b10;

                NextState = DefinirSecundarioTens;
                end

            DefinirSecundarioTens: begin
                RegisterSel = 6'b001000;
                PhraseSel = 2'b10;

                NextState = DefinirAmareloUnit;
                end

            DefinirAmareloUnit: begin
                RegisterSel = 6'b010000;
                PhraseSel = 2'b11;

                NextState = DefinirAmareloTens;
                end

            DefinirAmareloTens: begin
                RegisterSel = 6'b100000;
                PhraseSel = 2'b11;

                NextState = Padrao;
                end
        endcase
        
    end
    
endmodule