module full_addr(
    input [31:0] a,
    input [31:0] b, 
    input cin,
    output [31:0] sum, 
    output cout
);

wire sum1;
wire carry1, carry2;

half_addr uut_h1(
    .a(a),
    .b(b),
    .sum(sum1),
    .cout(carry1)
);

half_addr uut_h2(
    .a(sum1),
    .b(cin),
    .sum(sum),
    .cout(carry2)
);

assign count = carry1|carry2;

endmodule