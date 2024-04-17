module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
reg [7:0] in_f;
    always@(posedge clk) begin
        in_f<=in;
        anyedge<=in ^ in_f;
    end

endmodule
