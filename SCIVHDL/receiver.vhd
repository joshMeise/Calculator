--
--receiver.vhd --- implements an SCI receive to receive data through a UART connection
--
--Author: Joshua Meise and Brandon Zhao
--Created: 05-29-2024
--

-- Library inclusions
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity definition.
entity receiver is
  port (clk: in std_logic;
        RxPort: in std_logic;
        numPort: out signed(7 downto 0);
        RxDonePort: out std_logic);
end receiver;

-- Architecture definition.
architecture behavioral of receiver is
	-- Define state type and register file type.
  type state is (reset, idle, waitForBit, receiveBit, loadNumReg, convertToNum, waitState, negativeInsert, output);
  type numRegFile is array(0 to 10) of std_logic_vector(7 downto 0);
 
	-- Define internal signals and counters.
  signal cs, ns: state := reset;
	signal TCbaud, TCbit, bitClr, baudClr, shiftEn, writeReg, resetReg, writeNumReg, numEnd, convert, read, readDone: std_logic := '0';
  signal bitCtr: unsigned(3 downto 0) := (others => '0');
  signal baudCtr: unsigned(13 downto 0) := (others => '0');
  signal numAddr: unsigned(3 downto 0) := (others => '0');
  signal readAddr: unsigned(3 downto 0) := (others => '0');
  signal intData: std_logic_vector(7 downto 0) := (others => '0');
  signal dig: std_logic_vector(7 downto 0) := (others => '0');
  signal numReg: numRegFile := (others => (others => '0'));
  signal number: signed(7 downto 0) := (others => '0');
  signal neg, insNeg: std_logic := '0';
  
begin
  -- Synchronous state update process.
	stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  -- Next state and output logic.
  combinational: process(cs, TCbaud, TCbit, RxPort, numEnd, readDone)
  begin
    -- Defaults
    ns <= cs;
    shiftEn <= '0';
    baudClr <= '0';
    bitClr <= '0';
    resetReg <= '0';
    writeReg <= '0';
    writeNumReg <= '0';
    convert <= '0';
    read <= '0';
    RxDonePort <= '0';
    insNeg <= '0';

    case cs is
      -- Clear all registers when resetting
      when reset =>
        resetReg <= '1';
        ns <= idle;
      -- Wait for the Rx line to go low indicating incoming data to leave idle
      -- state.
      when idle =>
        baudClr <= '1';
        bitClr <= '1';
        if RxPort = '0' and TCBit = '0' then
          ns <= waitForBit;
        end if;
      -- Wait for each bit to be received. Leave state after given number of
      -- clock cycles indicated by the baud rate.
      when waitForBit =>
        if TCbaud = '1' then
          ns <= receiveBit;
        end if;
      -- Shift the given bit of data into the shift register and clear the baud
      -- counter once it has been received. Check to see if 8 bits have been
      -- received to determine whether or not a whole word has been received.
      when receiveBit =>
        shiftEn <= '1';
        baudClr <= '1';        
        if TCbit = '0' then
          ns <= waitForBit;
        else
          ns <= loadNumReg;
        end if;
      -- Once a word of data has been received, load the corresponding digit into the
      -- register. Return to the idle state to wait for more digits if end of
      -- the number has not yet been reached.
      when loadNumReg =>
        writeNumReg <= '1';
        if numEnd = '1' then
          ns <= convertToNum;
        else
          ns <= idle;
        end if;
      -- Once the full number has been entered, read the BCD digits from the
      -- register and convert to a number.
      when convertToNum =>
        convert <= '1';
        read <= '1';
        if readDone = '1' then
          ns <= negativeInsert;
        end if;
      -- Make the number negative if a negative sign was entered.
      when negativeInsert =>
        insNeg <= '1';
        ns <= output;
      -- Send a monoplused signal to indicate to the rest of the system that
      -- a full number has been received and sent to reset state.
      when output =>
        RxDonePort <= '1';
        ns <= reset;
      -- For ghost states.
      when others =>
        ns <= reset;
    end case;
  end process;
  
  -- Datapath.
  datapath: process(clk, bitCtr, baudCtr, intData, readAddr, numAddr)
    -- Instantiate variables for values that may need to be updated and used
    -- within the same clock cycle.
    variable num: signed(7 downto 0) := (others => '0');
    variable add: std_logic := '1';
  begin
    -- Synchrinous components.
    if rising_edge(clk) then
      -- Handle increasing the baud counter each clock cycle.
      if baudClr = '1' then
        baudCtr <= (others => '0');
      else
        baudCtr <= baudCtr + 1;
      end if;

      -- Increase the bit counter each time a full bit has been received.
      if bitClr = '1' then
        bitCtr <= (others => '0');
      elsif shiftEn = '1' then
        bitCtr <= bitCtr + 1;
      end if;

      -- Shift each bit into register.
      if shiftEn = '1' and TCBit = '0' then
        intData <= RxPort & intData(7 downto 1);
      end if;

      -- Handle the writing of the BCD digits into the register file.
      if resetReg = '1' then
        numReg <= (others => (others => '0'));
        number <= (others => '0');
      elsif writeNumReg = '1' then
        numReg(to_integer(numAddr)) <= intData;
      end if;

      -- Increase the address of the number in the register file each time a
      -- new number is received.
      if resetReg = '1' then
        numAddr <= (others => '0');
      elsif writeNumReg = '1' then
        numAddr <= numAddr + 1;
      end if;

      -- Increase the address in the FIFO regsiter file from which the BCD
      -- digit is being read.
      if resetReg = '1' then
        readAddr <= (others => '0');
        neg <= '0';
      elsif convert = '1' then
        readAddr <= readAddr + 1;
      end if;

      -- Lookup table for conversion from BCD to binary.
      if convert = '1' then
        case numReg(to_integer(readAddr)) is
          when "00110000" =>
            num := to_signed(0, 8);
            add := '1';
          when "00110001" =>
            num := to_signed(1, 8);
            add := '1';
          when "00110010" =>
            num := to_signed(2, 8);
            add := '1';
          when "00110011" =>
            num := to_signed(3, 8);
            add := '1';
          when "00110100" =>
            num := to_signed(4, 8);
            add := '1';
          when "00110101" =>
            num := to_signed(5, 8);
            add := '1';
          when "00110110" =>
            num := to_signed(6, 8);
            add := '1';
          when "00110111" =>
            num := to_signed(7, 8);
            add := '1';
          when "00111000" =>
            num := to_signed(8, 8);
            add := '1';
          when "00111001" =>
            num := to_signed(9, 8);
            add := '1';
          when "00101101" =>
            neg <= '1';
            add := '0';
          when others =>
            num := to_signed(0, 8);
            add := '0';
        end case;
        
        if add = '1' then
          number <= resize(number*10, 8) + num;
        end if;
        
      end if;

      -- Make the number negative if a negative sign was entered.
      if insNeg = '1' then
        if neg = '1' then
          number <= -number;
         end if;
      end if;
    end if;

    -- Indicates that a ful;l word has been received.
    TCbit <= '0';
    if bitCtr = 8 then
      TCbit <= '1';
    end if;

    -- Indicates that a baud period has passed for a baud rate of 9600 baud
    -- with a clock frequency of 1MHz.
    TCbaud <= '0';
    if baudCtr = 104 then
      TCbaud <= '1';
    end if;

    -- Indidate that all BCD digits have been read out of the FIFO register file.
    readDone <= '0';
    if readAddr = numAddr - 2 then
      readDone <= '1';
    end if;

    -- Number ends when a space is entered by the user.
    numEnd <= '0';
    if intData = "00100000" then
      numEnd <= '1';
    end if;
    
  end process;

  -- Internal signal tied to external port.
  numPort <= number;
  
end behavioral;
