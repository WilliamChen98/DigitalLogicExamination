library verilog;
use verilog.vl_types.all;
entity NinthProject_00_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        ing             : in     vl_logic_vector(7 downto 0);
        md              : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end NinthProject_00_vlg_sample_tst;
