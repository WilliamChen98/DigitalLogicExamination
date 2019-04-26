library verilog;
use verilog.vl_types.all;
entity price_count_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dis             : in     vl_logic_vector(11 downto 0);
        finish          : in     vl_logic;
        reset           : in     vl_logic;
        stop            : in     vl_logic;
        t_min           : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end price_count_vlg_sample_tst;
