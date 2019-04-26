library verilog;
use verilog.vl_types.all;
entity count_dis_vlg_check_tst is
    port(
        out_dis         : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end count_dis_vlg_check_tst;
