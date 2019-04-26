library verilog;
use verilog.vl_types.all;
entity Tenth is
    port(
        out_min         : out    vl_logic_vector(7 downto 0);
        clear           : in     vl_logic;
        pause           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        out_ms          : out    vl_logic_vector(7 downto 0);
        out_num         : out    vl_logic_vector(7 downto 0);
        out_s           : out    vl_logic_vector(7 downto 0);
        out_sel         : out    vl_logic_vector(7 downto 0)
    );
end Tenth;
