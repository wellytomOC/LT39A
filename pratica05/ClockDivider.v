module ClockDivider #(
    parameter CLOCK_FREQ = 50000000  // Frequência do relógio de entrada em Hz (por exemplo, 50 MHz)
) (
    input wire clock,
    output reg clock1Hz,
    output reg clock20Hz,
    output reg clock500Hz
);

    // Frequências desejadas das saídas
    localparam FREQ1HZ  = 1;
    localparam FREQ20HZ = 20;
    localparam FREQ500HZ = 500;

    // Cálculo dos divisores baseados na frequência do relógio de entrada
    localparam DIV1HZ = (CLOCK_FREQ / FREQ1HZ) / 2;
    localparam DIV20HZ = (CLOCK_FREQ / FREQ20HZ) / 2;
    localparam DIV500HZ = (CLOCK_FREQ / FREQ500HZ) / 2;

    // Contadores
    reg [31:0] counter1Hz = 0;
    reg [31:0] counter20Hz = 0;
    reg [31:0] counter500Hz = 0;

    always @(posedge clock) begin
        // Clock divider for 1Hz
        if (counter1Hz == DIV1HZ - 1) begin
            counter1Hz <= 0;
            clock1Hz <= ~clock1Hz;
        end else begin
            counter1Hz <= counter1Hz + 1;
        end
        
        // Clock divider for 20Hz
        if (counter20Hz == DIV20HZ - 1) begin
            counter20Hz <= 0;
            clock20Hz <= ~clock20Hz;
        end else begin
            counter20Hz <= counter20Hz + 1;
        end
        
        // Clock divider for 500Hz
        if (counter500Hz == DIV500HZ - 1) begin
            counter500Hz <= 0;
            clock500Hz <= ~clock500Hz;
        end else begin
            counter500Hz <= counter500Hz + 1;
        end
    end

endmodule