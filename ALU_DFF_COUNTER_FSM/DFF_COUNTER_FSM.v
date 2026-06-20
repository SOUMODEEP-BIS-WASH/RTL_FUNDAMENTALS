`timescale 1ns/1ps

module count_alert_FSM(
    input [1:0]Din,
    input clk,rst,
    output reg count_4_alert
);
parameter [1:0]S0 =2'b00,
          S1 =2'b01,
          S2 =2'b10,
          S3 =2'b11;
reg [1:0]PS,NS;

always @(posedge clk) begin
    if(rst) begin
        PS<=S0;
    end
    else begin
        PS<=NS;
    end
    
end

always @(*) begin
    case(PS)
        S0: NS=(Din==2'b00)?S1:S0;
        S1: NS=(Din==2'b01)?S2:S1;
        S2: NS=(Din==2'b10)?S3:S2;
        S3: NS=(Din==2'b11)?S0:S3;
        default: NS=S0;
    endcase
end

always @(*) begin
    case(PS)
        S3: count_4_alert=(Din==2'b11)?1'b1:1'b0;
        default: count_4_alert=1'b0;
    endcase
end

    
endmodule