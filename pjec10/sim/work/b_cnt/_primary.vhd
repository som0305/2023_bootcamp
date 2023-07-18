library verilog;
use verilog.vl_types.all;
entity b_cnt is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0)
    );
end b_cnt;
