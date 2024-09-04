module CircleTracker (
    input wire clk50,
    input wire movUp, movDown, movLeft, movRight,

    output reg[8:0] CircleRow,
    output reg[9:0] CircleCol
);

initial begin
    CircleRow = 9'd240;
    CircleCol = 10'd320;
end
localparam step = 5;

wire clk20Hz;
ClockDivider CD(clk50, clk20Hz);

always @(posedge clk20Hz ) begin

    if(movUp == 1'b1) begin
        if(CircleRow < 9'd450) CircleRow <= CircleRow + step;
    end

    if(movDown == 1'b1) begin
        if(CircleRow > 9'd30) CircleRow <= CircleRow - step;
    end

    if(movRight == 1'b1) begin
        if(CircleCol < 10'd610) CircleCol <= CircleCol + step;
    end

    if(movLeft == 1'b1) begin
        if(CircleCol > 10'd30) CircleCol <= CircleCol - step;
    end
    
end
    
endmodule