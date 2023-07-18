`timescale 1ns/1ps
`define T_CLK 10

module testbench();
reg clk;
reg n_rst;
wire [3:0]out;

always #5 clk = ~clk;

shift_register uut_shift_register(
    .clk(clk),
    .n_rst(n_rst),
    .out(out)
);


initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #(`T_CLK *0.7);
    n_rst = 1'b1;
    #(`T_CLK *5);
    
     $stop;


end

endmodule


