library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity DECODER is
  port(
    instr      : in std_logic_vector(15 downto 0);
    op_code    : out std_logic_vector(6 downto 0);
    ra         : out std_logic_vector(2 downto 0);
    rb         : out std_logic_vector(2 downto 0);
    rc         : out std_logic_vector(2 downto 0);
    c1         : out std_logic_vector(3 downto 0);
    disp_s     : out std_logic_vector(5 downto 0);
    disp_l     : out std_logic_vector(8 downto 0);
    a0_format  : out std_logic;
    a1_format  : out std_logic;
    a2_format  : out std_logic;
    a3_format  : out std_logic;
    b1_format  : out std_logic;
    b2_format  : out std_logic
  );
end DECODER;

architecture Behavioural of DECODER is

    constant OP_NOP      : std_logic_vector := "0000000";
    constant OP_ADD      : std_logic_vector := "0000001";
    constant OP_SUB      : std_logic_vector := "0000010";
    constant OP_MUL      : std_logic_vector := "0000011";
    constant OP_NAND     : std_logic_vector := "0000100";
    constant OP_SHL      : std_logic_vector := "0000101";
    constant OP_SHR      : std_logic_vector := "0000110";
    constant OP_TEST     : std_logic_vector := "0000111";

    constant OP_OUT      : std_logic_vector := "0100000";
    constant OP_IN       : std_logic_vector := "0100001";

    constant OP_BRR      : std_logic_vector := "1000000";
    constant OP_BRR_N    : std_logic_vector := "1000001";
    constant OP_BRR_Z    : std_logic_vector := "1000010";
    constant OP_BR       : std_logic_vector := "1000011";
    constant OP_BR_N     : std_logic_vector := "1000100";
    constant OP_BR_Z     : std_logic_vector := "1000101";
    constant OP_BR_SUB   : std_logic_vector := "1000110";
    constant OP_RETURN   : std_logic_vector := "1000111";
  --ADD OTHER CODES FOR L FORMAT HERE
  
  signal operation : std_logic_vector(6 downto 0);

begin

    operation <= instr(15 downto 9);
    ra <= instr(8 downto 6);
    rb <= instr(5 downto 3);
    rc <= instr(2 downto 0);
    c1 <= instr(3 downto 0);
    disp_s <= instr(5 downto 0);
    disp_l <= instr(8 downto 0);
    op_code <= operation;
    
    Decode: process(operation) is
    begin
      a0_format <= '0';
      a1_format <= '0';
      a2_format <= '0';
      a3_format <= '0';
      b1_format <= '0';
      b2_format <= '0';
    
      case operation is
        when OP_NOP     => a0_format <= '1';
        when OP_ADD     => a1_format <= '1';
        when OP_SUB     => a1_format <= '1';
        when OP_MUL     => a1_format <= '1';
        when OP_NAND    => a1_format <= '1';
        when OP_SHL     => a2_format <= '1';
        when OP_SHR     => a2_format <= '1';
        when OP_TEST    => a3_format <= '1';
        when OP_IN      => a3_format <= '1';
        when OP_OUT     => a3_format <= '1';

        when OP_BRR     => b1_format <= '1';
        when OP_BRR_N   => b1_format <= '1';
        when OP_BRR_Z   => b1_format <= '1';
        when OP_BR      => b2_format <= '1';
        when OP_BR_N    => b2_format <= '1';
        when OP_BR_Z    => b2_format <= '1';
        when OP_BR_SUB  => b2_format <= '1';
        when OP_RETURN  => a0_format <= '1';

        when others     => NULL;
       end case;
    end process; --Decode

end Behavioural; -- Behavioural
