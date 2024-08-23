module Sistema (
    input wire clock50MHz, clock1Hz, reset,

    input wire dav,
    input wire[3:0] KeypadData,

    input wire[3:0] AddressIn,

    output wire[3:0] DataOut,

    output wire[1:0] PresentStateFlag

);

    wire WriteEnable, MemoryEnable, TimerTrigger;
    wire[7:0] TimerRef;
    ControlUnit inst00(clock1Hz, reset, dav, WriteEnable, MemoryEnable, TimerTrigger, TimerRef, PresentStateFlag);

    Timer inst01(TimerRef, clock1Hz, reset, TimerTrigger);

    wire MemoryClock;
    assign MemoryClock = (MemoryEnable == 1'b1) ? clock50MHz : 1'bZ;
    wire[3:0] RamData;
    RamMemory inst02(MemoryClock, WriteEnable, AddressIn, KeypadData, RamData);

    assign DataOut = (PresentStateFlag == 2'd2) ? RamData : 4'bZZZZ;
    
endmodule