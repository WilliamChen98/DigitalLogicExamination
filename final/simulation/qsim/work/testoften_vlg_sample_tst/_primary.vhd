library verilog;
use verilog.vl_types.all;
entity testoften_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        pause           : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end testoften_vlg_sample_tst;
