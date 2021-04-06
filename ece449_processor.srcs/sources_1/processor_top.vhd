library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
library xpm;
use xpm.vcomponents.all;

entity processor is
  port (
    clk     : in std_logic;
    rst_l   : in std_logic;
    rst_e   : in std_logic;
    inport  : in std_logic_vector(15 downto 0);
    outport : out std_logic_vector(15 downto 0)
  );
end processor;

architecture Behavioural of processor is

  constant OP_NOP     : std_logic_vector := "0000000";
  constant OP_ADD     : std_logic_vector := "0000001";
  constant OP_SUB     : std_logic_vector := "0000010";
  constant OP_MUL     : std_logic_vector := "0000011";
  constant OP_NAND    : std_logic_vector := "0000100";
  constant OP_SHL     : std_logic_vector := "0000101";
  constant OP_SHR     : std_logic_vector := "0000110";
  constant OP_TEST    : std_logic_vector := "0000111";

  constant OP_LOAD    : std_logic_vector := "0010000";
  constant OP_STORE   : std_logic_vector := "0010001";
  constant OP_LOADIMM : std_logic_vector := "0010010";
  constant OP_MOV     : std_logic_vector := "0010011";

  constant OP_OUT     : std_logic_vector := "0100000";
  constant OP_IN      : std_logic_vector := "0100001";

  constant OP_BRR     : std_logic_vector := "1000000";
  constant OP_BRR_N   : std_logic_vector := "1000001";
  constant OP_BRR_Z   : std_logic_vector := "1000010";
  constant OP_BR      : std_logic_vector := "1000011";
  constant OP_BR_N    : std_logic_vector := "1000100";
  constant OP_BR_Z    : std_logic_vector := "1000101";
  constant OP_BR_SUB  : std_logic_vector := "1000110";
  constant OP_RETURN  : std_logic_vector := "1000111";

  COMPONENT DIST_ROM_1024 is
  PORT (
    a        : in std_logic_vector(8 DOWNTO 0);
    spo      : out std_logic_vector(15 DOWNTO 0)
  );
  end Component;

  Component REGISTER_FILE is
  PORT(
    clk             : in std_logic;
    rst             : in std_logic;
    rd_index1       : in std_logic_vector(2 downto 0);
    rd_index2       : in std_logic_vector(2 downto 0);
    rd_data1        : out std_logic_vector(15 downto 0);
    rd_data2        : out std_logic_vector(15 downto 0);
    wr_index        : in std_logic_vector(2 downto 0);
    wr_data         : in std_logic_vector(15 downto 0);
    wr_overflowdata : in std_logic_vector(15 downto 0);
    wr_enable       : in std_logic;
    wr_ovenable     : in std_logic
  );
  end Component;

  Component DECODER is
  PORT(
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
    b2_format  : out std_logic;
    l1_format  : out std_logic;
    l2_format  : out std_logic
  );
  end Component;

  Component ALU is
  PORT(
    clk       : in std_logic;
    rst       : in std_logic;
    in1       : in std_logic_vector(15 downto 0);
    in2       : in std_logic_vector(15 downto 0);
    alu_mode  : in std_logic_vector(2 downto 0);
    result    : out std_logic_vector(15 downto 0);
    overflow  : out std_logic_vector(15 downto 0);
    z_flag    : out std_logic;
    n_flag    : out std_logic;
    o_flag    : out std_logic
  );
  end Component;

  --COMPONENT RAM

  --Record for IF/ID register
  type t_IFID is record
    instr   : std_logic_vector(15 downto 0);  --instruction from memory
    PC      : std_logic_vector(15 downto 0);      --program counter
    inport  : std_logic_vector(15 downto 0); --data from processor inport
  end record t_IFID;

  --Record for ID/EX register
  type t_IDEX is record
    instr   : std_logic_vector(15 downto 0);  --instruction from IFID
    data1   : std_logic_vector(15 downto 0);
    data2   : std_logic_vector(15 downto 0);
    str_dest: std_logic_vector(15 downto 0);
    PC      : std_logic_vector(15 downto 0);
    op_code : std_logic_vector(6 downto 0);
  end record t_IDEX;

  --Record for EX/MEM register
  type t_EXMEM is record
    instr     : std_logic_vector(15 downto 0);  --instruction from IDEX
    result    : std_logic_vector(15 downto 0);
    str_dest  : std_logic_vector(15 downto 0);
    overflow  : std_logic_vector(15 downto 0);
    z_flag    : std_logic;
    n_flag    : std_logic;
    o_flag    : std_logic;
    PC        : std_logic_vector(15 downto 0);
    op_code   : std_logic_vector(6 downto 0);
  end record t_EXMEM;

  --Record for EX/MEM register
  type t_MEMWR is record
    instr     : std_logic_vector(15 downto 0);  --instruction from EXMEM
    PC        : std_logic_vector(15 downto 0);
    result    : std_logic_vector(15 downto 0);
    overflow  : std_logic_vector(15 downto 0);
    o_flag    : std_logic;
    op_code   : std_logic_vector(6 downto 0);
  end record t_MEMWR;

  --Registers for each stage of the pipeline
  signal reg_IFID : t_IFID := (instr => (others => '0'),
                               PC => (others => '0'),
                               inport => (others => '0'));

  signal reg_IDEX : t_IDEX := (instr => (others => '0'),
                               data1 => (others => '0'),
                               data2 => (others => '0'),
                               str_dest => (others => '0'),
                               PC => (others => '0'),
                               op_code => (others => '0'));

  signal reg_EXMEM : t_EXMEM := (instr => (others => '0'),
                                 result => (others => '0'),
                                 str_dest => (others => '0'),
                                 overflow => (others => '0'),
                                 PC => (others => '0'),
                                 op_code => (others => '0'),
                                 z_flag => '0',
                                 n_flag => '0',
                                 o_flag => '0');

  signal reg_MEMWR : t_MEMWR := (instr => (others => '0'),
                                 PC => (others => '0'),
                                 op_code => (others => '0'),
                                 result => (others => '0'),
                                 overflow => (others => '0'),
                                 o_flag => '0');

  --Interconnect Signal Declarations
  signal rst        : std_logic;
  --ROM
  signal PC         : std_logic_vector(15 downto 0);
  signal PC_next    : std_logic_vector(15 downto 0) := x"0000";
  signal spo        : std_logic_vector(15 downto 0);
  signal addr       : std_logic_vector(15 downto 0);
  signal rom_a      : std_logic_vector(8 downto 0);
  --RAM
  signal douta      : std_logic_vector(15 downto 0);
  signal doutb      : std_logic_vector(15 downto 0);
  signal addra      : std_logic_vector(15 downto 0);
  signal addrb      : std_logic_vector(15 downto 0);
  signal dina       : std_logic_vector(15 downto 0);
  signal ena        : std_logic := '1';
  signal enb        : std_logic := '1';
  signal regcea     : std_logic := '1';
  signal regceb     : std_logic := '1';
  signal ram_wr_en  : std_logic_vector(0 downto 0);
  signal str_dest   : std_logic_vector(15 downto 0);
  --RF
  signal rd_index1  : std_logic_vector(2 downto 0);
  signal rd_index2  : std_logic_vector(2 downto 0);
  signal rd_data1   : std_logic_vector(15 downto 0);
  signal rd_data2   : std_logic_vector(15 downto 0);
  signal wr_index   : std_logic_vector(2 downto 0);
  signal wr_enable  : std_logic;
  signal wr_ovenable: std_logic;
  signal imm_result : std_logic_vector(15 downto 0);
  --ALU
  signal in1        : std_logic_vector(15 downto 0);
  signal in2        : std_logic_vector(15 downto 0);
  signal alu_mode   : std_logic_vector(2 downto 0);
  signal result     : std_logic_vector(15 downto 0);
  signal overflow   : std_logic_vector(15 downto 0);
  signal z_flag     : std_logic;
  signal n_flag     : std_logic;
  signal o_flag     : std_logic;
  --DECODER
  signal op_code    : std_logic_vector(6 downto 0);
  signal ra         : std_logic_vector(2 downto 0);
  signal rb         : std_logic_vector(2 downto 0);
  signal rc         : std_logic_vector(2 downto 0);
  signal c1         : std_logic_vector(3 downto 0);
  signal disp_s     : std_logic_vector(5 downto 0);
  signal disp_l     : std_logic_vector(8 downto 0);
  signal a0_format  : std_logic;
  signal a1_format  : std_logic;
  signal a2_format  : std_logic;
  signal a3_format  : std_logic;
  signal b1_format  : std_logic;
  signal b2_format  : std_logic;
  signal l1_format  : std_logic;
  signal l2_format  : std_logic;
  --Branch Signal
  signal branch     : std_logic;
  --Pipeline Stall Signals
  signal stall_trig : std_logic;

begin

  rom0 : DIST_ROM_1024 PORT MAP (
        a => rom_a,
        spo => spo
  );

  rf0: REGISTER_FILE PORT MAP (
    clk => clk,
    rst => rst,
    rd_index1 => rd_index1,
    rd_index2 => rd_index2,
    rd_data1 => rd_data1,
    rd_data2 => rd_data2,
    wr_index => wr_index,
    wr_data => reg_MEMWR.result,
    wr_overflowdata => reg_MEMWR.overflow,
    wr_enable => wr_enable,
    wr_ovenable => wr_ovenable
  );

  decoder0: DECODER PORT MAP (
    instr => reg_IFID.instr,
    op_code => op_code,
    ra => ra,
    rb => rb,
    rc => rc,
    c1 => c1,
    disp_l => disp_l,
    disp_s => disp_s,
    a0_format => a0_format,
    a1_format => a1_format,
    a2_format => a2_format,
    a3_format => a3_format,
    b1_format => b1_format,
    b2_format => b2_format,
    l1_format => l1_format,
    l2_format => l2_format
  );

  alu0: ALU PORT MAP (
    clk => clk,
    rst => rst,
    in1 => in1,
    in2 => in2,
    alu_mode => alu_mode,
    result => result,
    overflow => overflow,
    z_flag => z_flag,
    n_flag => n_flag,
    o_flag => o_flag
  );

-- xpm_memory_dpdistram: Dual Port Distributed RAM
-- Xilinx Parameterized Macro, version 2018.3
xpm_memory_dpdistram_inst : xpm_memory_dpdistram
generic map (
  ADDR_WIDTH_A => 16, -- DECIMAL
  ADDR_WIDTH_B => 16, -- DECIMAL
  BYTE_WRITE_WIDTH_A => 16, -- DECIMAL
  CLOCKING_MODE => "common_clock", -- String
  MEMORY_INIT_FILE => "none", -- String
  MEMORY_INIT_PARAM => "0", -- String
  MEMORY_OPTIMIZATION => "true", -- String
  MEMORY_SIZE => 8192, -- DECIMAL
  MESSAGE_CONTROL => 0, -- DECIMAL
  READ_DATA_WIDTH_A => 16, -- DECIMAL
  READ_DATA_WIDTH_B => 16, -- DECIMAL
  READ_LATENCY_A => 0, -- DECIMAL
  READ_LATENCY_B => 0, -- DECIMAL
  READ_RESET_VALUE_A => "0", -- String
  READ_RESET_VALUE_B => "0", -- String
  RST_MODE_A => "SYNC", -- String
  RST_MODE_B => "SYNC", -- String
  USE_EMBEDDED_CONSTRAINT => 0, -- DECIMAL
  USE_MEM_INIT => 1, -- DECIMAL
  WRITE_DATA_WIDTH_A => 16 -- DECIMAL
)
port map (
  douta => douta, -- READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
  doutb => doutb, -- READ_DATA_WIDTH_B-bit output: Data output for port B read operations.
  addra => addra, -- ADDR_WIDTH_A-bit input: Address for port A write and read operations.
  addrb => addrb, -- ADDR_WIDTH_B-bit input: Address for port B write and read operations.
  clka => clk, -- 1-bit input: Clock signal for port A. Also clocks port B when parameter
  -- CLOCKING_MODE is "common_clock".
  clkb => clk, -- 1-bit input: Clock signal for port B when parameter CLOCKING_MODE is
  -- "independent_clock". Unused when parameter CLOCKING_MODE is "common_clock".
  dina => dina, -- WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
  ena => ena, -- 1-bit input: Memory enable signal for port A. Must be high on clock cycles when read
  -- or write operations are initiated. Pipelined internally.
  enb => enb, -- 1-bit input: Memory enable signal for port B. Must be high on clock cycles when read
  -- or write operations are initiated. Pipelined internally.
  regcea => regcea, -- 1-bit input: Clock Enable for the last register stage on the output data path.
  regceb => regceb, -- 1-bit input: Do not change from the provided value.
  rsta => rst, -- 1-bit input: Reset signal for the final port A output register stage. Synchronously
  -- resets output port douta to the value specified by parameter READ_RESET_VALUE_A.
  rstb => rst, -- 1-bit input: Reset signal for the final port B output register stage. Synchronously
  -- resets output port doutb to the value specified by parameter READ_RESET_VALUE_B.
  wea => ram_wr_en -- WRITE_DATA_WIDTH_A-bit input: Write enable vector for port A input data port dina. 1
  -- bit wide when word-wide writes are used. In byte-wide write configurations, each bit
  -- controls the writing one byte of dina to address addra. For example, to
  -- synchronously write only bits [15-8] of dina when WRITE_DATA_WIDTH_A is 32, wea
  -- would be 4'b0010.
);
-- End of xpm_memory_dpdistram_inst instantiation

  ------ COMBINATIONAL LOGIC   ------ 
  rst <= rst_e or rst_l;

  -- PROGRAM COUNTER
  PC_next <= std_logic_vector(resize(unsigned(reg_EXMEM.result), PC'length)) when (branch = '1') else std_logic_vector(unsigned(PC) + 2);
  addr <= std_logic_vector(shift_right(unsigned(PC), 1));
  
  -- ROM SIGNALS
  rom_a <= std_logic_vector(resize(unsigned(addr), rom_a'length));

  -- REGISTER FILE SIGNALS
  rd_index1  <= ra when (a2_format='1' or a3_format='1' or b2_format='1' or l2_format='1') else "111" when (op_code = OP_RETURN or op_code = OP_LOADIMM) else rb;
  rd_index2 <= rb when (op_code = OP_LOAD or op_code = OP_STORE or op_code = OP_MOV) else rc;

  wr_index <= "111" when (reg_MEMWR.op_code = OP_BR_SUB or reg_MEMWR.op_code = OP_LOADIMM) else reg_MEMWR.instr(8 downto 6);

  wr_enable <= '1' when ((to_integer(unsigned(reg_MEMWR.op_code)) >= 1 and to_integer(unsigned(reg_MEMWR.op_code)) < 7)
                    or (reg_MEMWR.op_code = OP_IN) or (reg_MEMWR.op_code = OP_BR_SUB) or (reg_MEMWR.op_code = OP_LOAD)
                    or (reg_MEMWR.op_code = OP_LOADIMM) or (reg_MEMWR.op_code = OP_MOV)) else '0';

  wr_ovenable <=  reg_MEMWR.o_flag;

  -- EXECUTE SIGNALS
  alu_mode <= reg_IDEX.op_code(2 downto 0) when ((to_integer(unsigned(reg_IDEX.op_code))) < 8) else
              "001" when ((to_integer(unsigned(reg_IDEX.op_code))) > 7 and (to_integer(unsigned(reg_IDEX.op_code))) < 72)
              else (others => '0');

  in1 <= reg_EXMEM.result when (((to_integer(unsigned(reg_EXMEM.op_code)) >= 1 and to_integer(unsigned(reg_EXMEM.op_code)) < 17) or reg_EXMEM.op_code = OP_LOAD
              or reg_EXMEM.op_code = OP_MOV or reg_EXMEM.op_code = OP_IN) --forward when EXMEM is writing to register ra/r.dest
              and ((((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) or reg_IDEX.op_code = OP_STORE
              or reg_IDEX.op_code = OP_MOV) --and EITHER if rb/r.src in IDEX is an input (ADD, SUB, MULT, NAND, STORE, MOV)
              and reg_EXMEM.instr(8 downto 6) = reg_IDEX.instr(5 downto 3)) --and if ra in EXMEM is equal to rb in IDEX
              or (((to_integer(unsigned(reg_IDEX.op_code)) >= 5 and to_integer(unsigned(reg_IDEX.op_code)) < 7) or reg_IDEX.op_code = OP_OUT
              or (to_integer(unsigned(reg_IDEX.op_code)) >= 67 and to_integer(unsigned(reg_IDEX.op_code)) < 71)) --OR if ra in IDEX is an input (SHL, SHR, OUT, BR)
              and reg_EXMEM.instr(8 downto 6) = reg_IDEX.instr(8 downto 6)))) --and if ra in EXMEM is equal to ra in IDEX

            else imm_result when ((reg_EXMEM.op_code = OP_LOADIMM and ((((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) or reg_IDEX.op_code = OP_LOAD
              or reg_IDEX.op_code = OP_STORE or reg_IDEX.op_code = OP_MOV) --and EITHER if rb/r.src in IDEX is an input (ADD, SUB, MULT, NAND, LOAD, STORE, MOV)
              and reg_IDEX.instr(5 downto 3) = "111")
              or (((to_integer(unsigned(reg_IDEX.op_code)) >= 5 and to_integer(unsigned(reg_IDEX.op_code)) < 7) or reg_IDEX.op_code = OP_OUT
              or (to_integer(unsigned(reg_IDEX.op_code)) >= 67 and to_integer(unsigned(reg_IDEX.op_code)) < 71)) --OR if ra in IDEX is an input (SHL, SHR, OUT, BR)
              and reg_IDEX.instr(8 downto 6) = "111") or reg_IDEX.op_code = OP_LOADIMM))

              or (((to_integer(unsigned(reg_EXMEM.op_code)) >= 1 and to_integer(unsigned(reg_EXMEM.op_code)) < 17) or reg_EXMEM.op_code = OP_MOV or reg_EXMEM.op_code = OP_IN)
              and reg_EXMEM.instr(8 downto 6) = "111" and reg_IDEX.op_code = OP_LOADIMM))

            else reg_MEMWR.result when ((((to_integer(unsigned(reg_MEMWR.op_code)) >= 1 and to_integer(unsigned(reg_MEMWR.op_code)) < 17) or reg_MEMWR.op_code = OP_MOV or reg_MEMWR.op_code = OP_IN) --forward when MEMWR is writing to register ra/r.dest
              and ((((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) or reg_IDEX.op_code = OP_LOAD
              or reg_IDEX.op_code = OP_STORE or reg_IDEX.op_code = OP_MOV) --and EITHER if rb/r.src in IDEX is an input (ADD, SUB, MULT, NAND, LOAD, STORE, MOV)
              and reg_MEMWR.instr(8 downto 6) = reg_IDEX.instr(5 downto 3)) --and if ra in MEMWR is equal to rb/r.src in IDEX
              or (((to_integer(unsigned(reg_IDEX.op_code)) >= 5 and to_integer(unsigned(reg_IDEX.op_code)) < 7) or reg_IDEX.op_code = OP_OUT
              or (to_integer(unsigned(reg_IDEX.op_code)) >= 67 and to_integer(unsigned(reg_IDEX.op_code)) < 71)) --OR if ra in IDEX is an input (SHL, SHR, OUT, BR)
              and reg_MEMWR.instr(8 downto 6) = reg_IDEX.instr(8 downto 6))))

              or (reg_MEMWR.op_code = OP_LOADIMM and ((((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) or reg_IDEX.op_code = OP_LOAD
              or reg_IDEX.op_code = OP_STORE or reg_IDEX.op_code = OP_MOV) --and EITHER if rb/r.src in IDEX is an input (ADD, SUB, MULT, NAND, LOAD, STORE, MOV)
              and reg_IDEX.instr(5 downto 3) = "111")
              or (((to_integer(unsigned(reg_IDEX.op_code)) >= 5 and to_integer(unsigned(reg_IDEX.op_code)) < 7) or reg_IDEX.op_code = OP_OUT
              or (to_integer(unsigned(reg_IDEX.op_code)) >= 67 and to_integer(unsigned(reg_IDEX.op_code)) < 71)) --OR if ra in IDEX is an input (SHL, SHR, OUT, BR)
              and reg_IDEX.instr(8 downto 6) = "111") or reg_IDEX.op_code = OP_LOADIMM))

              or (((to_integer(unsigned(reg_MEMWR.op_code)) >= 1 and to_integer(unsigned(reg_MEMWR.op_code)) < 17) or reg_MEMWR.op_code = OP_MOV or reg_MEMWR.op_code = OP_IN)
              and reg_MEMWR.instr(8 downto 6) = "111" and reg_IDEX.op_code = OP_LOADIMM)) --and if ra in MEMWR is equal to ra in IDEX

            else reg_IDEX.data1; --else don't forward

  in2 <= reg_EXMEM.result when (((to_integer(unsigned(reg_EXMEM.op_code)) >= 1 and to_integer(unsigned(reg_EXMEM.op_code)) < 32) or reg_EXMEM.op_code = OP_IN) --forward when EXMEM is writing to register ra
              and ((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) --and if IDEX uses two register inputs (ADD, SUB, MULT, NAND)
              and reg_EXMEM.instr(8 downto 6) = reg_IDEX.instr(2 downto 0))) --and if ra in EXMEM is equal to rc in IDEX

            else imm_result when (reg_EXMEM.op_code = OP_LOADIMM and ((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) --and if IDEX uses two register inputs (ADD, SUB, MULT, NAND)
              and reg_IDEX.instr(2 downto 0) = "111"))

            else reg_MEMWR.result when ((((to_integer(unsigned(reg_MEMWR.op_code)) >= 1 and to_integer(unsigned(reg_MEMWR.op_code)) < 32) or reg_MEMWR.op_code = OP_IN) --forward when MEMWR is writing to register ra
              and ((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) --and if IDEX uses two register inputs (ADD, SUB, MULT, NAND)
              and reg_MEMWR.instr(8 downto 6) = reg_IDEX.instr(2 downto 0)))

              or (reg_MEMWR.op_code = OP_LOADIMM and ((to_integer(unsigned(reg_IDEX.op_code)) >= 1 and to_integer(unsigned(reg_IDEX.op_code)) < 5) --and if IDEX uses two register inputs (ADD, SUB, MULT, NAND)
              and reg_IDEX.instr(2 downto 0) = "111"))) --and if ra in MEMWR is equal to rc in IDEX

            else reg_IDEX.data2; --else don't forward

  imm_result <= (reg_EXMEM.result(15 downto 8) & reg_EXMEM.instr(7 downto 0)) when reg_EXMEM.instr(8) = '0'
                else (reg_EXMEM.instr(7 downto 0) & reg_EXMEM.result(7 downto 0));

  -- RAM SIGNALS
  ram_wr_en <= "1" when (reg_EXMEM.op_code = OP_STORE) else "0";
  addra <= reg_EXMEM.result when (reg_EXMEM.op_code = OP_LOAD) else reg_EXMEM.str_dest when (reg_EXMEM.op_code = OP_STORE) else (others => '0');
  addrb <= std_logic_vector(resize(unsigned(addr) - 1024, addrb'length));
  dina <= reg_EXMEM.result when (reg_EXMEM.op_code = OP_STORE) else (others => '0');
  
  str_dest <= reg_EXMEM.result when ((((to_integer(unsigned(reg_EXMEM.op_code)) >= 1 and to_integer(unsigned(reg_EXMEM.op_code)) < 17) or reg_EXMEM.op_code = OP_LOAD
                                 or reg_EXMEM.op_code = OP_MOV or reg_EXMEM.op_code = OP_IN) and (reg_EXMEM.instr(8 downto 6) = reg_IDEX.instr(8 downto 6))) or (reg_EXMEM.instr(8 downto 6) = "111" and reg_IDEX.op_code = OP_LOADIMM))
                               else reg_MEMWR.result when((((to_integer(unsigned(reg_MEMWR.op_code)) >= 1 and to_integer(unsigned(reg_MEMWR.op_code)) < 17) or reg_MEMWR.op_code = OP_LOAD
                                 or reg_MEMWR.op_code = OP_MOV or reg_MEMWR.op_code = OP_IN) and (reg_MEMWR.instr(8 downto 6) = reg_IDEX.instr(8 downto 6))) or (reg_MEMWR.instr(8 downto 6) = "111" and reg_IDEX.op_code = OP_LOADIMM))
                               else reg_IDEX.str_dest;
  -- BRANCH TRIGGER
  branch <= '1' when (reg_EXMEM.op_code = OP_BR) or (reg_EXMEM.op_code = OP_BRR) or (reg_EXMEM.op_code = OP_BR_SUB) or (reg_EXMEM.op_code = OP_RETURN)
                or (((reg_EXMEM.op_code = OP_BR_N) or (reg_EXMEM.op_code = OP_BRR_N)) and reg_EXMEM.n_flag = '1')
                or (((reg_EXMEM.op_code = OP_BR_Z) or (reg_EXMEM.op_code = OP_BRR_Z)) and reg_EXMEM.z_flag = '1')
                else '0';

  -- STALL TRIGGER
  stall_trig <= '1' when (reg_EXMEM.op_code = OP_LOAD) else '0';

  outport <= reg_MEMWR.result when (reg_MEMWR.op_code = OP_OUT) else (others => '0');

  ------ PROCESS FOR EACH STAGE OF PIPELINE ------ 
  ProgramCounterUpdate: process(clk, rst) is
  begin
    if (rst_l = '1') then
      PC <= (others => '0');
    elsif (rst_e = '1') then
      PC <= x"0002";
    elsif rising_edge(clk) then
      if (stall_trig = '1') then
        PC <= PC;
      else
        PC <= PC_next;
      end if;
    end if;
  end process; -- ProgramCounterUpdate

  FetchStage: process(clk, rst) is
  begin
    if (rst = '1') then
      reg_IFID.instr  <= (others => '0');
      reg_IFID.PC     <= (others => '0');
      reg_IFID.inport <= (others => '0');
    elsif rising_edge(clk) then
      if (stall_trig = '1') then
        reg_IFID.instr  <= reg_IFID.instr;
        reg_IFID.PC     <= reg_IFID.PC;
        reg_IFID.inport <= reg_IFID.inport;
      else
        reg_IFID.PC     <= PC;
        reg_IFID.inport <= inport;
        if (to_integer(unsigned(addr)) < 1024) then
          reg_IFID.instr <= spo;
        elsif (to_integer(unsigned(addr)) >= 1024 and to_integer(unsigned(addr)) < 2048) then
          reg_IFID.instr <= doutb;
        else
          reg_IFID.instr  <= (others => '0');
        end if;
        -- If branch occurs, flush
        if (branch = '1') then
          reg_IFID.instr  <= (others => '0');
        end if;
      end if;
    end if;
  end process; -- FetchStage

  DecodeStage : process(clk, rst) is
  begin
    if (rst = '1') then
      reg_IDEX.instr    <= (others => '0');
      reg_IDEX.data1    <= (others => '0');
      reg_IDEX.data2    <= (others => '0');
      reg_IDEX.str_dest <= (others => '0');
      reg_IDEX.PC       <= (others => '0');
      reg_IDEX.op_code  <= (others => '0');
    elsif rising_edge(clk) then
      if (stall_trig = '1') then
        reg_IDEX.instr    <= reg_IDEX.instr;
        reg_IDEX.data1    <= reg_IDEX.data1;
        reg_IDEX.data2    <= reg_IDEX.data2;
        reg_IDEX.str_dest <= reg_IDEX.str_dest;
        reg_IDEX.PC       <= reg_IDEX.PC;
        reg_IDEX.op_code  <= reg_IDEX.op_code;
      else
        reg_IDEX.instr  <= reg_IFID.instr;
        reg_IDEX.PC     <= reg_IFID.PC;
        reg_IDEX.op_code <= op_code;
        if (a0_format = '1') then -- A0 Format Instruction
          reg_IDEX.data1 <= (others => '0');
          reg_IDEX.data2 <= (others => '0');
          reg_IDEX.str_dest <= (others => '0');
        elsif (a1_format = '1') then  -- A1 Format Instruction
          reg_IDEX.data1 <= rd_data1;
          reg_IDEX.data2 <= rd_data2;
          reg_IDEX.str_dest <= (others => '0');
        elsif (a2_format = '1') then  -- A2 Format Instruction
          reg_IDEX.data1 <= rd_data1;
          reg_IDEX.data2 <= std_logic_vector(resize(signed(c1), reg_IDEX.data2'length));
          reg_IDEX.str_dest <= (others => '0');
        elsif (a3_format = '1') then  -- A3 Format Instruction
          reg_IDEX.data2 <= (others => '0');
          reg_IDEX.str_dest <= (others => '0');
          if (op_code = OP_TEST or op_code = OP_OUT) then
          reg_IDEX.data1 <= rd_data1;
          elsif (op_code = OP_IN) then
            reg_IDEX.data1 <= reg_IFID.inport;
          end if ;
        elsif (b1_format = '1') then
          reg_IDEX.data1 <= PC; --std_logic_vector(resize(signed(PC), reg_IDEX.data1'length));
          reg_IDEX.data2 <= std_logic_vector(resize(shift_left(signed(disp_l), 2), reg_IDEX.data2'length));
          reg_IDEX.str_dest <= (others => '0');
        elsif (b2_format = '1') then
          reg_IDEX.data1 <= rd_data1;
          reg_IDEX.data2 <= std_logic_vector(resize(shift_left(signed(disp_s), 2), reg_IDEX.data2'length));
          reg_IDEX.str_dest <= (others => '0');
        elsif (op_code = OP_MOV or op_code = OP_LOAD) then
          reg_IDEX.data1 <= rd_data2;
          reg_IDEX.data2 <= (others => '0');
          reg_IDEX.str_dest <= (others => '0');
        elsif (op_code = OP_STORE) then
          reg_IDEX.data1 <= rd_data2;
          reg_IDEX.data2 <= (others => '0');
          reg_IDEX.str_dest <= rd_data1;
        else
          reg_IDEX.data1  <= rd_data1;
          reg_IDEX.data2  <= rd_data2;
          reg_IDEX.str_dest <= (others => '0');
        end if;
        -- If branch occurs, flush
        if (branch = '1') then
          reg_IDEX.instr    <= (others => '0');
          reg_IDEX.data1    <= (others => '0');
          reg_IDEX.data2    <= (others => '0');
          reg_IDEX.op_code  <= (others => '0');
        end if;
      end if;
    end if;
  end process; -- DecodeStage

  ExecuteStage : process(clk, rst) is
  begin
    if (rst = '1') then
      reg_EXMEM.instr     <= (others => '0');
      reg_EXMEM.PC        <= (others => '0');
      reg_EXMEM.result    <= (others => '0');
      reg_EXMEM.str_dest  <= (others => '0');
      reg_EXMEM.overflow  <= (others => '0');
      reg_EXMEM.z_flag    <= '0';
      reg_EXMEM.n_flag    <= '0';
      reg_EXMEM.o_flag    <= '0';
      reg_EXMEM.op_code   <= (others => '0');
    elsif rising_edge(clk) then
      reg_EXMEM.instr     <= reg_IDEX.instr;
      reg_EXMEM.PC        <= reg_IDEX.PC;
      reg_EXMEM.result    <= result;
      reg_EXMEM.str_dest  <= str_dest;
      reg_EXMEM.overflow  <= overflow;
      reg_EXMEM.z_flag    <= z_flag;
      reg_EXMEM.n_flag    <= n_flag;
      reg_EXMEM.o_flag    <= o_flag;
      reg_EXMEM.op_code   <= reg_IDEX.op_code;

      if (branch = '1' or stall_trig = '1') then
        reg_EXMEM.instr     <= (others => '0');
        reg_EXMEM.PC        <= (others => '0');
        reg_EXMEM.result    <= (others => '0');
        reg_EXMEM.str_dest  <= (others => '0');
        reg_EXMEM.overflow  <= (others => '0');
        reg_EXMEM.z_flag    <= '0';
        reg_EXMEM.n_flag    <= '0';
        reg_EXMEM.o_flag    <= '0';
        reg_EXMEM.op_code   <= (others => '0');
      end if;
    end if;
  end process; -- ExecuteStage

  WritebackStage: process(clk, rst) is
  begin
    if (rst = '1') then
      reg_MEMWR.instr     <= (others => '0');
      reg_MEMWR.PC        <= (others => '0');
      reg_MEMWR.result    <= (others => '0');
      reg_MEMWR.overflow  <= (others => '0');
      reg_MEMWR.o_flag    <= '0';
    elsif rising_edge(clk) then
      reg_MEMWR.instr     <= reg_EXMEM.instr;
      reg_MEMWR.PC        <= reg_EXMEM.PC;
      reg_MEMWR.op_code   <= reg_EXMEM.op_code;
      reg_MEMWR.overflow  <= reg_EXMEM.overflow;
      reg_MEMWR.o_flag    <= reg_EXMEM.o_flag;
      if (reg_EXMEM.op_code = OP_LOAD) then
        reg_MEMWR.result    <= douta;
      elsif (reg_EXMEM.op_code = OP_LOADIMM) then
        reg_MEMWR.result    <= imm_result;
      else
        reg_MEMWR.result    <= reg_EXMEM.result;
      end if;
    end if;
  end process; --WritebackStage

end Behavioural; -- Behavioural
