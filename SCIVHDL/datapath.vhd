library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity datapath is
  port (clk: in std_logic;
        AEnPort: in std_logic;
        BEnPort: in std_logic;
        sumEnPort: in std_logic;
        subEnPort: in std_logic;
        multEnPort: in std_logic;
        resetEnPort: in std_logic;
        calcEnPort: in std_logic;
        numPort: in signed(7 downto 0);
        ansPort: out signed(15 downto 0);
        APort: out signed(15 downto 0);
        BPort: out signed(15 downto 0);
        opPort: out opType);
end datapath;

-- Performs all the operations

architecture behavioral of datapath is
  signal op: opType := sum;

  -- Registers.
  signal A: signed(15 downto 0) := (others => '0');
  signal B: signed(15 downto 0) := (others => '0');
  signal intAns: signed(15 downto 0) := (others => '0');

begin
  process(clk)
  begin
    if rising_edge(clk) then
      -- A register.
      if AEnPort = '1' then
        A <= resize(numPort, 16);
      elsif resetEnPort = '1' then
        A <= (others => '0');
      end if;

      -- B register.
      if BEnPort = '1' then
        B <= resize(numPort, 16);
      elsif resetEnPort = '1' then
        B <= (others => '0');
      end if;
    
      -- Operation register.
      if sumEnPort = '1' then
        op <= sum;
      elsif multEnPort = '1' then
        op <= mult;
      elsif subEnPort = '1' then
        op <= sub;
      end if;

      -- Do the calculation when all information is in.
      if calcEnPort = '1' then
        if op = sum then
          intAns <= A + B;
        elsif op = mult then
          intAns <= resize(A*B, 16);
        elsif op = sub then
          intAns <= A - B;
        end if;
      elsif resetEnPort = '1' then
        intAns <= (others => '0');
      end if;
    end if; 
  end process;

  ansPort <= intAns;
  APort <= A;
  BPort <= B;
  opPort <= op;
end behavioral;
      
