module CLA_8bit(
    input [7:0] a, b,
    input cin,
    output [7:0] sum,
    output cout 
);

wire [7:0] p, g;
wire [7:0] carry;

 full_addr FA01(a[0], b[0], cin, sum[0], g[0], p[0]);
 full_addr FA02(a[1], b[1], carry[0], s[1], g[1], p[1]);
 full_addr FA03(a[2], b[2], carry[1], s[2], g[2], p[2]);
 full_addr FA04(a[3], b[3], carry[2], s[3], g[3], p[3]);

 full_addr FA05(a[4], b[4], carry[3], s[4], g[4], p[4]);
 full_addr FA06(a[5], b[5], carry[4], s[5], g[5], p[5]);
 full_addr FA07(a[6], b[6], carry[5], s[6], g[6], p[6]);
 full_addr FA08(a[7], b[7], carry[6], s[7], g[7], p[7]);



assign cout = carry[7];
piece_CLA CLA(g, p, ci, c);


endmodule 