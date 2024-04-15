//Build a 4-bit priority encoder. For this problem, if none of the input bits are high (i.e., input is zero), output zero. Note that a 4-bit number has 16 possible combinations.
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*) begin
        casex(in)
            4'bxxx1:pos=2'b00;
            4'bxx10:pos=2'b01;
            4'bx100:pos=2'b10;
            4'b1000:pos=2'b11;
            default: pos=2'b00;
        endcase
            
    end
    
endmodule

