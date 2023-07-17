library verilog;
use verilog.vl_types.all;
entity sr_ff is
    port(
        s               : in     vl_logic;
        r               : in     vl_logic;
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : out    vl_logic
    );
end sr_ff;
