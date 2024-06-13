module Entrada (input [3:0]A,B, input Enable, output [3:0]Ao,Bo);

	assign Ao = (Enable == 1'b1) ? A : 3'bZZZ;
	assign Bo = (Enable == 1'b1) ? B : 3'bZZZ;

endmodule 