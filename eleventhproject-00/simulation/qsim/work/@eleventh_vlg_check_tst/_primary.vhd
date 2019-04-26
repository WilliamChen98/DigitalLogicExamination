library verilog;
use verilog.vl_types.all;
entity Eleventh_vlg_check_tst is
    port(
        out_num         : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic;
        SWR             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Eleventh_vlg_check_tst;
