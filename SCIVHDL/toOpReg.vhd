--
--toOpReg.vhd --- converts from an operation to the corresponding ASCII code
--for the operation
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
entity toOpReg is
  port (clk: in std_logic;
        opPort: in opType;
        newOpPort: in std_logic;
        maxAddrPort: out unsigned(7 downto 0);
        newRegPort: out std_logic;
        regPort: out regType);
end toOpReg;

-- Architecture definition.
architecture behavioral of toOpReg is
  -- State types.
  type state is (idle, fillReg, send);

  -- Internal and control signals.
  signal cs, ns: state := idle;
  signal intReg: regType := (others => (others => '0'));
  signal intMaxAddr: unsigned (7 downto 0) := (others => '0');
  signal intNewReg, regFill: std_logic := '0';
  
begin

  -- Synchrnous state update process.
  stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  -- Output and next state logic.
  combinational: process(cs, newOpPort)
  begin
    -- Defaults.
    ns <= cs;
    intNewReg <= '0';
    regFill <= '0';
    
    case cs is
      -- Leave idle state only when a new operation is present.
      when idle =>
        if newOpPort = '1' then
          ns <= fillReg;
        end if;
      -- Insert the ASCII code of the operation into the register followed by a
      -- space.
      when fillReg =>
        regFill <= '1';
        ns <= send;
      -- Send the register file to the output block.
      when send =>
        intNewReg <= '1';
        ns <= idle;
      when others =>
        ns <= idle;
    end case;
  end process;

  datapath: process(clk)
  begin
    if rising_edge(clk) then
      -- Place the corresponding ASCII code of the operation followed by a
      -- space into the register file.
      if regFill = '1' then
        if opPort = sum then
         intReg(0) <= "00101011";
          intReg(1) <= "00100000";
        elsif opPort = sub then
          intReg(0) <= "00101101";
          intReg(1) <= "00100000";
        elsif opPort = mult then
          intReg(0) <= "01111000";
          intReg(1) <= "00100000"; 
        end if;
        -- Set the maximum address of the register file to 2 since there are 2
        -- words in the register file.
        intMaxAddr <= to_unsigned(2, 8);
      end if;
    end if;  
  end process;

  -- Tie internal signals to external signals.
  regPort <= intReg;
  newRegPort <= intNewReg;
  maxAddrPort <= intMaxAddr;
    
end behavioral;
