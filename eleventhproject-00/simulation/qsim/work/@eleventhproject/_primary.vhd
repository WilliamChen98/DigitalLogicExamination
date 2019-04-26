library verilog;
use verilog.vl_types.all;
entity Eleventhproject is
    port(
        outs            : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rst             : in     vl_logic;
        SWC             : in     vl_logic_vector(3 downto 0);
        selo            : out    vl_logic_vector(7 downto 0);
        SWR             : out    vl_logic_vector(3 downto 0)
    );
end Eleventhproject;
