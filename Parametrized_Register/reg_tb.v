`timescale 1ns/1ps

module reg_tb;

reg [3:0]D1;
reg [7:0]D2;
reg [15:0]D3;

reg clk=0,rst,load;

wire [3:0]Q1;
wire [7:0]Q2;
wire [15:0]Q3;

n_bit_reg #(4) bit4(D1,clk,rst,load,Q1);
n_bit_reg #(8) bit8(D2,clk,rst,load,Q2);
n_bit_reg #(16) bit16(D3,clk,rst,load,Q3);

always #5 clk=~clk;

initial begin
    $dumpfile("reg_t.vcd");
    $dumpvars(0,reg_tb);
$monitor("time=%4t | D1=%4b | D2=%8b | D3=%16b | Q1=%4b | Q2=%8b | Q3=%16b",$time,D1,D2,D3,Q1,Q2,Q3);
rst=1;load=0;D1=4'b0000;D2=8'b00000000;D3=16'b0000000000000000;#10;
rst=0;load=1;D1=4'b0110;D2=8'b11000011;D3=16'b0011000011001100;#10;
rst=0;load=0;D1=4'b1111;D2=8'b11111111;D3=16'b1111111111111111;#10;
rst=0;load=1;D1=4'b1111;D2=8'b11111111;D3=16'b1111111111111111;#10;
$finish;
end
    
endmodule