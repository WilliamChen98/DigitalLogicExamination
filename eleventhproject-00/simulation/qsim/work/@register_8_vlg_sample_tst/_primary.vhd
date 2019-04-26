library verilog;
use verilog.vl_types.all;
entity Register_8_vlg_sample_tst is
    port(
        add             : in     vl_logic_vector(2 downto 0);
        inr             : in     vl_logic_vector(3 downto 0);
        ld              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Register_8_vlg_sample_tst;
