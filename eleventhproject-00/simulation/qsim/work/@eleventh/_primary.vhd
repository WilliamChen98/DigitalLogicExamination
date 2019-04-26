library verilog;
use verilog.vl_types.all;
entity Eleventh is
    port(
        sel             : out    vl_logic;
        out_num         : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        SWC             : in     vl_logic_vector(3 downto 0);
        SWR             : out    vl_logic_vector(3 downto 0)
    );
end Eleventh;
