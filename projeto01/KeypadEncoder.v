module keypadEncoder (
    input wire clk, reset,
    input wire[2:0] Col, 

    output wire[3:0] Row, 
    output reg[3:0] d,
    output reg dav

);

    wire Freeze;
    wire[1:0] RowOut, ColOut;
    wire[3:0] dataConverted;

    RingCounter inst01 (clk, reset, Freeze, Row);
    RowEncoder inst02 (Row, RowOut);
    ColEncoder inst03 (Col, ColOut);
    RowColEncoder inst04 (RowOut, ColOut, dataConverted);

    assign Freeze = ~(Col[0] & Col[1] & Col[2]);

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            d = 4'b0000;
            dav = 1'b0;
        end
        else begin
            d = dataConverted;
            dav = Freeze;
        end
    end
endmodule