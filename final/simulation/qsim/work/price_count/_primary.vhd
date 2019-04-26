library verilog;
use verilog.vl_types.all;
entity price_count is
    port(
        t_min           : in     vl_logic_vector(7 downto 0);
        dis             : in     vl_logic_vector(11 downto 0);
        reset           : in     vl_logic;
        finish          : in     vl_logic;
        stop            : in     vl_logic;
        clk             : in     vl_logic;
        price           : out    vl_logic_vector(9 downto 0)
    );
end price_count;
