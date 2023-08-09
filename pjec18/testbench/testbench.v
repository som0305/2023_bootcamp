`timescale 1ns/1ns
`define T_CLK 10

module testbench();
reg clk, n_rst, start;
reg [3:0] a;
reg [3:0] b;
wire [7:0] p;

shift_add Shift_add(
    .clk(clk),
    .n_rst(n_rst),
    .start(start),
    .a(a),
    .b(b),
    .p(p)
);

always #5 clk = ~clk;
initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    #20 n_rst = ~n_rst;
end


initial begin
    a = 4'b0001;
    b = 4'b0011;
    start = 1'b0;

    wait(n_rst == 1'b1);
    start = 1'b1;
    #(`T_CLK * 5)
    start = 1'b0;   
    a = 4'b0101;
    b = 4'b1100;
    
    #(`T_CLK) start = 1'b1;
    #(`T_CLK * 5) start = 1'b0;

    #(`T_CLK * 5) $stop;
end

endmodule 