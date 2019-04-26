library verilog;
use verilog.vl_types.all;
entity \NinthProject-00\ is
    port(
        flag            : out    vl_logic;
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        state           : out    vl_logic_vector(3 downto 0)
    );
end \NinthProject-00\;
