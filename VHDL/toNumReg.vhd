--
--toNumReg.vhd --- converts a number to a register file containing ASCII BCD
--equivalent of the number
--
--Author: Joshua Meise and Brandon Zhao
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.myPackage.all;

-- Entity definition.
entity toNumReg is
  port (clk: in std_logic;
        ANumPort: in signed(15 downto 0);
        newANumPort: in std_logic;
        BNumPort: in signed(15 downto 0);
        newBNumPort: in std_logic;
        maxAddrPort: out unsigned(7 downto 0);
        newRegPort: out std_logic;
        regPort: out regType);
end toNumReg;

-- Architecture definition.
architecture behavioral of toNumReg is
  -- User defined states.
	type state is (reset, idle, latchA, latchB, countDig, checkNeg, goToNeg, writeNeg, conv, writeConv, addSpace, send);

  -- Internal and control signals.
  signal cs, ns: state := idle;
	signal intAddr: unsigned(7 downto 0) := (others => '0');
  signal intData: unsigned(15 downto 0) := (others => '0');
  signal intReg: regType := (others => (others => '0'));
  signal intNewReg: std_logic := '0';
  signal TCconvert: std_logic := '0';
  signal write, clr, wtNeg, neg, clrReg, count, convert, chNeg, space, readA, readB: std_logic := '0';
  signal writeData: std_logic_vector(7 downto 0) := (others => '0');
  signal numDig: unsigned(2 downto 0) := (others => '0');
  signal dig: unsigned(3 downto 0) := (others => '0');
  signal intNum: signed(15 downto 0) := (others => '0');
  
begin

  -- State update process.
	stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  -- Next state and output logic.
  combinational: process(cs, newANumPort, newBNumPort, TCconvert, neg)
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
    space <= '0';
    clr <= '0';
    readA <= '0';
    readB <= '0';
    
    case cs is
      -- Clear all registers and counters.
      when reset =>
        clr <= '1';
        ns <= idle;
      -- When a new number arrived move on to load it.
      when idle =>
        if newANumPort = '1' then
          ns <= latchA;
        elsif newBNumPort = '1' then
            ns <= latchB;
        end if;
      -- If a new first term has arrived.
      when latchA => 
        readA <= '1';
        ns <= checkNeg;
      -- If a new second term has arrived.
      when latchB => 
        readB <= '1';
        ns <= checkNeg;
      -- Check to see if the number is negative.
      when checkNeg =>
        chNeg <= '1';
        ns <= goToNeg;
      -- If the number is negative then write the negative sign into the FIFO.
      when goToNeg =>
        if neg = '1' then
          ns <= writeNeg;
        else
          ns <= countDig;
        end if;
      -- Write the negative sign into the FIFO.
      when writeNeg =>
        wtNeg <= '1';
        ns <= countDig;
      -- COunt the number of digits in the number.
      when countDig =>
        count <= '1';
        ns <= conv;
      -- Convert the number to BCD.
      when conv =>
        convert <= '1';
        ns <= writeConv;
      -- Write the corresponding BCD value into the register file.
      when writeConv =>
        write <= '1';
        if TCconvert = '1' then
          ns <= addSpace;
        else
          ns <= conv;
        end if;
      -- Add a space at the end of the number.
      when addSpace =>
        space <= '1';
        ns <= send;
      -- Send the register file to the output block.
      when send =>
        intNewReg <= '1';
        ns <= reset;
      -- Ghost states.
      when others =>
        ns <= reset;
    end case;
  end process;
  
	datapath: process(clk, numDig, dig)
  begin
    if rising_edge(clk) then
      -- Load the first term in.
      if readA = '1' then
        intNum <= ANumPort;
      end if;
      -- Load the second term in.
      if readB = '1' then
        intNum <= BNumPort;
      end if;

      -- Clear the register file and reset the address counter.
      if clr = '1' then
        intAddr <= (others => '0');
        intReg <= (others => (others => '0'));
      end if;

      -- Detect whetehr or not the number is negative and convert to 16 big
      -- unsigned for easier conversion to BCD with a lookup table.
      neg <= '0';
      if chNeg = '1' then
        if intNum < 0 then
          neg <= '1';
        end if;
        intData <= to_unsigned(abs(to_integer(intNum)), 16);
      end if;

      -- Write the ASCII code for a negative sign into the first position in
      -- the FIFO.
      if wtNeg = '1' then
        intReg(to_integer(intAddr)) <= "00101101";
        intAddr <= intAddr + 1;
      end if;

      -- Count the number of digits in the number.
      if count = '1' then
        if to_integer(intData) > 9999 then
          numDig <= to_unsigned(5, 3);
        elsif to_integer(intData) > 999 and to_integer(intData) < 10000 then
          numDig <= to_unsigned(4, 3);
        elsif to_integer(intData) > 99 and to_integer(intData) < 1000 then
          numDig <= to_unsigned(3, 3);
        elsif ((to_integer(intData) > 9) and (to_integer(intData) < 100)) then
          numDig <= to_unsigned(2, 3);
        else
          numDig <= to_unsigned(1, 3);
        end if;    
      end if;

      -- Convert the number to ASCII BCD.
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

      -- Write the ASCII BCD of the digit into the register file.
      if write = '1' then
        intReg(to_integer(intAddr)) <= writeData;
        intAddr <= intAddr + 1;
      end if;

      -- Insert a space at the end of the number.
      if space = '1' then
        intReg(to_integer(intAddr)) <= "00100000";
        intAddr <= intAddr + 1;
      end if;
    end if;

    -- Add 0x3 on at the beginning of the digit to be written to the register.
    writeData <= "0011" & std_logic_vector(dig);

    -- COnversion is done when the number of digits has decreased to 0.
    TCconvert <= '0';
    if numDig = 0 then
      TCconvert <= '1';
    end if;
    
  end process;

  -- Tie internal signals to external ports.
  maxAddrPort <= intAddr;
  regPort <= intReg;
  newRegPort <= intNewReg;

end behavioral;
