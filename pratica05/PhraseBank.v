module PhraseBank(
    input wire clock,
    input wire[4:0] DisplayAddr,
	 
	 input wire[3:0] AddressIn, DataIn, KeypadDataIn,
	 input wire RWin,


    output reg[7:0] Phrase
);

    wire[7:0] OutPadrao;
    wire[3:0] AddressInUnit, AddressInTens, DataInUnit, DataInTens, KeypadDataInUnit, KeypadDataInTens;

    Deconcatener inst00(AddressIn, DataIn, KeypadDataIn, AddressInUnit, AddressInTens, DataInUnit, DataInTens, KeypadDataInUnit, KeypadDataInTens);
    RomPadrao inst01 (clock,DisplayAddr, OutPadrao);
    
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
	 
	 reg[7:0] RomRW [0:1];
    initial begin
        RomRW[0] = "R";
        RomRW[1] = "W";
    end

    always @(*) begin   
	 
        if(DisplayAddr == 5'd4) Phrase = Numbers[AddressInTens];
        else if(DisplayAddr == 5'd5) Phrase = Numbers[AddressInUnit];
		  
        else if(DisplayAddr == 5'd14) Phrase = RomRW[RWin];
		  
        else if(DisplayAddr == 5'd20) Phrase = Numbers[KeypadDataInTens];
        else if(DisplayAddr == 5'd21) Phrase = Numbers[KeypadDataInUnit];
		  
        else if(DisplayAddr == 5'd29) Phrase = Numbers[DataInTens];
		  else if(DisplayAddr == 5'd30) Phrase = Numbers[DataInUnit];
		  
        else Phrase = OutPadrao;
    end
    
endmodule