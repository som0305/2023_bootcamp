module sub(
    input [3:0] bar,
    input [3:0]s_bar
);

assign s_bar = ~bar + 1'b1;

endmodule