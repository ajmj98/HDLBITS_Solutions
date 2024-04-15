module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    

assign out= in[ 4*sel+:4]; //  [sel*4+3:sel*4] : from sel*4 to 4 bits left (including sel*4 th bit)

endmodule
