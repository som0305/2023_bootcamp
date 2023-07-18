module b_cnt( 
    input clk,
    input n_rst,
   
   output reg [3:0] count
    
);

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        count <= 4'h0000;
    end
    else begin
        count <= count + 4'h0001;
    end
end 

endmodule 
