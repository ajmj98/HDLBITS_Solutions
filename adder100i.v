//Create a 100-bit binary ripple-carry adder by instantiating 100 full adders.
//The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum
//and carry out. 
module full_adder(
  input a, b, cin,
  output sum, cout
);
  
  assign {sum, cout} = {a^b^cin, ((a & b) | (b & cin) | (a & cin))};
 
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
genvar i;
    full_adder ADDR1(a[0],b[0],cin,sum[0],cout[0]);
   generate 
       for ( i=1;i<100;i=i+1)
           begin: B1
               full_adder ADDR(a[i],b[i],cout[i-1],sum[i],cout[i]);
           end
   endgenerate
    
                        endmodule

