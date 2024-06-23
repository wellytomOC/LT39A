module ALU2bits (
    input wire [3:0] inputA, // 4-bit input A
    input wire [3:0] inputB, // 4-bit input B
    input wire [1:0] opcode, // 2-bit opcode
    output reg [3:0] result   // 4-bit output result
);
    
    always @(*) begin
        case (opcode)
            2'b00: result = inputA;           
            2'b01: result = inputB;           
            2'b10: result = inputA / inputB;  
            2'b11: result = inputA % inputB;  
            default: result = 4'b0000;        
        endcase
    end

endmodule