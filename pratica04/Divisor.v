module Divisor (output[3:0]Q,R, input[3:0]A,B);

	wire [3:0]SubOut1;
	wire BOut1;
	wire [2:0]Mout1;
	
	Subtractor s1(SubOut1,BOut1,{3'b000,A[3]},B,1'b0);
	assign Q[3] = ~BOut1;
	Multiplexer m1(Mout1,SubOut1[2:0],{2'b00,A[3]},BOut1);
	
	wire [3:0]SubOut2;
	wire BOut2;
	wire [2:0]Mout2;

	Subtractor s2(SubOut2,BOut2,{Mout1,A[2]},B,1'b0);
	assign Q[2] = ~BOut2;
	Multiplexer m2(Mout2,SubOut2[2:0],{Mout1[1:0],A[2]},BOut2);

	wire [3:0]SubOut3;
	wire BOut3;
	wire [2:0]Mout3;

	Subtractor s3(SubOut3,BOut3,{Mout2,A[1]},B,1'b0);
	assign Q[1] = ~BOut3;
	Multiplexer m3(Mout3,SubOut3[2:0],{Mout2[1:0],A[1]},BOut3);

	wire [3:0]SubOut4;
	wire BOut4;

	Subtractor s4(SubOut4,BOut4,{Mout3,A[0]},B,1'b0);
	assign Q[0] = ~BOut4;
	Multiplexer4x m4(R,SubOut4,{Mout3,A[0]},BOut4);


endmodule 