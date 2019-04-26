library verilog;
use verilog.vl_types.all;
entity xl_generate is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        ing             : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic
    );
end xl_generate;
