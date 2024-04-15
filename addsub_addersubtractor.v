//
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_t;
    assign b_t=b ^ {32{sub}};
   wire cout; 
    add16 A1(.a(a[15:0]),.b(b_t[15:0]),.cin(sub),.sum(sum[15:0]),.cout(cout));
    add16 A12(.a(a[31:16]),.b(b_t[31:16]),.cin(cout),.sum(sum[31:16]),.cout());
    
endmodule

