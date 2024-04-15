//A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 255-bit input vector.

module top_module( 
    input [254:0] in,
    output [7:0] out );
    reg [7:0] o;
 
    
    always@(in) begin
       o=8'd0;
        for(integer i=0;i<255;i=i+1) begin
            if(in[i])
            o=o+8'd1;
    end
    end
    assign out=o;
endmodule
