library verilog;
use verilog.vl_types.all;
entity parity is
    port(
        data_in         : in     vl_logic_vector(6 downto 0);
        parity_out      : out    vl_logic
    );
end parity;
