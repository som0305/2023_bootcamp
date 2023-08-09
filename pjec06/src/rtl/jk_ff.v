module jk_ff(
    input j,
    input k,
    input clk,
    input n_rst,
 
    output reg Q
);

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        Q <= 1'b0;
    end
    else if ((j==0)&&(k==0))
        Q <= Q;
    else if ((j==0)&&(k==1))
        Q <= 1'b0;
    else if ((j==1)&&(k==0))
        Q <= 1'b1;
    else     
        Q <= ~Q;
    
end


endmodule 
