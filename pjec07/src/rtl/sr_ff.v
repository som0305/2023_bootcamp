module sr_ff(
    input s,
    input r,
    input clk,
    input n_rst,

    output reg  Q 
); 


always @(posedge clk or negedge n_rst)begin
    if (!n_rst) begin
        Q <=1'b0;
    end
    else if ((s == 1'b0)&&(r == 1'b0)) begin
        Q <= Q;
    end
    else if ((s==1'b0)&&(r==1'b1)) begin
        Q <= 1'b0;
    end

    else if ((s==1'b1)&&(r==1'b0)) begin
        Q<=1'b1;
    end
    else begin
        Q <=1'bz;
    end

end


endmodule 
