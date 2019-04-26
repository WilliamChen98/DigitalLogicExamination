library verilog;
use verilog.vl_types.all;
entity price_count_vlg_check_tst is
    port(
        price           : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end price_count_vlg_check_tst;
