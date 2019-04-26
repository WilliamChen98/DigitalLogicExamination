library verilog;
use verilog.vl_types.all;
entity TenthProject is
    port(
        clk             : in     vl_logic;
        sel             : in     vl_logic;
        rst             : in     vl_logic;
        clr             : in     vl_logic;
        out_sel         : out    vl_logic_vector(7 downto 0);
        out_num         : out    vl_logic_vector(7 downto 0)
    );
end TenthProject;
