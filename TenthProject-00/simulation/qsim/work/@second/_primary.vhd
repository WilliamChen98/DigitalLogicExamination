library verilog;
use verilog.vl_types.all;
entity Second is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(7 downto 0)
    );
end Second;
