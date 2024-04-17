module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    
     
    always@(posedge clk)
        begin
            if(E)
                if(L)
                    Q<=R;
                else
                    Q<=w;
            else
                if(L)
                    Q<=R;
            else
                Q<=Q;
                
        end
    
endmodule

