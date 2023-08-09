module dff( 
    input clk, 
    input D, 
    output reg Q, 
    output reg Q_bar
);


always @(posedge clk) 
    if (D == 0) begin
        Q <= 1'b0 ;
        Q_bar <= 1'b0;
    end
    else begin
        Q <= 1'b0 ;
        Q_bar <= 1'b1;
    end
    

endmodule 