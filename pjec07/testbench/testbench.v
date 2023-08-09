 module testbench();
 reg clk;
 reg n_rst;
 reg s;
 reg r;
 

 wire Q;



sr_ff uut_jk_ff(
   .clk(clk), 
   .n_rst(n_rst),
   .s(s),
   .r(r),
   .Q(Q)
);


 always #5 clk = ~clk;

 initial begin  
    clk = 1'b0;
    n_rst = 1'b0;
    #10; 
    n_rst = 1'b1;
   end




 initial begin
    s = 1'b0;
    r = 1'b0;
    #10;

    s = 1'b0;
    r = 1'b1;
    #10;

    s = 1'b1;
    r = 1'b0;
    #10;

    s = 1'b1;
    r = 1'b1;
    #10;

    $stop;

 end
 
 endmodule 

  