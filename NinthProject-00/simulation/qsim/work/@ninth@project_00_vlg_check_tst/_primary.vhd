library verilog;
use verilog.vl_types.all;
entity NinthProject_00_vlg_check_tst is
    port(
        flag            : in     vl_logic;
        num             : in     vl_logic_vector(7 downto 0);
        selmo           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end NinthProject_00_vlg_check_tst;
