module top_module (
    input d, 
    input ena,
    output q);
    reg q_t;
    always@(ena,d)
        if (ena)
        q_t<=d;
    assign  q=q_t;
endmodule

