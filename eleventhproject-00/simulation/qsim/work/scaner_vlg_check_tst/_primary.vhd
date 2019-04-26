library verilog;
use verilog.vl_types.all;
entity scaner_vlg_check_tst is
    port(
        SWR             : in     vl_logic_vector(3 downto 0);
        key             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end scaner_vlg_check_tst;
