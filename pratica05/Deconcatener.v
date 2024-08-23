module Deconcatener (
    input wire[3:0] AddressIn, DataIn, KeypadDataIn,

    output wire[3:0] AddressInUnit, AddressInTens, DataInUnit, DataInTens, KeypadDataInUnit, KeypadDataInTens
);

assign AddressInUnit = AddressIn % 10;
assign AddressInTens = AddressIn / 10;

assign DataInUnit = DataIn % 10;
assign DataInTens = DataIn / 10;

assign KeypadDataInUnit = KeypadDataIn % 10;
assign KeypadDataInTens = KeypadDataIn / 10;
    
endmodule