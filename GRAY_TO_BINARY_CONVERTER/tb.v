`timescale 1ns/1ps

module tb;

reg [3:0]Gin;
wire [3:0]Bout;

GBConv uut(Gin,Bout);

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
    $monitor("| TIME = %4t | INPUT GRAY = %4b | OUTPUT BINARY = %4b |",$time,Gin,Bout);
    Gin = 4'b0000; #10;
    Gin = 4'b0001; #10;
    Gin = 4'b0011; #10;
    Gin = 4'b0010; #10;
    Gin = 4'b0110; #10;
    Gin = 4'b0111; #10;
    Gin = 4'b0101; #10;
    Gin = 4'b0100; #10;
    Gin = 4'b1100; #10;
    Gin = 4'b1101; #10;
    Gin = 4'b1111; #10;
    Gin = 4'b1110; #10;
    Gin = 4'b1010; #10;
    Gin = 4'b1011; #10;
    Gin = 4'b1001; #10;
    Gin = 4'b1000; #10;
    $finish;
end

    
endmodule