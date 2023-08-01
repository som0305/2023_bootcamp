module testbench();
reg clk;
reg n_rst;
wire [2:0] q;

gray_cnt uut_gray_cnt(
    .clk(clk),
    .n_rst(n_rst),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #5;
    
    n_rst = 1'b1;
    #5;

end


initial begin
    #200;
    $stop;

end

endmodule