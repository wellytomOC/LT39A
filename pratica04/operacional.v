module operacional (
    input wire[3:0] inpA,inpB, 
    input wire clk, reset,

    input wire selA,wrA,wrB,
    input wire[1:0] aluOp,

    output wire[3:0] result
);

    wire[3:0] outMux;
    muxIn mux01 (.zero(result), .one(inpA), .sel(selA), .s(outMux));

    wire[3:0] outReg01, outReg02;
    registrador reg01 (clk,reset,outMux,outReg01);
    registrador reg02 (clk,reset,inpB,outReg02);

    ALU2bits alu01 (outReg01,outReg02,aluOp,result);
    
endmodule