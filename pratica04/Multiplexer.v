module Multiplexer(output reg [2:0]out, input[2:0]Inp0,Inp1, input sel);

	always @(sel)
	begin
		case(sel)
			1'b0 : out = Inp0;
			1'b1 : out = Inp1;
			default: out = 3'bx;
		endcase
	end

endmodule 