library verilog;
use verilog.vl_types.all;
entity Task3_16071005 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        load            : in     vl_logic;
        din             : in     vl_logic_vector(2 downto 0);
        count           : out    vl_logic_vector(2 downto 0)
    );
end Task3_16071005;
