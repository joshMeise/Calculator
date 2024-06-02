library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--use IEEE.fixed_pkg.all;

entity receiver is
  port (clk: in std_logic;
        RxPort: in std_logic;
        numPort: out signed(7 downto 0);
        RxDonePort: out std_logic);
end receiver;

architecture behavioral of receiver is
	-- Define state type.
  type state is (reset, idle, waitForBit, receiveBit, loadNumReg, convertToNum, waitState, negativeInsert, output);
  type numRegFile is array(0 to 10) of std_logic_vector(7 downto 0);
  type regFile is array(0 to 17) of signed(7 downto 0);
 
	-- Define internal signals and counters.
	signal TCbaud, TCbit, bitClr, baudClr, shiftEn, dataEnd, writeReg, resetReg, numRegReset, writeNumReg, numEnd, convert, readAddrReset, read, readDone, convertToMatrix: std_logic := '0';
  signal bitCtr: unsigned(3 downto 0) := (others => '0');
  signal baudCtr: unsigned(13 downto 0) := (others => '0');
  signal numAddr: unsigned(3 downto 0) := (others => '0');
  signal readAddr: unsigned(5 downto 0) := (others => '0');
  signal intData: std_logic_vector(7 downto 0) := (others => '0');
  signal cs, ns: state := reset;
  signal dig: std_logic_vector(7 downto 0) := (others => '0');
  signal numReg: numRegFile := (others => (others => '0'));
  signal number: signed(7 downto 0) := (others => '0');
  signal neg, insNeg: std_logic := '0';
  
begin
--------FSM----------
	stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;
  
  combinational: process(cs, TCbaud, TCbit, RxPort, dataEnd, numEnd, readDone)
  begin
    -- Defaults
    ns <= cs;
    shiftEn <= '0';
    baudClr <= '0';
    bitClr <= '0';
    resetReg <= '0';
    writeReg <= '0';
    numRegReset <= '0';
    writeNumReg <= '0';
    convert <= '0';
    readAddrReset <= '0';
    read <= '0';
    convertToMatrix <= '0';
    RxDonePort <= '0';
    insNeg <= '0';
    
    case cs is
      when reset =>
        resetReg <= '1';
        ns <= idle;
      when idle =>
        baudClr <= '1';
        bitClr <= '1';
        
        if RxPort = '0' and TCBit = '0' then
          ns <= waitForBit;
        end if;
      when waitForBit =>
        if TCbaud = '1' then
          ns <= receiveBit;
        end if;
      when receiveBit =>
        shiftEn <= '1';
        baudClr <= '1';
        
        if TCbit = '0' then
          ns <= waitForBit;
        else
          ns <= loadNumReg;
        end if;
      when loadNumReg =>
        writeNumReg <= '1';
        readAddrReset <= '1';
        
        if numEnd = '1' then
          ns <= convertToNum;
        else
          ns <= idle;
        end if;
      when convertToNum =>
        convert <= '1';
        read <= '1';
        if readDone = '1' then
          ns <= negativeInsert;
        end if;
      when negativeInsert =>
        insNeg <= '1';
        ns <= output;
      when output =>
        RxDonePort <= '1';
        ns <= reset;
      when others =>
        ns <= reset;
    end case;
  end process;
  
----------Datapath-------------
  datapath: process(clk, bitCtr, baudCtr, intData)
    variable num: signed(7 downto 0) := (others => '0');
    variable add: std_logic := '1';
  begin
    if rising_edge(clk) then

      if baudClr = '1' then
        baudCtr <= (others => '0');
      else
        baudCtr <= baudCtr + 1;
      end if;
      
      if bitClr = '1' then
        bitCtr <= (others => '0');
      elsif shiftEn = '1' then
        bitCtr <= bitCtr + 1;
      end if;
      
      if shiftEn = '1' and TCBit = '0' then
        intData <= RxPort & intData(7 downto 1);
      end if;
      
      if resetReg = '1' then
        numReg <= (others => (others => '0'));
        number <= (others => '0');
      elsif writeNumReg = '1' then
        numReg(to_integer(numAddr)) <= intData;
      end if;
      
      if resetReg = '1' then
        numAddr <= (others => '0');
      elsif writeNumReg = '1' then
        numAddr <= numAddr + 1;
      end if;
      
      if resetReg = '1' then
        readAddr <= (others => '0');
        neg <= '0';
      elsif convert = '1' then
        readAddr <= readAddr + 1;
      end if;
      
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
      
      if insNeg = '1' then
        if neg = '1' then
          number <= -number;
         end if;
      end if;
    end if;
    
    TCbit <= '0';
    if bitCtr = 8 then
      TCbit <= '1';
    end if;
    
    TCbaud <= '0';
    if baudCtr = 104 then
      TCbaud <= '1';
    end if;
    
    readDone <= '0';
    if readAddr = numAddr - 2 then
      readDone <= '1';
    end if;
    
    numEnd <= '0';
    if intData = "00100000" then
      numEnd <= '1';
    end if;
    
  end process;
  
  numPort <= number;
end behavioral;
