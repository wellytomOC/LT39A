module Subtractor(output [3:0]S, output Bout, input [3:0]A,B, input Bin);
	assign {Bout,S} = (A-B)-Bin;
endmodule