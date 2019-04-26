library verilog;
use verilog.vl_types.all;
entity testoften is
    port(
        out_num         : out    vl_logic_vector(7 downto 0);
        out_sel         : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clear           : in     vl_logic;
        pause           : in     vl_logic
    );
end testoften;
