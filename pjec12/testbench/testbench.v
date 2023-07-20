`timescale 1ns/1ps
`define T_CLK 10

module testbench();
reg clk;
reg n_rst;
wire [3:0] q;


j_cnt uut_j_cnt(
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





