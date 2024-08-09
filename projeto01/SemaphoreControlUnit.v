module SemaphoreControlUnit (
    input wire clock, reset, trigger,

    output reg[1:0] TimerMux,
    output reg[2:0] Principal_Road,
    output reg[2:0] Secondary_Road,
    output reg[1:0] Principal_Pedestrian,
    output reg[1:0] Secondary_Pedestrian,

    output reg[1:0] StateFlag
);
    
    //estados
    parameter   PrincipalGreen = 2'h0,
				PrincipalYellow = 2'h1,
                SecondaryGreen = 2'h2,
                SecondaryYellow = 2'h3;

     reg[1:0] PresentState,NextState;

     //bloco sequencial
    always @(posedge reset or posedge clock) begin
        if(reset) begin
            PresentState <= PrincipalGreen;
        end
        else begin
            PresentState <= NextState;
        end
    end

    //bloco combinacional
    always @(*) begin
        case(PresentState)                  // 3'bxyz -> vermelho | amarelo | verde         2'bxz -> vermelho | verde
            default: begin
                Principal_Road = 3'b001;
                Secondary_Road = 3'b100;

                Principal_Pedestrian = 2'b10;
                Secondary_Pedestrian = 2'b01;

                TimerMux = 2'b00;
                NextState = PrincipalGreen;
            end
            PrincipalGreen: begin

                Principal_Road = 3'b001;
                Secondary_Road = 3'b100;

                Principal_Pedestrian = 2'b10;
                Secondary_Pedestrian = 2'b01;

                TimerMux = 2'b00;

                if(trigger) begin
                    NextState = PrincipalYellow;
                    TimerMux = 2'b10;
                end
                else begin
                    NextState = PrincipalGreen;
                end

            end

            PrincipalYellow: begin

                Principal_Road = 3'b010;
                Secondary_Road = 3'b100;

                Principal_Pedestrian = 2'b10;
                Secondary_Pedestrian = 2'b10;

                TimerMux = 2'b10;

                if(trigger) begin
                    NextState = SecondaryGreen;
                    TimerMux = 2'b01;
                end
                else begin
                    NextState = PrincipalYellow;
                end

            end

            SecondaryGreen: begin

                Principal_Road = 3'b100;
                Secondary_Road = 3'b001;

                Principal_Pedestrian = 2'b01;
                Secondary_Pedestrian = 2'b10;

                TimerMux = 2'b01;

                if(trigger) begin
                    NextState = SecondaryYellow;
                    TimerMux = 2'b10;
                end
                else begin
                    NextState = SecondaryGreen;
                end

            end

            SecondaryYellow: begin

                Principal_Road = 3'b001;
                Secondary_Road = 3'b010;

                Principal_Pedestrian = 2'b10;
                Secondary_Pedestrian = 2'b10;

                TimerMux = 2'b10;

                if(trigger) begin
                    NextState = PrincipalGreen;
                    TimerMux = 2'b00;
                end
                else begin
                    NextState = SecondaryYellow;
                end
            end
        endcase
        StateFlag = PresentState;
    end

endmodule