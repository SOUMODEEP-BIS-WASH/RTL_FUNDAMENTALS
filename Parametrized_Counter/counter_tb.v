`timescale 1ns/1ps

module counter_tb;
    reg [1:0]prst_1;
    reg [3:0]prst_2;
    reg [7:0]prst_3;

    reg clk=0,rst,prst,en;

    wire [1:0]Qu1;
    wire [3:0]Qu2;
    wire [7:0]Qu3;
    
    wire [1:0]Qd1;
    wire [3:0]Qd2;
    wire [7:0]Qd3;

    up_counter #(2) up2(prst_1,clk,rst,prst,en,Qu1);
    up_counter #(4) up4(prst_2,clk,rst,prst,en,Qu2);
    up_counter #(8) up8(prst_3,clk,rst,prst,en,Qu3);

    down_counter #(2) down2(prst_1,clk,rst,prst,en,Qd1);
    down_counter #(4) down4(prst_2,clk,rst,prst,en,Qd2);
    down_counter #(8) down8(prst_3,clk,rst,prst,en,Qd3);

    always #5 clk=~clk;

    initial begin
        $dumpfile("counter_tb.vcd");
        $dumpvars(0,counter_tb);

        $monitor("Time=%4t prst_1=%2b Qu1=%2b Qd1=%2b prst_2=%4b Qu2=%4b Qd2=%4b prst_3=%8b Qu3=%8b Qd3=%8b",$time,prst_1,Qu1,Qd1,prst_2,Qu2,Qd2,prst_3,Qu3,Qd3);
        rst=1;prst=0;en=0;prst_1=0;prst_2=0;prst_3=0;#10;
        rst=0;prst=0;en=1;prst_1=2'b11;prst_2=4'b1111;prst_3=8'b11111111;#30;
        rst=0;prst=0;en=0;prst_1=2'b11;prst_2=4'b1111;prst_3=8'b11111111;#10;
        rst=0;prst=0;en=1;prst_1=2'b11;prst_2=4'b1111;prst_3=8'b11111111;#30;
        rst=0;prst=1;en=0;prst_1=2'b11;prst_2=4'b1111;prst_3=8'b11111111;#10;
        rst=0;prst=0;en=1;prst_1=2'b11;prst_2=4'b1111;prst_3=8'b11111111;#30;   
        
        $finish;

    end

endmodule