module DisplayControlUnit (
    input wire clock500Hz, reset, ConfigFlag,

    output reg RS,RW,
    output wire E,
    output reg[7:0] DB,
	 
	 output wire[6:0] indexDEBUG,
	 output wire[1:0] PresentPhraseDEBUG,
	 output wire[3:0] PresentStateDEBUG, NextStateDEBUG
);

	assign indexDEBUG = char_index;
    assign PresentPhraseDEBUG = PresentPhrase;
    assign PresentStateDEBUG = PresentState;
    assign NextStateDEBUG = NextState;
    assign E = clock500Hz;
	 
	 
	 //Frases
	 parameter
        Padrao = 2'd0,
        DefinirPrincipal = 2'd1,
        DefinirSecundario = 2'd2,
        DefinirAmarelo = 2'd3;

    reg[1:0] PresentPhrase;

    // Bloco sequencial - Frases
     always @( posedge ConfigFlag or posedge reset) begin
	    if(reset) begin
            PresentPhrase <= Padrao;
        end
        else begin
            case(PresentPhrase)
                Padrao: begin
                    PresentPhrase = DefinirPrincipal;
                end
                DefinirPrincipal: begin
                    PresentPhrase = DefinirSecundario;
                end
                DefinirSecundario: begin
                    PresentPhrase = DefinirAmarelo;
                end
                DefinirAmarelo: begin
                    PresentPhrase = Padrao;
                end
            endcase
        end
     end
	 
	 
    // Bloco combinacional - Frases
    reg [7:0] phrase [0:31], address;
    reg [6:0] char_index;
    always @(posedge clock500Hz) begin

        case(PresentPhrase)
            Padrao: begin
                phrase[0]  = 8'd0;
                phrase[1]  = 8'd0;
                phrase[2]  = 8'd0;
                phrase[3]  = 8'd0;
                phrase[4]  = 8'd0;
                phrase[5]  = ".";
                phrase[6]  = ":";
                phrase[7]  = " ";

                phrase[8]  = "R";
                phrase[9]  = "E";
                phrase[10] = "D";

                phrase[11] = "";
                phrase[12] = "";
                phrase[13] = "X";
                phrase[14] = "Y";
                phrase[15] = "s";



                phrase[16] = "S";
                phrase[17] = "e";
                phrase[18] = "c";
                phrase[19] = "u";
                phrase[20] = "n";
                phrase[21] = ".";
                phrase[22] = ":";
                phrase[23] = " ";

                phrase[24] = "G";
                phrase[25] = "R";
                phrase[26] = "N";

                phrase[27] = "";
                phrase[28] = "";
                phrase[29] = "X";
                phrase[30] = "Y";
                phrase[31] = "s";
            end
            DefinirPrincipal: begin
                phrase[0] = "";
                phrase[1] = "";
                phrase[2] = "";
                phrase[3] = "";
                phrase[4] = "";
                phrase[5] = "";
                phrase[6] = "";
                phrase[7] = "";
                phrase[8] = "";
                phrase[9] = "";
                phrase[10] = "";
                phrase[11] = "";
                phrase[12] = "";
                phrase[13] = "";
                phrase[14] = "";
                phrase[15] = "";

                phrase[16] = "";
                phrase[17] = "";
                phrase[18] = "";
                phrase[19] = "";
                phrase[20] = "";
                phrase[21] = "";
                phrase[22] = "";
                phrase[23] = "";
                phrase[24] = "";
                phrase[25] = "";
                phrase[26] = "";
                phrase[27] = "";
                phrase[28] = "";
                phrase[29] = "";
                phrase[30] = "";
                phrase[31] = "";
            end
            DefinirSecundario: begin
                
            end
            DefinirAmarelo: begin
                
            end
        endcase 
    end





    // Estados
    parameter   
        FS1 = 4'd0,
		FS2 = 4'd1,
        FS3 = 4'd2,
        FS4 = 4'd3,
        ClearDisplay = 4'd4,
        DisplayControl = 4'd5,
        EntryMode = 4'd6,
        ReturnHome = 4'd7,
        SetAddress = 4'd8,
        WriteChar = 4'd9;

    reg[3:0] PresentState,NextState;

    // Bloco sequencial - Estados
     always @(posedge reset or posedge clock500Hz) begin
        if(reset) begin
            PresentState <= FS1;
        end
        else begin
            PresentState <= NextState;
        end
    end

    //Bloco Combinacional - Estados
    always @(*) begin
        case(PresentState) 
            FS1: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b00111000;
                NextState <= FS2;
				char_index <= 6'd0;
            end

            FS2: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b00111000;
                NextState <= FS3;
            end

            FS3: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b00111000;
                NextState <= FS4;
            end

            FS4: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b00111000;
                NextState <= ClearDisplay;
            end

            ClearDisplay: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b00000001;
                NextState <= DisplayControl;
            end

            DisplayControl: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b00001100;
                NextState <= EntryMode;
            end

            EntryMode: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b00000110;
                NextState <= WriteChar;
            end

            ReturnHome: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= 8'b10000000;
                NextState <= WriteChar;
            end

            SetAddress: begin
                RS <= 1'b0;
                RW <= 1'b0;
                DB <= address;
                NextState <= WriteChar;
            end

            WriteChar: begin
                RS <= 1'b1;
                RW <= 1'b0;
                DB <= phrase[char_index];

                char_index <= char_index + 1;
                if (char_index == 16) begin
                    address <= 8'b11000000;
                    NextState <= SetAddress;
                end
                else if (char_index == 31) begin
                    char_index <= 8'd0;
                    NextState <= ClearDisplay;
                end
                else if (char_index != 16 && char_index != 31) begin
                    NextState <= WriteChar;
                end 
            end
        endcase
    end


    /*
    phrase[0] = "";
    phrase[1] = "";
    phrase[2] = "";
    phrase[3] = "";
    phrase[4] = "";
    phrase[5] = "";
    phrase[6] = "";
    phrase[7] = "";
    phrase[8] = "";
    phrase[9] = "";
    phrase[10] = "";
    phrase[11] = "";
    phrase[12] = "";
    phrase[13] = "";
    phrase[14] = "";
    phrase[15] = "";

    phrase[16] = "";
    phrase[17] = "";
    phrase[18] = "";
    phrase[19] = "";
    phrase[20] = "";
    phrase[21] = "";
    phrase[22] = "";
    phrase[23] = "";
    phrase[24] = "";
    phrase[25] = "";
    phrase[26] = "";
    phrase[27] = "";
    phrase[28] = "";
    phrase[29] = "";
    phrase[30] = "";
    phrase[31] = "";
    */
endmodule