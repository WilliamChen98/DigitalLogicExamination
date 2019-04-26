library verilog;
use verilog.vl_types.all;
entity Demux8Way_vlg_check_tst is
    port(
        outd            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Demux8Way_vlg_check_tst;
