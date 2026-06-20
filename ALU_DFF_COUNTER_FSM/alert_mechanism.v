`timescale 1ns/1ps

module alert_mechanism #(parameter N1=4,N2=2)(
    input [3:0]A,B,
    input [2:0]S,
    input clk,rst,load,
    //output reg [3:0]DFF_prev,
    output [3:0]ALU_out,
    output [3:0]DFF_out,
    output [1:0]count,
    output  en,
    output count_4_alert
);
 
//wire [3:0]alu_out;
//wire [3:0]DFF_out;
//wire [1:0]count;
//reg en=0;

ALU #(N1) alu1(A,B,S,ALU_out);
n_bit_reg #(N1) dff1(ALU_out,clk,rst,load,DFF_out);

//wire en;
//assign DFF_prev =0
assign en = (ALU_out != DFF_out); // combinational


nbit_up_counter #(N2) up1(2'b00,clk,rst,1'b0,en,count);

count_alert_FSM fsm1(count,clk,rst,count_4_alert);


    
endmodule