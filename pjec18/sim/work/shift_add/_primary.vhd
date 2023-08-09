library verilog;
use verilog.vl_types.all;
entity shift_add is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        start           : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        p               : out    vl_logic_vector(7 downto 0)
    );
end shift_add;
