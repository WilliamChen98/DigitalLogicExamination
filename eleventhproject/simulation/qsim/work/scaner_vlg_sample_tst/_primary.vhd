library verilog;
use verilog.vl_types.all;
entity scaner_vlg_sample_tst is
    port(
        SWC             : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end scaner_vlg_sample_tst;
