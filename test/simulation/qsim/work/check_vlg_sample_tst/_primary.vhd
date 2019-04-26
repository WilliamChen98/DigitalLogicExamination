library verilog;
use verilog.vl_types.all;
entity check_vlg_sample_tst is
    port(
        ina             : in     vl_logic_vector(3 downto 0);
        inb             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end check_vlg_sample_tst;
