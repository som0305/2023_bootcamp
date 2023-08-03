module CLA_8bit(
    input [7:0] a, b,
    input cin,
    output [7:0] sum,
    output cout 
);

wire [7:0] p, g;
wire [7:0] carry;





//RCA_4bit RCA_4bit_1( .a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(carry));