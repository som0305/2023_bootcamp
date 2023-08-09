module t_ff(
    input t,
    input clk, n_rst,
    output reg Q
);

always @(posedge clk or negedge n_rst)begin
    if (!n_rst) begin
        Q <= 1'b0;
    end

    else if (t==0) begin
        Q<= Q;
    end

    else if (t==1) begin
        Q <= ~Q;
    end

end

endmodule 
