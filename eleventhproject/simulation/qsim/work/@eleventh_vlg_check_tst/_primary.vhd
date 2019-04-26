library verilog;
use verilog.vl_types.all;
entity Eleventh_vlg_check_tst is
    port(
        key             : in     vl_logic_vector(3 downto 0);
        SWR             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Eleventh_vlg_check_tst;
