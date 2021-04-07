library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
  port (
    clk         : in std_logic;
    rst         : in std_logic;
    --input signals
    in1         : in std_logic_vector(15 downto 0);
    in2         : in std_logic_vector(15 downto 0);
    alu_mode    : in std_logic_vector(2 downto 0);
    --output signals
    result      : out std_logic_vector(15 downto 0);
    overflow    : out std_logic_vector(15 downto 0);
    o_flag      : out std_logic; -- overflow flag
    z_flag      : out std_logic; -- zero flag
    n_flag      : out std_logic  -- negtaive flag
  ) ;
end ALU;

architecture behavioural of ALU is
    --Constants for use in case statement for improved readability
    constant OP_NOP      : std_logic_vector := "000";
    constant OP_ADD      : std_logic_vector := "001";
    constant OP_SUB      : std_logic_vector := "010";
    constant OP_MUL      : std_logic_vector := "011";
    constant OP_NAND     : std_logic_vector := "100";
    constant OP_SHL      : std_logic_vector := "101";
    constant OP_SHR      : std_logic_vector := "110";
    constant OP_TEST     : std_logic_vector := "111";

    signal result_32     : std_logic_vector(31 downto 0);
    signal in1_32        : std_logic_vector(31 downto 0);
    signal in2_32        : std_logic_vector(31 downto 0);
begin 

-- Extend 16 bit inputs to 32 bits for operations
in1_32 <= std_logic_vector(resize(signed(in1), in1_32'length));
in2_32 <= std_logic_vector(resize(signed(in2), in2_32'length));


-- Asynchronous Reset and TEST operation
TestProc: process(clk, rst, alu_mode, in1) 
begin
  if (rst = '1') then
    z_flag <= '0';
    n_flag <= '0';
  elsif rising_edge(clk) then
    if (alu_mode = OP_TEST) then
      if (signed(in1) < 0) then
        n_flag <= '1';
      else
        n_flag <= '0';
      end if;
      if (signed(in1) = 0) then
        z_flag <= '1';
      else
        z_flag <= '0';
      end if;
    end if; 
  end if;
end process;

result    <= result_32(15 downto 0) when rst = '0' else (others=>'0');
overflow  <= result_32(31 downto 16) when rst = '0' else (others=>'0');
o_flag    <= '0';-- when rst= '1' else '1' when (or_reduce(result_32(31 downto 16)) = '1' and (result_32(15) = '0')) else 
             --'1' when (and_reduce(result_32(31 downto 16)) = '0' and (result_32(15) = '1')) else '0';

ArithmeticProc: process(alu_mode, in1, in2, in1_32, in2_32)
begin
  case alu_mode is
    when OP_NOP     => result_32 <= (others => '0');
    when OP_ADD     => result_32 <= std_logic_vector(signed(in1_32) + signed(in2_32));
    when OP_SUB     => result_32 <= std_logic_vector(signed(in1_32) - signed(in2_32));
    when OP_MUL     => result_32 <= std_logic_vector(signed(in1) * signed(in2));
    when OP_NAND    => result_32 <= (in1_32 nand in2_32);
    when OP_SHL     => result_32 <= std_logic_vector(shift_left(unsigned(in1_32), to_integer(signed(in2_32))));
    when OP_SHR     => result_32 <=  std_logic_vector(shift_right(unsigned(in1_32), to_integer(signed(in2_32))));
    when OP_TEST    => result_32 <= (others => '0');
    when others     => NULL;
   end case;
end process;

end behavioural; --ALU