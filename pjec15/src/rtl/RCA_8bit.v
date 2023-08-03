module RCA_8bit(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout,
);

wire carry;

RCA_4bit RCA_4bit_1( .a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(carry));
RCA_4bit RCA_4bit_2( .a(a[7:4]), .b(b[7:4]), .cin(carry), .sum(sum[7:4]), .cout(cout));

endmodule 


