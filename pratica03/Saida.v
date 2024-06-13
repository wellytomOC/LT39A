module Saida(input [3:0]Q,R,A,B, input Strobe, output [6:0]ssdQD,ssdQU,ssdRD,ssdRU,ssdAD,ssdAU,ssdBD,ssdBU);

	wire [6:0]ssdQDs,ssdQUs,ssdRDs,ssdRUs,ssdADs,ssdAUs,ssdBDs,ssdBUs;

	DecoderSsd_4bits_Dec ssdA(A,ssdADs,ssdAUs);
	DecoderSsd_4bits_Dec ssdB(B,ssdBDs,ssdBUs);
	DecoderSsd_4bits_Dec ssdQ(Q,ssdQDs,ssdQUs);
	DecoderSsd_4bits_Dec ssdR(R,ssdRDs,ssdRUs);
	
	assign ssdQD = (Strobe == 1'b0) ? ssdQDs : 7'bZZZZZZZ;
	assign ssdQU = (Strobe == 1'b0) ? ssdQUs : 7'bZZZZZZZ;
	assign ssdRD = (Strobe == 1'b0) ? ssdRDs : 7'bZZZZZZZ;
	assign ssdRU = (Strobe == 1'b0) ? ssdRUs : 7'bZZZZZZZ;
	assign ssdAD = (Strobe == 1'b0) ? ssdADs : 7'bZZZZZZZ;
	assign ssdAU = (Strobe == 1'b0) ? ssdAUs : 7'bZZZZZZZ;
	assign ssdBD = (Strobe == 1'b0) ? ssdBDs : 7'bZZZZZZZ;
	assign ssdBU = (Strobe == 1'b0) ? ssdBUs : 7'bZZZZZZZ;
	

endmodule 