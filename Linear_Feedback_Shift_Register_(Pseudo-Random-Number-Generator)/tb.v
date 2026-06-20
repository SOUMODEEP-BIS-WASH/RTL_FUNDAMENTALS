`timescale 1ns / 1ps


module tb;

reg clk=0,rst;
wire [3:0]Q;

LFSR uut(clk,rst,Q);

always #5 clk=~clk;

initial begin
    $dumpfile("tb.vcd");    
    $dumpvars(0,tb);
    $monitor("%4t %b %4b",$time,rst,Q);
    rst=1;#10;
    rst=0; repeat(4) #10;
    rst=1;#10
    rst=0;repeat(8)#10;
    rst=1;#10;
    $finish;
end

endmodule

