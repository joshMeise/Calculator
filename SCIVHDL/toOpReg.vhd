library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity toOpReg is
port (clk: in std_logic;
      opPort: in opType;
      newOpPort: in std_logic;
      maxAddrPort: out unsigned(7 downto 0);
      newRegPort: out std_logic;
      regPort: out regType);
end toOpReg;

architecture behavioral of toOpReg is
  type state is (idle, fillReg, send);

  signal cs, ns: state := idle;
  signal intReg: regType := (others => (others => '0'));
  signal intMaxAddr: unsigned (7 downto 0) := (others => '0');
  signal intNewReg, regFill: std_logic := '0';
begin

---------FSM-----------
  stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  combinational: process(cs, newOpPort)
  begin
    -- Defaults.
    ns <= cs;
    intNewReg <= '0';
    regFill <= '0';
    
    case cs is
      when idle =>
        if newOpPort = '1' then
          ns <= fillReg;
        end if;
      when fillReg =>
        regFill <= '1';
        ns <= send;
      when send =>
        intNewReg <= '1';
        ns <= idle;
      when others =>
        ns <= idle;
    end case;
  end process;

------------Datapath-------------
  datapath: process(clk)
  begin
    if rising_edge(clk) then
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
        intMaxAddr <= to_unsigned(2, 8);
      end if;
    end if;  
  end process;

  regPort <= intReg;
  newRegPort <= intNewReg;
  maxAddrPort <= intMaxAddr;
    
end behavioral;
