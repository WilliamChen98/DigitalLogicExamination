library verilog;
use verilog.vl_types.all;
entity Second_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Second_vlg_check_tst;
