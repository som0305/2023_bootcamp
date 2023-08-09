 module testbench();
 reg clk;
 reg n_rst;
 reg t;
 wire Q;
 
 t_ff uut_jk_ff(
   .clk(clk), 
   .n_rst(n_rst),
   .t(t),
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
    t = 1'b0;
    #10;

    t = 1'b1;
    #10;

    $stop;

end

 endmodule 

 