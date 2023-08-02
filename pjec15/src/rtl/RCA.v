module RCA(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout

);

wire [2:0] carry;

RCA_8bit RCA01(
    .a(a[7:0]),
    .b(b[7:0]),
    .sum(sum1),
    .cout(carry[0])
);

RCA_8bit RCA02(
    .a(a[15:8]),
    .b(b[15:8]),
    .cin(carry[0]),
    .sum(sum[15:8]),
    .cout(carry[1])
);

RCA_8bit RCA03(
    .a(a[23:16]),
    .b(b[23:16]),
    .cin(carry[1]),
    .sum(sum[23:16]),
    .cout(carry[2])
);

RCA_8bit RCA04(
    .a(a[31:24]),
    .b(b[31:24]),
    .cin(carry[2]),
    .sum(sum[31:24]),
    .cout(out)

);

endmodule 