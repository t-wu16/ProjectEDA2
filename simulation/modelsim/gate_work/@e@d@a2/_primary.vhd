library verilog;
use verilog.vl_types.all;
entity EDA2 is
    port(
        C               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        R               : in     vl_logic_vector(3 downto 0);
        disp            : out    vl_logic_vector(6 downto 0);
        scan            : out    vl_logic_vector(3 downto 0)
    );
end EDA2;
