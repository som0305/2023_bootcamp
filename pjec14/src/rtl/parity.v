module parity(
    input clk,
    input n_rst,
    input [3:0] data,
    output reg out
);

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        out <= 1'b0;
    end    
    else begin
        out <= (data[0] ^ data[1] ^ data[2] ^ data[3]);

    end
    //parity even = 0 , odd =1

end

endmodule
        