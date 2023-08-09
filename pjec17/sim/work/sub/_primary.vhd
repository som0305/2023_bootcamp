library verilog;
use verilog.vl_types.all;
entity sub is
    port(
        bar             : in     vl_logic_vector(3 downto 0);
        s_bar           : in     vl_logic_vector(3 downto 0)
    );
end sub;
