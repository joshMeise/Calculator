library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity receiver is
  port (clk: in std_logic;
        RXPort: in std_logic;
        waitNumPort: in std_logic;
        waitOpPort: in std_logic;
        RxDonePort: out std_logic;
        numPort: out signed(15 downto 0);
        opPort: opType);
end receiver;

architecture behavioral of receiver is
  type state is (reset, idle, op, num);

  signal cs, ns: state := reset;
  signal intOp: opType := sum;
  signal intNum: signed(15 downto 0) := (others => '0');
  signal 
        
        
        
