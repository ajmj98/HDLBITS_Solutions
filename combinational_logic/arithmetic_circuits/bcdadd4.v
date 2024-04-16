module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
genvar i;
    wire [4:0]c;
    assign c[0]=cin;
    assign cout= c[4];
    generate for(i=0;i<4;i=i+1)
        begin: B1
            
            bcd_fadd A(a[i*4+:4],b[i*4+:4],c[i],c[i+1],sum[i*4+:4]);
        end
    endgenerate
endmodule

