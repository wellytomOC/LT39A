module DecoderMaquete (
    input wire[1:0] StateFlag,

    output reg[40:1] Header40
);
    
    always @(*) begin
        case (StateFlag)
            2'd0: begin     //Principal Green
                Header40[1] = 1'd0;
                Header40[2] = 1'd0;
                Header40[3] = 1'd1;
                Header40[4] = 1'd1;
                Header40[5] = 1'd0;
                Header40[6] = 1'd0;
                Header40[7] = 1'd0;
                Header40[8] = 1'd1;
                Header40[9] = 1'd0;
                Header40[10] = 1'd0;
                Header40[11] = 1'd0;
                Header40[12] = 1'd0;
                Header40[13] = 1'd1;
                Header40[14] = 1'd1;
                Header40[15] = 1'd0;
                Header40[16] = 1'd0;
                Header40[17] = 1'd0;
                Header40[18] = 1'd1;
                Header40[19] = 1'd0;
                Header40[20] = 1'd0;
                Header40[21] = 1'd1;
                Header40[22] = 1'd0;
                Header40[23] = 1'd0;
                Header40[24] = 1'd1;
                Header40[25] = 1'd0;
                Header40[26] = 1'd0;
                Header40[27] = 1'd1;
                Header40[28] = 1'd1;
                Header40[29] = 1'd0;
                Header40[30] = 1'd0;
                Header40[31] = 1'd1;
                Header40[32] = 1'd0;
                Header40[33] = 1'd1;
                Header40[34] = 1'd0;
                Header40[35] = 1'd0;
                Header40[36] = 1'd0;
                Header40[37] = 1'd0;
                Header40[38] = 1'd0;
                Header40[39] = 1'd0;
                Header40[40] = 1'd0;
            end 
            2'd1: begin     //Principal Yellow
                Header40[1] = 1'd0;
                Header40[2] = 1'd1;
                Header40[3] = 1'd0;
                Header40[4] = 1'd1;
                Header40[5] = 1'd0;
                Header40[6] = 1'd0;
                Header40[7] = 1'd0;
                Header40[8] = 1'd1;
                Header40[9] = 1'd0;
                Header40[10] = 1'd0;
                Header40[11] = 1'd0;
                Header40[12] = 1'd1;
                Header40[13] = 1'd0;
                Header40[14] = 1'd1;
                Header40[15] = 1'd0;
                Header40[16] = 1'd0;
                Header40[17] = 1'd0;
                Header40[18] = 1'd1;
                Header40[19] = 1'd0;
                Header40[20] = 1'd0;
                Header40[21] = 1'd1;
                Header40[22] = 1'd0;
                Header40[23] = 1'd1;
                Header40[24] = 1'd0;
                Header40[25] = 1'd1;
                Header40[26] = 1'd0;
                Header40[27] = 1'd0;
                Header40[28] = 1'd1;
                Header40[29] = 1'd0;
                Header40[30] = 1'd1;
                Header40[31] = 1'd0;
                Header40[32] = 1'd1;
                Header40[33] = 1'd0;
                Header40[34] = 1'd0;
                Header40[35] = 1'd0;
                Header40[36] = 1'd0;
                Header40[37] = 1'd0;
                Header40[38] = 1'd0;
                Header40[39] = 1'd0;
                Header40[40] = 1'd0;
            end
            2'd2: begin     //Secondary Green
                Header40[1] = 1'd1;
                Header40[2] = 1'd0;
                Header40[3] = 1'd0;
                Header40[4] = 1'd0;
                Header40[5] = 1'd0;
                Header40[6] = 1'd0;
                Header40[7] = 1'd1;
                Header40[8] = 1'd0;
                Header40[9] = 1'd0;
                Header40[10] = 1'd1;
                Header40[11] = 1'd1;
                Header40[12] = 1'd0;
                Header40[13] = 1'd0;
                Header40[14] = 1'd0;
                Header40[15] = 1'd0;
                Header40[16] = 1'd0;
                Header40[17] = 1'd1;
                Header40[18] = 1'd0;
                Header40[19] = 1'd0;
                Header40[20] = 1'd1;
                Header40[21] = 1'd0;
                Header40[22] = 1'd1;
                Header40[23] = 1'd1;
                Header40[24] = 1'd0;
                Header40[25] = 1'd1;
                Header40[26] = 1'd0;
                Header40[27] = 1'd0;
                Header40[28] = 1'd0;
                Header40[29] = 1'd1;
                Header40[30] = 1'd1;
                Header40[31] = 1'd0;
                Header40[32] = 1'd1;
                Header40[33] = 1'd0;
                Header40[34] = 1'd0;
                Header40[35] = 1'd0;
                Header40[36] = 1'd0;
                Header40[37] = 1'd0;
                Header40[38] = 1'd0;
                Header40[39] = 1'd0;
                Header40[40] = 1'd0;
            end
            2'd3: begin     //Secondary Yellow
                Header40[1] = 1'd1;
                Header40[2] = 1'd0;
                Header40[3] = 1'd0;
                Header40[4] = 1'd0;
                Header40[5] = 1'd1;
                Header40[6] = 1'd0;
                Header40[7] = 1'd0;
                Header40[8] = 1'd0;
                Header40[9] = 1'd1;
                Header40[10] = 1'd0;
                Header40[11] = 1'd1;
                Header40[12] = 1'd0;
                Header40[13] = 1'd0;
                Header40[14] = 1'd0;
                Header40[15] = 1'd0;
                Header40[16] = 1'd1;
                Header40[17] = 1'd0;
                Header40[18] = 1'd0;
                Header40[19] = 1'd1;
                Header40[20] = 1'd0;
                Header40[21] = 1'd1;
                Header40[22] = 1'd0;
                Header40[23] = 1'd1;
                Header40[24] = 1'd0;
                Header40[25] = 1'd1;
                Header40[26] = 1'd0;
                Header40[27] = 1'd0;
                Header40[28] = 1'd1;
                Header40[29] = 1'd0;
                Header40[30] = 1'd1;
                Header40[31] = 1'd0;
                Header40[32] = 1'd1;
                Header40[33] = 1'd0;
                Header40[34] = 1'd0;
                Header40[35] = 1'd0;
                Header40[36] = 1'd0;
                Header40[37] = 1'd0;
                Header40[38] = 1'd0;
                Header40[39] = 1'd0;
                Header40[40] = 1'd0;
            end
				
            default: begin
				end
        endcase
    end

endmodule

/*
Header40[1] = ;
                Header40[2] = ;
                Header40[3] = ;
                Header40[4] = ;
                Header40[5] = ;
                Header40[6] = ;
                Header40[7] = ;
                Header40[8] = ;
                Header40[9] = ;
                Header40[10] = ;
                Header40[11] = ;
                Header40[12] = ;
                Header40[13] = ;
                Header40[14] = ;
                Header40[15] = ;
                Header40[16] = ;
                Header40[17] = ;
                Header40[18] = ;
                Header40[19] = ;
                Header40[20] = ;
                Header40[21] = ;
                Header40[22] = ;
                Header40[23] = ;
                Header40[24] = ;
                Header40[25] = ;
                Header40[26] = ;
                Header40[27] = ;
                Header40[28] = ;
                Header40[29] = ;
                Header40[30] = ;
                Header40[31] = ;
                Header40[32] = ;
                Header40[33] = ;
                Header40[34] = ;
                Header40[35] = ;
                Header40[36] = ;
                Header40[37] = ;
                Header40[38] = ;
                Header40[39] = ;
                Header40[40] = ;

*/

