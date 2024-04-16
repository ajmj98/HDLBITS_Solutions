module fadd(input a,b,cin,output sum,coutt);
    assign {coutt,sum}= a+b+cin;
endmodule

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
   
    fadd S1(a[0],b[0],cin,sum[0],cout[0]);
    fadd S2(a[1],b[1],cout[0],sum[1],cout[1]);
    fadd S3(a[2],b[2],cout[1],sum[2],cout[2]);
endmodule
