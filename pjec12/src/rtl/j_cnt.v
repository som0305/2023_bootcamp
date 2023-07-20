module j_cnt(
    input clk,
    input n_rst,
    output reg [3:0] q
);


always @(posedge clk or negedge n_rst) begin
    if (!n_rst) 
        q <= 4'b0000;
    else begin
        q[0] <= ~q[3];
        q[1] <= q[0];
        q[2] <= q[1];
        q[3] <= q[2];
    end

end




endmodule 

