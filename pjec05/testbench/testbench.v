module testbench;
    reg D;
    reg clk;
    wire Q;
    wire Q_bar;

dff uut_dff(
    .D(D),
    .clk(clk),
    .Q(Q),
    .Q_bar(Q_bar)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b1;
    clk = 1'b0;


end

initial begin

    D = 1'b0;
    #5;

    D = 1'b1;
    #5;

    $stop;


end 

endmodule