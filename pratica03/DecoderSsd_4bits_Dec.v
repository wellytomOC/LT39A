module DecoderSsd_4bits_Dec (input [3:0]In, output [6:0]OutDezena,OutUnidade);

	reg [6:0] seven_seg [0:9];

	initial begin
		seven_seg[0] = 7'b1000000;
		seven_seg[1] = 7'b1111001;
		seven_seg[2] = 7'b0100100;
		seven_seg[3] = 7'b0110000;
		seven_seg[4] = 7'b0011001;
		seven_seg[5] = 7'b0010010;
		seven_seg[6] = 7'b0000010;
		seven_seg[7] = 7'b1111000;
		seven_seg[8] = 7'b0000000;
		seven_seg[9] = 7'b0011000;
	end
	
	reg[3:0] Dezena;
	reg[3:0] Unidade;
	
	always @(In)
	begin
		
		Dezena = In / 10;
		Unidade = In % 10;
		
	end

    assign OutDezena = seven_seg[Dezena];
	 assign OutUnidade = seven_seg[Unidade];


endmodule 