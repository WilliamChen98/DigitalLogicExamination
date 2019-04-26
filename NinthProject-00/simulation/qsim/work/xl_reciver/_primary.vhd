library verilog;
use verilog.vl_types.all;
entity xl_reciver is
    port(
        clk             : in     vl_logic;
        check           : in     vl_logic;
        flag            : out    vl_logic;
        c_state         : out    vl_logic_vector(7 downto 0);
        n_state         : out    vl_logic_vector(7 downto 0)
    );
end xl_reciver;
