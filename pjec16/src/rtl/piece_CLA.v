module piece_CLA(
    input [7:0] g, 
    input [7:0] p,
    input cin,

    output [7:0] carry 
);

assign carry[0] = g[0] | (p[0] & cin);
assign carry[1] = g[1] | (p[1] & carry[0]);
assign carry[2] = g[2] | (p[2] & carry [1]);
assign carry[3] = g[3] | (p[3] & carry [2]);
assign carry[4] = g[4] | (p[4] & carry [3]);
assign carry[5] = g[5] | (p[5] & carry [4]);
assign carry[6] = g[6] | (p[6] & carry [5]);

endmodule 