library verilog;
use verilog.vl_types.all;
entity scaner is
    port(
        clk             : in     vl_logic;
        SWC             : in     vl_logic_vector(3 downto 0);
        SWR             : out    vl_logic_vector(3 downto 0);
        key             : out    vl_logic_vector(3 downto 0)
    );
end scaner;
