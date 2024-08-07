module Sistema (
    input wire clock, clock1Hz, reset,

    input wire dav,
    input wire[3:0] dataIn,
    output wire[1:0] PhraseSel,

    output wire[6:0] Tpv, Tsv, Ta,
    output wire[6:0] timeRemaining,

    output wire[2:0] Principal_Road,
    output wire[2:0] Secondary_Road,
    output wire[1:0] Principal_Pedestrian,
    output wire[1:0] Secondary_Pedestrian,
    output wire[1:0] StateFlag

);

    //ManualControl
    wire[5:0] RegisterSelect;
    ManualControlUnit inst01(dav, reset, dataIn, RegisterSelect, PhraseSel);

    //Register bank
    RegisterBank regBank01 (reset, RegisterSelect, dataIn, Tpv, Tsv, Ta);

    //Timer Multiplexer
    wire[6:0] MuxOut;
    TimerMultiplexer TimerMux01 (MuxSel, Tpv, Tsv, Ta, MuxOut);

    //Timer
    wire trigger;
    Timer Timer01  (MuxOut, clock1Hz, reset, trigger, timeRemaining);

    //Semaphore control
    wire[1:0] MuxSel;
    SemaphoreControlUnit SCU01 (clock1Hz, reset, trigger, MuxSel, Principal_Road, Secondary_Road, Principal_Pedestrian, Secondary_Pedestrian, StateFlag);
        
endmodule