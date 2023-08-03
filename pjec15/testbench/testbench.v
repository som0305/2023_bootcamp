module testbench();

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;


RCA_4bit uut_rca_32bit(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    cin = 1'b0;

    a = 4'b0000;
    b = 4'b0001;
    #10

    cin = 1'b1;
    a=4'b0011;
    b=4'b0110;
    #10;
   /* a = 32'h00000005;
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
    #20*/


    $stop;
end

endmodule 

