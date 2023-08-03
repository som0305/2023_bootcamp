module testbench();

reg [31:0] a;
reg [31:0] b;
reg cin;
wire [31:0] sum;
wire cout;


RCA uut_rca_32bit(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    cin = 1'b0;
    a = 32'h00000005;
    b = 32'h00000002;
    #20;

    a = 32'h0000000f;
    b = 32'h0000ffff;
    #20;

    cin = 1'b1;
    a = 32'h00000008;
    b = 32'h00000005;
    #20;

    a = 32'h10000fff;
    b = 32'h0000ffff;
    #20


    $stop;
end

endmodule 

