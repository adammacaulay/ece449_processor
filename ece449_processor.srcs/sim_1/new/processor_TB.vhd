library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor_TB is
--  Port ( );
end processor_TB;

architecture Behavioural of processor_TB is

  -- 100 MHz = 10 nanoseconds period
  -- Temporarily slow down for testing
  constant CLOCK_PERIOD : time := 10 us;
  
  signal clock      : std_logic := '0';
  signal reset      : std_logic := '0';
  signal inport     : std_logic_vector(15 downto 0);
  signal outport    : std_logic_vector(15 downto 0);

  -- Component declaration for the Unit Under Test (UUT)
  component PROCESSOR 
   port(
     clk        : in std_logic;
     rstt      : in std_logic;
     inport     : in std_logic_vector(15 downto 0);
     outport    : out std_logic_vector(15 downto 0)
  );
  end component; 

begin

  -- Instantiate the Unit Under Test (UUT)
  UUT: entity work.processor
  port map(
    clk => clock,
    rst => reset,
    inport => inport,
    outport => outport
  );
  
  CLK_GEN : process is
  begin
    wait for CLOCK_PERIOD/2;
    clock <= not clock;
  end process CLK_GEN; 
  
  tb1: process begin
    reset <= '1';
    inport <= x"0002";
    wait for 30 us;

--    --Format B Test 1
--    reset <= '0';
--    inport <= x"0002"; --IN R0 , 02
--    wait for 10 us;
--    inport <= x"0003"; --IN R1 , 03
--    wait for 10 us;
--    inport <= x"0001"; --IN R2 , 01
--    wait for 10 us;
--    inport <= x"0005"; --IN R3 , 05
--    wait for 250 us;

    --Format B Test 2
    reset <= '0';
    inport <= x"0002"; --IN R0 , 02
    wait for 10 us;
    inport <= x"0003"; --IN R1 , 03
    wait for 10 us;
    inport <= x"0001"; --IN R2 , 01
    wait for 10 us;
    inport <= x"0005"; --IN R3 , 05
    wait for 10 us;
    inport <= x"0000"; --IN R4 , 00
    wait for 10 us;
    inport <= x"0001"; --IN R5 , 01
    wait for 10 us;
    inport <= x"0005"; --IN R6 , 05
    wait for 10 us;
    inport <= x"0000"; --IN R7 , 00
    wait for 500 us;

--    --Format B Test 3
--    reset <= '0';
--    inport <= x"FFFE"; --IN R0 , -2
--    wait for 10 us;
--    inport <= x"0003"; --IN R1 , 03
--    wait for 10 us;
--    inport <= x"0001"; --IN R2 , 01
--    wait for 10 us;
--    inport <= x"0005"; --IN R3 , 05
--    wait for 250 us;
    
  end process;
  
end Behavioural;
