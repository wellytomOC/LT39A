module keypadEncoder2 (
    input wire clk, reset,
    input wire [2:0] col,
    output reg [3:0] row,
    output reg [3:0] d,
    output reg dav
);

    reg freeze;
    reg [3:0] data;
    reg [3:0] dataConverted;
    reg [3:0] ring;

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            ring <= 4'b1110;
        end
        else if (freeze == 1'b0) begin
            case (ring)
                4'b1110: ring <= 4'b1101;
                4'b1101: ring <= 4'b1011;
                4'b1011: ring <= 4'b0111;
                4'b0111: ring <= 4'b1110;
                default: ring <= 4'b1110;
            endcase
        end
        dav <= freeze;
    end

    always @(*) begin

        row = ring;

        case (ring)
            4'b1110: data[3:2] = 2'b00;
            4'b1101: data[3:2] = 2'b01;
            4'b1011: data[3:2] = 2'b10;
            4'b0111: data[3:2] = 2'b11;
            default: data[3:2] = 2'b00;
        endcase

        case (col)
            3'b110: begin 
                data[1:0] = 2'b00; 
                freeze = 1'b1;
                end
            3'b101: begin
                data[1:0] = 2'b01;
                freeze = 1'b1; 
                end
            3'b011: begin
                data[1:0] = 2'b10;
                freeze = 1'b1;
                end
            default: begin
                data[1:0] = 2'b00;
                freeze = 1'b0;
                end
        endcase

        case (data)
            4'b0000: dataConverted = 4'd1;
            4'b0001: dataConverted = 4'd2;
            4'b0010: dataConverted = 4'd3;
            4'b0100: dataConverted = 4'd4;
            4'b0101: dataConverted = 4'd5;
            4'b0110: dataConverted = 4'd6;
            4'b1000: dataConverted = 4'd7;
            4'b1001: dataConverted = 4'd8;
            4'b1010: dataConverted = 4'd9;
            4'b1101: dataConverted = 4'd0;
            4'b1110: dataConverted = 4'b1111;
            default: dataConverted = 4'd0;
        endcase

        if (freeze == 1'b1) begin
            d = dataConverted;
        end else begin
            d = 4'bZZZZ;
        end
    end
endmodule