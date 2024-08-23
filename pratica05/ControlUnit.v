module ControlUnit (
    input wire clock1Hz, reset,

    input wire dav,
    output reg WriteEnable, MemoryEnable,

    input wire TimerTrigger,
    output reg[7:0] TimerRef,

    output wire[1:0] PresentStateFlag
);
    
    assign PresentStateFlag = PresentState;

    parameter
        Idle = 2'd0,
        Write = 2'd1,
        Read = 2'd2;
    reg[1:0] PresentState,NextState;

    //Bloco Sequencial
    always @(posedge clock1Hz or posedge reset) begin
        if (reset) begin
            PresentState <= Idle;
        end
        else begin
            PresentState <= NextState;
        end
    end

    //Transições
    always @(*) begin
        case(PresentState)
            default: begin
            end
            Idle: begin
                if(TimerTrigger) NextState <= Write;
                else NextState <= Idle;
            end
            Write: begin
                if(TimerTrigger) NextState <= Read;
                else NextState <= Write;
            end
            Read: begin
                if(TimerTrigger) NextState <= Idle;
                else NextState <= Read;
            end
        endcase
    end

    //Bloco Combinacional
    always @(*) begin
        case(PresentState)
            default: begin
            end
            Idle: begin
                TimerRef = 8'd5;
                WriteEnable = 1'd0;
                MemoryEnable = 1'd0;
                
            end
            Write: begin
                TimerRef = 8'd10;
                WriteEnable = dav;
                MemoryEnable = 1'd1;
            end
            Read: begin
                TimerRef = 8'd10;
                WriteEnable = 1'd0;
                MemoryEnable = 1'd1;
            end
        endcase
    end

endmodule