module RCA_4bit(
    input [3:0] a, b,
    cin,
    output [3:0]sum,
    cout
);

wire [2:0] carry;

full_addr FA1( .a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(carry[0]));
full_addr FA2( .a(a[1]), .b(b[1]), .cin(carry[0]), .sum(sum[1]), .cout(carry[1]));
full_addr FA3( .a(a[2]), .b(b[2]), .cin(carry[1]), .sum(sum[2]), .cout(carry[2]));
full_addr FA4( .a(a[03]), .b(b[3]), .cin(carry[2]), .sum(sum[3]), .cout(cout));

endmodule 