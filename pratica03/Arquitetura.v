module Arquitetura(	input [3:0]A,B,
							input Enable,Strobe,
							output [6:0]ssdQD,ssdQU,ssdRD,ssdRU,ssdAD,ssdAU,ssdBD,ssdBU,
							output [3:0]Asig,Bsig,Qsig,Rsig);

	wire [3:0]Ao,Bo;
	wire [3:0]Q,R;

	Entrada ent1(A,B,Enable,Ao,Bo);
	Divisor div1(Q,R,Ao,Bo);
	Saida   sai1(Q,R,Ao,Bo,Strobe,ssdQD,ssdQU,ssdRD,ssdRU,ssdAD,ssdAU,ssdBD,ssdBU);
	
	assign Asig = Ao;
	assign Bsig = Bo;
	assign Qsig = Q;
	assign Rsig = R;

endmodule 