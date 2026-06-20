`timescale 1ns/1ps

module tb;
    reg [1:0]S;
    reg [3:0]Din=4'b1111;
    reg ls_bit, rs_bit, clk=0, rst;
    wire [3:0]Dout;
    
    integer i; 
    reg [7:0]seq = 8'b00000101;

    bi_shift_reg uut(S,Din,ls_bit,rs_bit,clk,rst,Dout);

    always #5 clk = ~clk;

    initial 
    begin

    $dumpfile("tb.vcd");    
    $dumpvars(0,tb);

    $monitor("| Time = %4t | S = %2b | Din = %4b | ls = %b | rs = %b | rst = %b | Dout = %4b |",$time,S,Din,ls_bit,rs_bit,rst,Dout);
    
    //RESET TEST
    S=2'b11; ls_bit=0; rs_bit=0; rst=1; #10;
    
    //RIGHT SHIFT TEST 
    for (i=0;i<8;i=i+1) begin
        S=2'b01; ls_bit = 0; rs_bit=seq[i]; rst=0; #10;    
    end
    
    //LEFT SHIFT TEST 
    for (i=0;i<8;i=i+1) begin
        S=2'b10; ls_bit = seq[i]; rs_bit=0; rst=0; #10;    
    end
    
    //PARALLEL LOAD TEST
    S=2'b11; ls_bit=0; rs_bit=0; rst=0; #10;

    //HOLD TEST
    S=2'b00; ls_bit=0; rs_bit=0; rst=0; #10;
     
    $finish;    
    end

endmodule