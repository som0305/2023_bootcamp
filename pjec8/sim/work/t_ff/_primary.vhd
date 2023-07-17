library verilog;
use verilog.vl_types.all;
entity t_ff is
    port(
        t               : in     vl_logic;
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : out    vl_logic
    );
end t_ff;
