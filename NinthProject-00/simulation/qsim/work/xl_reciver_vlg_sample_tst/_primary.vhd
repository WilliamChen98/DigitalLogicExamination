library verilog;
use verilog.vl_types.all;
entity xl_reciver_vlg_sample_tst is
    port(
        check           : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end xl_reciver_vlg_sample_tst;
