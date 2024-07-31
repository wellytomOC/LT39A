module ALU2bits (
    input wire [3:0] inputA, // 4-bit input A
    input wire [3:0] inputB, // 4-bit input B
    input wire [1:0] opcode, // 2-bit opcode
    output reg [3:0] result   // 4-bit output result
);

    wire[3:0]Q,R;
    Divisor Divisor01(Q,R,inputA,inputB);
    always @(*) begin
        case (opcode)
            2'b00: begin
                 result = inputA;           
            end
            2'b01: begin
                result = inputB;           
            end

            2'b10: begin
                result = Q;  
            end

            2'b11: begin
                result = R; 
            end

            default: begin
                result = 4'b0000;        
            end
        endcase
    end

endmodule