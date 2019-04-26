library verilog;
use verilog.vl_types.all;
entity BCD is
    port(
        binary          : in     vl_logic_vector(7 downto 0);
        hund            : out    vl_logic_vector(3 downto 0);
        ten             : out    vl_logic_vector(3 downto 0);
        one             : out    vl_logic_vector(3 downto 0)
    );
end BCD;
