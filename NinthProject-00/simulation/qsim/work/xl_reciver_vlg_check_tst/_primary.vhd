library verilog;
use verilog.vl_types.all;
entity xl_reciver_vlg_check_tst is
    port(
        c_state         : in     vl_logic_vector(7 downto 0);
        flag            : in     vl_logic;
        n_state         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end xl_reciver_vlg_check_tst;
