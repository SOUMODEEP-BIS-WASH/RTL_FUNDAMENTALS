`timescale 1ns / 1ps

module ALU_tb;
    reg [3:0]A; 
    reg [3:0]B; 
    reg [2:0]S;
    wire [3:0]Y;
ALU uut(A,B,S,Y);
initial begin 
    $monitor("A=%4b| B=%4b| S=%4b| Y=%4b|",A,B,S,Y);
        A=4'b0110;B=4'b0001;S=3'b000;#10;
        A=4'b0110;B=4'b0001;S=3'b001;#10;
        A=4'b0110;B=4'b0001;S=3'b010;#10;
        A=4'b0110;B=4'b0001;S=3'b011;#10;
        A=4'b0110;B=4'b0001;S=3'b100;#10;
        A=4'b0110;B=4'b0001;S=3'b101;#10;
        A=4'b0110;B=4'b0001;S=3'b110;#10;
        A=4'b0110;B=4'b0001;S=3'b111;#10;
    $finish;
end
endmodule
