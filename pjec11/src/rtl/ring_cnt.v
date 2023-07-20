module ring_cnt(
    input clk,
    input n_rst,
    output reg [3:0] count
);


always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        count <= 4'h00001;
    end 
    else begin 
        count <= {count[2:0], count[3]};
    end
    /*else (count == 4'h1111) begin
        count <= 4'h0000;
    end */

end



endmodule