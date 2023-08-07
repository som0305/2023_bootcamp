module CLA_32bit(
    input [31:0] a, b,
    input cin,
    output [31:0] sum,
    output cout
);

wire [2:0] carry;

CLA_8bit CLA_8bit_1(
    .a(a[7:0]),
    .b(b[7:0]),
    .cin(cin),
    .sum(sum[7:0]),
    .cout(carry[0])
);

CLA_8bit CLA_8bit_2(
    .a(a[15:8]),
    .b(b[15:8]),
    .cin(carry[0]),
    .sum(sum[15:0]),
    .cout(carry[1])
);

CLA_8bit CLA_8bit_3(
    .a(a[24:16]),
    .b(b[24:16]),
    .cin(carry[1]),
    .sum(sum[24:16]),
    .cout(carry[2])
);

CLA_8bit CLA_8bit_4(
    .a(a[31:25]),
    .b(b[31:25]),
    .cin(carry[2]),
    .sum(sum[31:25]),
    .cout(cout)
);

endmodule


/*RCA_8bit uut_RCA01(
    .a(a[7:0]),
    .b(b[7:0]),
    .cin(cin),
    .sum(sum[7:0]),
    .cout(carry[0])
); */



