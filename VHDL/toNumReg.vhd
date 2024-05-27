library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--use IEEE.fixed_pkg.all;

library work;
use work.myPackage.all;
--use work.fixed_pkg.all;

entity toNumReg is
port (clk: in std_logic;
      numPort: in signed(15 downto 0);
      newNumPort: in std_logic;
      maxAddrPort: out unsigned(7 downto 0);
      newRegPort: out std_logic;
      regPort: out regType);
end toNumReg;

architecture behavioral of toNumReg is
	type state is (reset, idle, countDig, checkNeg, goToNeg, writeNeg, conv, writeConv, addSpace, waitToClear, send);
    
  signal cs, ns: state := idle;
	signal intAddr: unsigned(7 downto 0) := (others => '0');
  signal intData: unsigned(15 downto 0) := (others => '0');
  signal intReg: regType := (others => (others => '0'));
  signal intNewReg: std_logic := '0';
  signal TCconvert: std_logic := '0';
  signal write, clr, wtNeg, neg, clrReg, count, convert, chNeg, space: std_logic := '0';
  signal writeData, r1, r0: std_logic_vector(7 downto 0) := (others => '0');
  signal numDig: unsigned(2 downto 0) := (others => '0');
  signal dig: unsigned(3 downto 0) := (others => '0');
begin

	stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;
  
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
    space <= '0';
    clr <= '0';
    
    case cs is
      when reset =>
        clr <= '1';
        ns <= idle;
      when idle =>
        if newNumPort = '1' then
          ns <= countDig;
        end if;
      when countDig =>
        count <= '1';
        ns <= checkNeg;
      when checkNeg =>
        chNeg <= '1';
        ns <= goToNeg;
      when goToNeg =>
        if neg = '1' then
          ns <= writeNeg;
        else
          ns <= conv;
        end if;
      when writeNeg =>
        wtNeg <= '1';
        ns <= conv;
      when conv =>
        convert <= '1';
        ns <= writeConv;
      when writeConv =>
        write <= '1';
        
        if TCconvert = '1' then
          ns <= addSpace;
        else
          ns <= conv;
        end if;
      when addSpace =>
        space <= '1';
        ns <= send;
      when send =>
        intNewReg <= '1';
        ns <= waitToClear;
      when waitToClear =>
        ns <= reset;
      when others =>
        ns <= reset;
    end case;
  end process;
  
	datapath: process(clk, numDig, dig)
  begin
    if rising_edge(clk) then
      if clr = '1' then
        intAddr <= (others => '0');
        intReg <= (others => (others => '0'));
      end if;
      
      neg <= '0';
      if chNeg = '1' then
        if numPort < 0 then
          neg <= '1';
        end if;
        intData <= to_unsigned(abs(to_integer(numPort)), 16);
      end if;
      
      if wtNeg = '1' then
        intReg(to_integer(intAddr)) <= "10010110";
        intAddr <= intAddr + 1;
      end if;
      
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
      
      if write = '1' then
        intReg(to_integer(intAddr)) <= writeData;
        intAddr <= intAddr + 1;
      end if;

      if space = '1' then
        intReg(to_integer(intAddr)) <= "00001010";
        intReg(to_integer(intAddr + 1)) <= "00001101";
        intAddr <= intAddr + 2;
      end if;
    end if;
  
    writeData <= "0011" & std_logic_vector(dig);
    
    TCconvert <= '0';
    if numDig = 0 then
      TCconvert <= '1';
    end if;
    
  end process;

  maxAddrPort <= intAddr;
  regPort <= intReg;
  newRegPort <= intNewReg;
  r0 <= intReg(0);
  r1 <= intReg(1);

end behavioral;
