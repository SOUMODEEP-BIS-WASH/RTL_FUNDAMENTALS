`timescale 1ns/1ps

module universal_counter #(parameter  N=4 )(
    input clk,rst,prst,en,mode,
    input [N-1:0]prst_data,
    output reg [N-1:0]Q
);

always @(posedge clk) begin
   if (rst) begin
    Q<={N{1'b0}};
   end 
   else if (prst) begin
    Q<=prst_data;
   end
   else if(en) begin
    case (mode)
        1'b0:Q<=Q+1;
        1'b1:Q<=Q-1;
        default: Q<=Q;
    endcase
   end
   else begin
    Q<=Q;
   end
end
    
endmodule