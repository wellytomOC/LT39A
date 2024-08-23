module arquitetura (
    input wire clock, reset,
    input wire[3:0] AddressIn,

    input wire[2:0] col,
    output wire[3:0] row,

    output wire RS,RW,
    output wire E,
    output wire[7:0] DB,
    output wire LCD_Blon, LCD_On
);

    wire clock50MHz, clock500Hz, clock1Hz, dav;
    wire[3:0] AddressOut, KeypadData;
    Entrada inst00 (clock, reset, clock50MHz, clock500Hz, clock1Hz, AddressIn, AddressOut, col, row, KeypadData, dav);

    wire[3:0] DataOut;
    wire[1:0] PresentStateFlag;
    Sistema inst01(clock50MHz, clock1Hz, reset, dav, KeypadData, AddressOut, DataOut, PresentStateFlag);

    Saida inst03(clock50MHz, clock500Hz, reset, AddressOut, DataOut, KeypadData, PresentStateFlag, RS, RW, E, DB, LCD_Blon, LCD_On);
endmodule