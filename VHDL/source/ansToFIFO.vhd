--
--ansToFIFO.vhd --- converts a signed number to a series of 8 bit standard logic
--vectors sroted in a register.
--
--Author: Josh Meise and Brandon Zhao
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.myPackage.all;

-- Entity definition.
entity ansToFIFO is
  port (clk: in std_logic;
        numPort: in signed(15 downto 0);
        newNumPort: in std_logic;
        maxAddrPort: out unsigned(7 downto 0);
        newRegPort: out std_logic;
        regPort: out regType);
end ansToFIFO;

-- Architecture definition.
architecture behavioral of ansToFIFO is
  -- User-defined states.
	type state is (reset, idle, addEq, countDig, checkNeg, goToNeg, writeNeg, conv, writeConv, addNewline, send);

  -- Internal and control signals.
  signal cs, ns: state := reset;
	signal intAddr: unsigned(7 downto 0) := (others => '0');
  signal intData: unsigned(15 downto 0) := (others => '0');
  signal intReg: regType := (others => (others => '0'));
  signal intNewReg: std_logic := '0';
  signal write, clr, wtNeg, neg, clrReg, count, convert, chNeg, equal, newLine, TCconvert: std_logic := '0';
  signal writeData: std_logic_vector(7 downto 0) := (others => '0');
  signal numDig: unsigned(2 downto 0) := (others => '0');
  signal dig: unsigned(3 downto 0) := (others => '0');

begin
  -- Synchronously update the state.
	stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  -- Next state and output logic for FSM.
  combinational: process(cs, newNumPort, TCconvert, neg)
	begin
    -- Defaults.
    ns <= cs;
    intNewReg <= '0';
    chNeg <= '0';
    write <= '0';
    wtNeg <= '0';
    intNewReg <= '0';
    convert <= '0';
    count <= '0';
    newLine <= '0';
    equal <= '0';
    clr <= '0';
    
    case cs is
      -- Clear all registers and reset the address counter.
      when reset =>
        clr <= '1';
        ns <= idle;
      -- Wait for a new number to be entered.
      when idle =>
        if newNumPort = '1' then
          ns <= addEq;
        end if;
      -- Add an equal sign in front of the answer.
      when addEq =>
        equal <= '1';
        ns <= countDig;
      -- Count the number of digits in the answer.
      when countDig =>
        count <= '1';
        ns <= checkNeg;
      -- Check if the number is negative.
      when checkNeg =>
        chNeg <= '1';
        ns <= goToNeg;
      -- Insert a negative sign if the number is negative.
      when goToNeg =>
        if neg = '1' then
          ns <= writeNeg;
        else
          ns <= conv;
        end if;
      -- Write the negative sign into the FIFO if necessary.
      when writeNeg =>
        wtNeg <= '1';
        ns <= conv;
      -- COnvert the number to the ASCII BCD values of each of its digits.
      when conv =>
        convert <= '1';
        ns <= writeConv;
      -- Write the ASCII BCD value of the digit into the FIFO.
      when writeConv =>
        write <= '1';
        if TCconvert = '1' then
          ns <= addNewLine;
        else
          ns <= conv;
        end if;
      -- Add a new line charater at the end of the number along with a carriage
      -- return.
      when addNewLine =>
        newLine <= '1';
        ns <= send;
      -- Send the register file to the output block.
      when send =>
        intNewReg <= '1';
        ns <= reset;
      -- Possible chost states.
      when others =>
        ns <= reset;
    end case;
  end process;
  
	datapath: process(clk, numDig, dig)
  begin
    if rising_edge(clk) then
      -- Clear all registers and counters.
      if clr = '1' then
        intReg <= (others => (others => '0'));
        intAddr <= (others => '0');
      end if;

      -- Insert an equal sign and a space at the beginning of the number and
      -- set the current maximum address to 2.
      if equal = '1' then
        intReg(0) <= "00111101";
        intReg(1) <= "00100000";
        intAddr <= to_unsigned(2, 8);
      end if;

      -- Check to see if the number is negative.
      neg <= '0';
      if chNeg = '1' then
        if numPort < 0 then
          neg <= '1';
        end if;
        intData <= to_unsigned(abs(to_integer(numPort)), 16);
      end if;
      
      if wtNeg = '1' then
        intReg(to_integer(intAddr)) <= "00101101";
        intAddr <= intAddr + 1;
      end if;

      -- Count the number of digits in the number.
      if count = '1' then
        if abs(to_integer(numPort)) > 9999 then
          numDig <= to_unsigned(5, 3);
        elsif abs(to_integer(numPort)) > 999 and abs(to_integer(numPort)) < 10000 then
          numDig <= to_unsigned(4, 3);
        elsif abs(to_integer(numPort)) > 99 and abs(to_integer(numPort)) < 1000 then
          numDig <= to_unsigned(3, 3);
        elsif abs(to_integer(numPort)) > 9 and abs(to_integer(numPort)) < 100 then
          numDig <= to_unsigned(2, 3);
        else
          numDig <= to_unsigned(1, 3);
        end if;    
      end if;

      -- Convert each digit in the number to the ASCII equivalent of that digit.
      if convert = '1' then        
        if numDig = 5 then
          dig <= resize(intData/10000, 4);
          intData <= intData mod 10000;
        elsif numDig = 4 then
          dig <= resize(intData/1000, 4);
          intData <= intData mod 1000;
        elsif numDig = 3 then
          dig <= resize(intData/100, 4);
          intData <= intData mod 100;
        elsif numDig = 2 then
          dig <= resize(intData/10, 4);
          intData <= intData mod 10;
        elsif numDig = 1 then
          dig <= resize(intData, 4);
        end if;
        numDig <= numDig - 1;
      end if;

      -- Write the ASCII equivaluent of each digit to the register file.
      if write = '1' then
        intReg(to_integer(intAddr)) <= writeData;
        intAddr <= intAddr + 1;
      end if;

      -- Insert a newline and carriage return at the end of the number.
      if newLine = '1' then
        intReg(to_integer(intAddr)) <= "00001010";
        intReg(to_integer(intAddr + 1)) <= "00001101";
        intAddr <= intAddr + 2;
      end if;
    end if;
  
    writeData <= "0011" & std_logic_vector(dig);

    -- Conversion si done when there are no more digits in the number.
    TCconvert <= '0';
    if numDig = 0 then
      TCconvert <= '1';
    end if;
    
  end process;

  -- Wire together internal signals to external ports.
  maxAddrPort <= intAddr;
  regPort <= intReg;
  newRegPort <= intNewReg;

end behavioral;
