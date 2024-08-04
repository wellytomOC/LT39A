module DisplayControlUnit (
    input wire clock, reset, ConfigFlag,

    output reg RS,RW, E,
    output reg[7:0] DB
);



    //estados
    parameter   
        FS1 = 4'd0,
		FS2 = 4'd1,
        FS3 = 4'd2,
        FS4 = 4'd3,
        ClearDisplay = 4'd4,
        DisplayControl = 4'd5,
        EntryMode = 4'd6,
        ReturnHome = 4'd7,
        WriteChar = 4'd8;

    reg[3:0] PresentState,NextState;

    reg [7:0] phrase [0:31];
    reg [4:0] char_index;



    //Conteudo do display
    parameter
        Padrao = 2'd0,
        DefinirPrincipal = 2'd1,
        DefinirSecundario = 2'd2,
        DefinirAmarelo = 2'd3;

    reg[1:0] PresentPhrase;
 
    always @(posedge clk ) begin

        case(PresentPhrase)
            Padrao: begin
                phrase[0] = ;
            end
            DefinirPrincipal begin
                
            end
            DefinirSecundario begin
                
            end
            DefinirAmarelo begin
                
            end
        endcase 
        
    end

    
endmodule