library verilog;
use verilog.vl_types.all;
entity count_dis is
    port(
        out_dis         : out    vl_logic_vector(11 downto 0);
        clk_dis         : in     vl_logic;
        p_dis           : in     vl_logic;
        clear_dis       : in     vl_logic
    );
end count_dis;
