module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);       
    reg [31:0] in_f;
  
    always@(posedge clk)begin
        in_f<=in;
        out <=(out | (~in & in_f))& {32{~reset}};
    end
   

endmodule

