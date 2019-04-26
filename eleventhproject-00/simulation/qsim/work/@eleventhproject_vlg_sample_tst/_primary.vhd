library verilog;
use verilog.vl_types.all;
entity Eleventhproject_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rst             : in     vl_logic;
        SWC             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Eleventhproject_vlg_sample_tst;
