module testbench();

reg clk;
reg j;
reg k; 
reg n_rst;

wire Q;

jk_ff uut_jk_ff(
    .clk(clk),
    .j(j),
    .k(k),
    .n_rst(n_rst),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #5
    
    clk= 1'b0;
    n_rst = 1'b1;
end

initial begin
    j = 1'b0;
    k = 1'b0;
    #10;

    j = 1'b0;
    k = 1'b1;
    #10;

    j = 1'b1;
    k = 1'b0;
    #10;

    j = 1'b1;
    k = 1'b1;
    #10;

    $stop;

end 

endmodule 







