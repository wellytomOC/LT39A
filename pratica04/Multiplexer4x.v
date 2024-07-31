module Multiplexer4x(output reg [3:0]out, input[3:0]Inp0,Inp1, input sel);

	always @(sel)
	begin
		case(sel)
			1'b0 : out = Inp0;
			1'b1 : out = Inp1;
			default: out = 4'bx;
		endcase
	end

endmodule 