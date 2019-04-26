library verilog;
use verilog.vl_types.all;
entity NinthProject_00 is
    port(
        flag            : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clr             : in     vl_logic;
        ing             : in     vl_logic_vector(7 downto 0);
        num             : out    vl_logic_vector(7 downto 0);
        md              : in     vl_logic_vector(1 downto 0);
        selmo           : out    vl_logic_vector(7 downto 0)
    );
end NinthProject_00;
