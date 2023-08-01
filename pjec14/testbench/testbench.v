`timescale 1ns/1ps
`define T_CLK 10

module testbench();
reg clk;
reg n_rst;
reg [3:0] data;

wire out;

parity uut_patity(
    .clk(clk),
    .n_rst(n_rst),
    .data(data),
    .out(out)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #5;
    n_rst = 1'b1;
end

initial begin
    data = 4'b0000;
    #30;

    data = 4'b0010;
    #10;
    data = 4'b0011;
    #10;
    data = 4'b0111;
    #10;
    
    $stop;
end

endmodule