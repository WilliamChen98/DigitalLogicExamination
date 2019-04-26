library verilog;
use verilog.vl_types.all;
entity Task3_16071005_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(2 downto 0);
        load            : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Task3_16071005_vlg_sample_tst;
