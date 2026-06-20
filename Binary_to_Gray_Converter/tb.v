`timescale 1ns/1ps

module tb;

reg [3:0]Bin;
wire [3:0]Gout;

BGConv uut(Bin,Gout);
integer i;
initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
    $monitor("| TIME = %4t | BINARY INPUT = %4b | GRAY OUTPUT = %4b |",$time,Bin,Gout);
    for(i=0;i<16;i=i+1) begin Bin = i; #10; end
    $finish;
end

    
endmodule