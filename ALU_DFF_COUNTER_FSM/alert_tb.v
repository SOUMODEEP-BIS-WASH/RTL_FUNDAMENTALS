`timescale 1ns/1ps

module alert_tb;
    reg [3:0]A,B;
    reg [2:0]S;
    reg clk=0,rst,load;
    //wire [3:0]DFF_prev;
    wire [3:0]ALU_out,DFF_out;
    wire [1:0]count;
    wire en;
    wire count_4_alert;

alert_mechanism #(4,2) uut(A,B,S,clk,rst,load,ALU_out,DFF_out,count,en,count_4_alert);

always #5 clk=~clk;

initial begin
    $dumpfile("alert_tb.vcd");   // VCD file name
    $dumpvars(0, alert_tb);
    $monitor("Time=%4t | A=%4b | B=%4b | S=%3b | clk=%b | ALU_OUT=%4b | DFF_OUT=%4b | EN=%b |  Count=%2b | alert=%b",$time,A,B,S,clk,ALU_out,DFF_out,en,count,count_4_alert);
    rst=1;A=4'b0000;B=4'b0000;load=0;S=3'b000;#10;
    rst=0;load=1;
    A=4'b1001;B=4'b0110;S=3'b001;#10;
    A=4'b1001;B=4'b0110;S=3'b010;#10;
    A=4'b1001;B=4'b0110;S=3'b011;#10;
    A=4'b1001;B=4'b0110;S=3'b100;#10;
    A=4'b1001;B=4'b0110;S=3'b101;#10;
    $finish;
end


endmodule
