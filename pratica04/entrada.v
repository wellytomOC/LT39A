module entrada (
    input wire clock50Mhz,
    input wire reset,

    output wire clock1Hz    
);
    
    clockDivider clk1Hz (clock50Mhz, reset, clock1Hz);


endmodule