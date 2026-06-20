`timescale 1ns / 1ps


module reg_tb;
//localparam N=4;
reg [3:0]D;
reg clk,rst,load;
wire [3:0]Q;
DFF uut(D,load,rst,clk,Q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$display("TIME D RST LOAD Q");
$monitor("%4t %4b %b %b %4b",$time,D,rst,load,Q);
rst=1;load=0;D=4'b0000;#10;
rst=0;load=1;D=4'b1001;#10;
rst=0;load=0;D=4'b1100;#10;
rst=0;load=1;D=4'b1100;#10;
rst=0;load=1;D=4'b1000;#10;
rst=0;load=1;D=4'b1101;#10;
rst=1;load=1;D=4'b1111;#10;
rst=0;load=1;D=4'b1111;#10;
$finish;
end


endmodule
