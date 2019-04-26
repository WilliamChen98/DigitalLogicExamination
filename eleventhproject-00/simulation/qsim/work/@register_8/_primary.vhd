library verilog;
use verilog.vl_types.all;
entity Register_8 is
    port(
        inr             : in     vl_logic_vector(3 downto 0);
        ld              : in     vl_logic;
        add             : in     vl_logic_vector(2 downto 0);
        outr            : out    vl_logic_vector(3 downto 0)
    );
end Register_8;
