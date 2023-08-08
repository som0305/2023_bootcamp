library verilog;
use verilog.vl_types.all;
entity piece_CLA is
    port(
        g               : in     vl_logic_vector(7 downto 0);
        p               : in     vl_logic_vector(7 downto 0);
        cin             : in     vl_logic;
        carry           : out    vl_logic_vector(7 downto 0)
    );
end piece_CLA;
