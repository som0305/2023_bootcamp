modyle gray_cnt(
    input clk, n_rst;
    input trig;
    output reg [2:0] q;
);

always @(posedge clk , negedge n_rst) begin

    