//A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 3-bit input vector.
module top_module( 
    input [2:0] in,
    output [1:0] out );

    reg [1:0] t;

    //initial t=2'b00;
    always@(in) begin
        case(in)
            3'd0:t=2'd0;
             3'd1:t=2'd1;
             3'd2:t=2'd1;
             3'd3:t=2'd2;
             3'd4:t=2'd1;
             3'd5:t=2'd2;
             3'd6:t=2'd2;
             3'd7:t=2'd3;
            default: t=0;  
        endcase
    end
    assign out=t;
endmodule

