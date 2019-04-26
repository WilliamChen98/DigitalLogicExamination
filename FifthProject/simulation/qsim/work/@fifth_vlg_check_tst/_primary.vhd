library verilog;
use verilog.vl_types.all;
entity Fifth_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Fifth_vlg_check_tst;
