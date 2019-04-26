library verilog;
use verilog.vl_types.all;
entity Eleventhproject_vlg_check_tst is
    port(
        outs            : in     vl_logic_vector(7 downto 0);
        selo            : in     vl_logic_vector(7 downto 0);
        SWR             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Eleventhproject_vlg_check_tst;
