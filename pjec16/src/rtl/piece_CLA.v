module cla_piece(
    input [7:0] g,
    input [7:0] p,
    input cin,

    output [7:0] carry 
);

assign c[0] = g[0] | (p[0]&cin);
assign c[1] = g[1] | (p[1] & carry[0]);
assign c[2] = g[2] | (p[2] & carry [1]);
assign c[3] = g[3] | (p[3] & carry [2]);
assign c[4] = g[4] | (p[4] & carry [3]);
assign c[5] = g[5] | (p[5] & carry [4]);
assign c[6] = g[6] | (p[6] & carry [5]);

endmodule 