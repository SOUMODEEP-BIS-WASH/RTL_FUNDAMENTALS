`timescale 1ns / 1ps


module counter_tb;
//localparam N=4;
reg clk,rst,en;
wire[1:0]Q_up,Q_down;
up_counter up(clk,en,rst,Q_up);
//down_counter #(N) down(clk,rst,en,Q_down);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$display("TIME RST EN Q_up Q_down");
$monitor("%4t %b %b %4b %4b",$time,rst,en,Q_up,Q_down);
rst=1;en=0;#10;
rst=0;
repeat(10) begin
en=1;#10;
end
rst=1;en=0;#10;
rst=0;
repeat(8) begin
en=1;#10;
end
en=0;#10
rst=1;#10;
$finish;
end
endmodule
