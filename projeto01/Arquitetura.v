module Arquitetura (
    input wire clock, reset,
    input wire[2:0] col,

    output wire[3:0] row,

    output wire RS,RW,
    output wire E,
    output wire[7:0] DB,
	 
	output wire LCD_Blon, LCD_On

);
    assign LCD_Blon = 1'b1;
    assign LCD_On = 1'b1;

    //Entrada
    wire clock50Mhz, clock1Hz, clock500Hz;
    wire[3:0] KeypadData;
    wire dav;
    Entrada inst01 (clock, reset, col, clock50Mhz, clock1Hz, clock500Hz,  row, KeypadData, dav);

    //Sistema
    wire[1:0] PhraseSel;
    wire[6:0] Tpv, Tsv, Ta;
    wire[6:0] timeRemaining;
    wire[2:0] Principal_Road;
    wire[2:0] Secondary_Road;
    wire[1:0] Principal_Pedestrian;
    wire[1:0] Secondary_Pedestrian;
    wire[1:0] StateFlag;
    Sistema inst02 (clock1Hz, reset, dav, KeypadData, PhraseSel, Tpv, Tsv, Ta, timeRemaining,
                    Principal_Road, Secondary_Road, Principal_Pedestrian, Secondary_Pedestrian, StateFlag);

    //Saida
    Saida inst03 (clock50Mhz, clock1Hz, reset, PhraseSel, StateFlag, Tpv, Tsv, Ta, timeRemaining,
                    Principal_Road, Secondary_Road, Principal_Pedestrian, Secondary_Pedestrian, RS, RW, E, DB);


endmodule