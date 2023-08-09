module testbench();
reg [31:0] a, b;
reg cin;
wire cout;
wire [31:0] sum;

CLA_32bit uut_CLA_32bit(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(sum)
);

initial begin
    cin = 1'b0; 
   a = 32'h00000001;
   b = 32'h0000ffff;
   #20;

   a = 32'h0000a1b2;
   b = 32'h0000a112;
   #20;

    cin = 1'b1;
   a = 32'h0000f9a0;
   b = 32'h0000d7e8;
   #20;

   a = 32'h00000fff;
   b = 32'hf0010000;
   #20;

   $stop;

end


endmodule 


