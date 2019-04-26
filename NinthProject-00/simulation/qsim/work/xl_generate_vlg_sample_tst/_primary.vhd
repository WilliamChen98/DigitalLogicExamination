library verilog;
use verilog.vl_types.all;
entity xl_generate_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        ing             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end xl_generate_vlg_sample_tst;
