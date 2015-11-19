library verilog;
use verilog.vl_types.all;
entity register_Mem is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        init            : in     vl_logic_vector(15 downto 0);
        d_in            : in     vl_logic_vector(15 downto 0);
        q_out           : out    vl_logic_vector(15 downto 0)
    );
end register_Mem;
