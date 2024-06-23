module sistema (
    input wire clk, reset,
    input wire[3:0] inpA,inpB, 

    output wire[3:0] solution,
    output wire[2:0] prStateLed, nxStateLed
);

    wire dv;
    
    wire selA,wrA,wrB;
    wire[1:0] aluOp;

    controle controle01 (reset, clk, dv, selA, wrA, wrB, aluOp, prStateLed, nxStateLed);

    operacional op01 (inpA, inpB, clk, reset, selA, wrA, wrB, aluOp, solution);

    mod8counter mod01 (clk,reset,dv);


endmodule