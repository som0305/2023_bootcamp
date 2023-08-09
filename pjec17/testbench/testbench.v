module testbench();
reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

RCA_4bit rca_4bit(.a(a), .b(b), .cin(cin), .cout(cout), sum(sum));

initial begin
    cin = 1'b0;
    a = 4'b0001;
    b = 4'b0011;
    #10;

    a = 4'b0110;
    b = 4'b0011;
    #10

    cin = 1'b0;
    a = 4'b0110;
    b = 4'b1010;
    #10;

    a = 4'b0101;
    b = 4'b0011;
    #10;

    #stop;
end


endmodule 