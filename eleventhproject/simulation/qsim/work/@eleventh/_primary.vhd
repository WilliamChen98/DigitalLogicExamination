library verilog;
use verilog.vl_types.all;
entity Eleventh is
    port(
        key             : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        SWC             : in     vl_logic_vector(3 downto 0);
        SWR             : out    vl_logic_vector(3 downto 0)
    );
end Eleventh;
