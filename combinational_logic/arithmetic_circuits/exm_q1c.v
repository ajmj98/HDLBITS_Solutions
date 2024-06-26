module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 wire c1;
    assign {c1,s} = a+b;
    assign overflow = (a[7] && b[7] && ~s[7]) || (~a[7] && ~b[7] && s[7]);

endmodule
