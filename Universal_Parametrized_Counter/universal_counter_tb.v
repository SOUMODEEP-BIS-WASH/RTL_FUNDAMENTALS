`timescale 1ns/1ps

module universal_counter_tb;
    reg [3:0]prst_data;
    reg clk=0,en1,prst1,rst1,mode1;
    wire [3:0]Q;

    universal_counter uut(.clk(clk),.prst(prst1),.rst(rst1),.mode(mode1),.en(en1),.prst_data(prst_data),.Q(Q));

    always #5 clk=~clk;

    initial begin
        $dumpfile("count_tb.vcd");
        $dumpvars(0,universal_counter_tb);
       
        $monitor("Time=%4t | prst_data=%4b | en=%b | mode=%b | prst=%b | Q=%4b",$time,prst_data,en1,mode1,prst1,Q);
       
        rst1=1;en1=0;prst1=0;mode1=0;prst_data=4'b1000;#10;
        rst1=0;en1=1;prst1=0;mode1=0;prst_data=4'b1000;#50;
        rst1=0;en1=0;prst1=0;mode1=0;prst_data=4'b1000;#10;
        rst1=0;en1=0;prst1=0;mode1=1;prst_data=4'b1000;#10;
        rst1=0;en1=1;prst1=0;mode1=1;prst_data=4'b1000;#30;
        rst1=0;en1=1;prst1=1;mode1=1;prst_data=4'b1000;#10;
        rst1=0;en1=1;prst1=0;mode1=1;prst_data=4'b1000;#20;
        rst1=0;en1=1;prst1=1;mode1=0;prst_data=4'b1000;#10;
        rst1=0;en1=1;prst1=0;mode1=0;prst_data=4'b1000;#20;

        $finish;
    end

endmodule