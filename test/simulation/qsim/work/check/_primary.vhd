library verilog;
use verilog.vl_types.all;
entity check is
    port(
        ina             : in     vl_logic_vector(3 downto 0);
        inb             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic
    );
end check;
