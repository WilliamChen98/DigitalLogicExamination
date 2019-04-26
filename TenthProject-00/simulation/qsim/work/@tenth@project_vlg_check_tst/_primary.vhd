library verilog;
use verilog.vl_types.all;
entity TenthProject_vlg_check_tst is
    port(
        out_num         : in     vl_logic_vector(7 downto 0);
        out_sel         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end TenthProject_vlg_check_tst;
