--
--FIFO.vhd --- acts as a FIFO sending one digit to the transmitter at a
--time each time the transmitter is ready to transmit a new digit.
--
--Author: Joshua Meise and Brandon Zhao
--Created: 05-24-2024
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.myPackage.all;

-- Entity definition.
entity FIFO is
  port (clk: in std_logic;
        TxReady: in std_logic;
        numReg: in regType;
        newNumReg: in std_logic;
        opReg: in regType;
        newOpReg: in std_logic;
        ansReg: in regType;
        newAnsReg: std_logic;
        numMaxAddr: in unsigned(7 downto 0);
        opMaxAddr: in unsigned(7 downto 0);
        ansMaxAddr: in unsigned(7 downto 0);
        data: out std_logic_vector(7 downto 0);
        newData: out std_logic;
        TCDone: out std_logic);
end FIFO;     

-- Architecture definition.
architecture behavioral of FIFO is
  -- User-defined states.
	type state is (idle, loadNum, loadOp, loadAns, loadData, waitToSend, sendToSCI, sending, done);

  -- Internal and control signals.
  signal cs, ns: state := idle;
  signal intData: std_logic_vector(7 downto 0) := (others => '0');
  signal intNewData, empty, read, readNum, readOp, readAns, clr: std_logic := '0';
  signal addr, intMaxAddr: unsigned(7 downto 0) := (others => '0');
  signal intReg: regType := (others => (others => '0'));
  
begin
  -- Synchronous state update process.
	stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;
  
  -- Output and next state logic.
  combinational: process(cs, TxReady, newNumReg, newOpReg, newAnsReg, empty)
  begin
    -- Dafaults.
    ns <= cs;
    intNewData <= '0';
    read <= '0';
    clr <= '0';
    TCdone <= '0';
    readAns <= '0';
    readNum <= '0';
    readOp <= '0';
    
    case cs is
      -- Wait until new data is received to load into the FIFO.
      when idle =>
        clr <= '1';
        if newNumReg = '1' then
          ns <= loadNum;
        elsif newOpReg = '1' then
          ns <= loadOp;
        elsif newAnsReg = '1' then
          ns <= loadAns;
        end if;
      -- Load the data into the internal register.
      when loadAns =>
        readAns <= '1';
        ns <= loadData;
      -- Load the data into the internal register.
      when loadNum =>
        readNum <= '1';
        ns <= loadData;
      -- Load the data into the internal register.
      when loadOp =>
        readOp <= '1';
        ns <= loadData;
      -- Read the first value from the FIFO.
      when loadData =>
        read <= '1';
        ns <= waitToSend;
      -- Wait until the transmitter is ready to receive the value.
      when waitToSend =>
        if TxReady = '1' then
          ns <= sendToSci;
        end if;
      -- Send this value to the transmitter.
      when sendToSCI =>
        intNewData <= '1';
        ns <= sending;
      -- Wait for transmission to be complete and check if FIFO is empty yet.
      when sending =>
        if TxReady = '1' then
          if empty = '1' then
            ns <= done;
          else 
            ns <= loadData;
          end if;
        end if;
      -- Send a monopulsed signal indicating that transmission is complete.
      when done =>
        TCdone <= '1';
        ns <= idle;
      -- For possible ghost states.
      when others =>
        ns <= idle;
    end case;
  end process;
    
  datapath: process(clk, addr, intMaxAddr)
  begin
    if rising_edge(clk) then
      -- Load the relevant input register file along with its corresponding
      -- maximum address into the FIFO.
      if readNum = '1' then
        intReg <= numReg;
        intMaxAddr <= numMaxAddr;
      end if;
      if readOp = '1' then
        intreg <= opReg;
        intMaxAddr <= opMaxAddr;
      end if;
      if readAns = '1' then
        intReg <= ansReg;
        intMaxAddr <= ansMaxAddr;
      end if;

      -- Read a value out of the FIFO.
      if read = '1' then
        intData <= intreg(to_integer(addr));
        addr <= addr + 1;
      end if;
      if clr = '1' then
        addr <= (others => '0');
      end if;
    end if;

    -- Check to see if all data has been transmitted.
    empty <= '0';
    if addr = intMaxAddr then
      empty <= '1';
    end if;
  end process;

  -- Tie internal signals to external signals.
  newData <= intNewData;
  data <= intData;
end behavioral;
      
