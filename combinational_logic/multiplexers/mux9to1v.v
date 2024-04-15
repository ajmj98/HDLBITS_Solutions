module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    reg [15:0] tout;
    always@(*) begin
    case(sel)
        4'd0:  tout=a;
        4'd1:  tout=b;
        4'd2:  tout=c;
        4'd3:  tout=d;
        4'd4:  tout=e;
        4'd5:  tout=f;
        4'd6:  tout=g;
        4'd7:  tout=h;
        4'd8:  tout=i;
        default:  tout={16{1'b1}};
    endcase
    end
    assign out=tout;
endmodule

