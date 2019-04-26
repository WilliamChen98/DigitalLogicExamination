library verilog;
use verilog.vl_types.all;
entity Demux8Way_vlg_sample_tst is
    port(
        ind             : in     vl_logic;
        seld            : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Demux8Way_vlg_sample_tst;
