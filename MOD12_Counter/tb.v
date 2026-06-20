`timescale 1ns/1ps

module tb;
 reg clk =0, rst,en;
 wire [3:0]count;
 integer i;
 count12 uut(en,clk,rst,count);

always #5 clk = ~clk;

initial begin
    $dumpfile("tb.vcd");   // VCD file name
    $dumpvars(0, tb);

    $monitor(" Time = %4t | EN = %b | RST = %b | COUNT =%4b ",$time,en,rst,count);
    rst=1'b1; en=1'b0; #10;
    
    for(i=0;i<15;i=i+1) begin
        rst=1'b0; en = 1'b1;#10;    
    end
    
    rst = 1'b1; en = 1'b0; #10;

    $finish;
    
end

endmodule