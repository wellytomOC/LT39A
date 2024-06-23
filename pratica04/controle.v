module controle(
    input reset,clock,dv,
    output reg selA,wrA,wrB,
    output reg [1:0]aluOp,
    output reg[2:0] prStateLed,nxStateLed
);
    //estados
    parameter   idle = 3'h0,
				load = 3'h1,
                displayB = 3'h2,
                storeQ = 3'h3,
                storeR = 3'h4;
	
    reg[2:0] PrState,NxState;

    //reg selA, wrA, wrB;
    //reg aluOp;
    
    //bloco sequencial
    always @(posedge reset or negedge clock) begin
        if(reset) begin
            PrState <= idle;
        end
        else begin
            PrState <= NxState;
        end
    end
    
    //bloco combinacional
    always @(*) begin
        case (PrState)
            idle: begin
                selA = 1'b0;
                wrA = 1'b0;
                wrB = 1'b0;
                aluOp = 2'b00;

                if (dv == 1) begin
                    NxState = load;
                end else begin
                    NxState = idle;
                end
            end
            load: begin
                selA = 1'b1;
                wrA = 1'b1;
                wrB = 1'b1;
                aluOp = 2'b00;

                if (dv == 1) begin
                    NxState = displayB;
                end else begin
                    NxState = load;
                end
            end
            displayB: begin
                selA = 1'b0;
                wrA = 1'b0;
                wrB = 1'b0;
                aluOp = 2'b01;

                if (dv == 1) begin
                    NxState = storeQ;
                end else begin
                    NxState = displayB;
                end
            end
            storeQ: begin
                selA = 1'b0;
                wrA = 1'b1;
                wrB = 1'b0;
                aluOp = 2'b10;

                if (dv == 1) begin
                    NxState = storeR;
                end else begin
                    NxState = storeQ;
                end
            end
            storeR: begin
                selA = 1'b0;
                wrA = 1'b1;
                wrB = 1'b0;
                aluOp = 2'b11;

                if (dv == 1) begin
                    NxState = idle;
                end else begin
                    NxState = storeR;
                end
            end
            default: begin
                NxState = idle;
                selA = 1'b0;
                wrA = 1'b0;
                wrB = 1'b0;
                aluOp = 2'b00;
            end
        endcase

        prStateLed = PrState;
        nxStateLed = NxState;
    end
endmodule