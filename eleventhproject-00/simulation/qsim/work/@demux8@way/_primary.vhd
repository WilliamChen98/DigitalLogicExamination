library verilog;
use verilog.vl_types.all;
entity Demux8Way is
    port(
        ind             : in     vl_logic;
        seld            : in     vl_logic_vector(2 downto 0);
        outd            : out    vl_logic_vector(7 downto 0)
    );
end Demux8Way;
