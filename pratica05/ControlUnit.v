module ControlUnit (
    input wire clock, reset, dav, TimerTrigger,

    input wire[3:0] DataIn
);
    
    parameter
        Idle = 2'd0,
        Write = 2'd1,
        Read = 2'd2;
    reg[1:0] PresentState,NextState;

    //Bloco Sequencial
    always @(posedge dav or posedge reset) begin
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
                
            end
            Write: begin
               
            end
            Read: begin
                
            end
        endcase
    end

endmodule