module DisplayControlUnit (
    input wire clock500Hz, reset,

    input wire[7:0] phrase,
    output reg[4:0] char_index,

    output reg RS,RW,
    output wire E,
    output reg[7:0] DB
);

    assign E = clock500Hz;
	 
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

    // Bloco Combinacional - Estados
    always @(*) begin
        case(PresentState) 
            default: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00111000;
                NextState = FS2;
				char_index = 5'd0;
            end 

            FS1: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00111000;
                NextState = FS2;
				char_index = 5'd0;
            end

            FS2: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00111000;
                NextState = FS3;
                char_index = 5'd0;
            end

            FS3: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00111000;
                NextState = FS4;
                char_index = 5'd0;
            end

            FS4: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00111000;
                NextState = ClearDisplay;
                char_index = 5'd0;
            end

            ClearDisplay: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00000001;
                NextState = DisplayControl;
                char_index = 5'd0;
            end

            DisplayControl: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00001100;
                NextState = EntryMode;
                char_index = 5'd0;
            end

            EntryMode: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b00000110;
                NextState = WriteChar;
                char_index = 5'd0;
            end

            ReturnHome: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b10000000;
                NextState = WriteChar;
                char_index = 5'd0;
            end

            SetAddress: begin
                RS = 1'b0;
                RW = 1'b0;
                DB = 8'b11000000;
                NextState = WriteChar;
                char_index = 5'd16;
            end

            WriteChar: begin
                RS = 1'b1;
                RW = 1'b0;
                DB = phrase;

                char_index = char_index + 5'd1;
                if (char_index == 16) begin
                    NextState = SetAddress;
                end
                else if (char_index == 31) begin
                    char_index = 5'd0;
                    NextState = ClearDisplay;
                end
                else if (char_index != 16 && char_index != 31) begin
                    NextState = WriteChar;
                end 
                else begin
                    NextState = WriteChar;
                end
            end
        endcase
    end

endmodule