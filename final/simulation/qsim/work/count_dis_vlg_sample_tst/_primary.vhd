library verilog;
use verilog.vl_types.all;
entity count_dis_vlg_sample_tst is
    port(
        clear_dis       : in     vl_logic;
        clk_dis         : in     vl_logic;
        p_dis           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end count_dis_vlg_sample_tst;
