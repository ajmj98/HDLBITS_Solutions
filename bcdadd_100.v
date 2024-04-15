//Instantiate 100 copies of bcd_fadd to create a 100-digit BCD ripple-carry adder. Your adder should add two 100-digit BCD numbers (packed into 400-bit vectors) and a carry-in to produce a 100-digit sum and carry out.
module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
genvar i;
    wire c_t[99:0];
        bcd_fadd A(a[3:0],b[3:0],cin,c_t[0],sum[3:0]);
    generate
        for (i=1;i<100;i=i+1) 
            begin:b1
                bcd_fadd B2(a[i*4+3:i*4],b[i*4+3:i*4],c_t[i-1],c_t[i],sum[i*4+3:i*4]);
            end
    
    endgenerate
    assign cout= c_t[99];
endmodule
