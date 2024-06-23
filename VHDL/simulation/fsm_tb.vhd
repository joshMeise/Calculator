--
--controller_tb.vhd --- 
--
--Author: Joshua Meise and Nrandon Zhao
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity definition.
entity fsm_tb is
end fsm_tb;

architecture testbench of fsm_tb is
  component fsm is
    port (clk: in std_logic;
          sumPort: in std_logic;
          multPort: in std_logic;
          subPort: in std_logic;
          RxDonePort: in std_logic;
          TCDonePort: in std_logic;
          AEnPort: out std_logic;
          BEnPort: out std_logic;
          sumEnPort: out std_logic;
          subEnPort: out std_logic;
          multEnPort: out std_logic;
          resetEnPort: out std_logic;
          calcEnPort: out std_logic;
          ASendPort: out std_logic;
          BSendPort: out std_logic;
          opSendPort: out std_logic;
          ansSendPort: out std_logic);
  end component;

  signal clk, sumPort, multPort, subPort, RxDonePort, TCDonePort, AEnPort, BEnPort, sumEnPort, subEnPort, multEnPort, resetEnPort, calcEnPort, ASendPort, BSendPort, opSendPort, ansSendPort: std_logic := '0';

begin
  uut: fsm
    port map (clk => clk,
              sumPort => sumPort,
              multPort => multPort,
              subPort => subPort,
              RxDonePort => RxDonePort,
              TCDonePort => TCDonePort,
              AEnPort => AEnPort,
              BEnPort => BEnPort,
              sumEnPort => sumEnPort,
              multEnPort => multEnPort,
              subEnPort => subEnPort,
              resetEnPort => resetEnPort,
              calcEnPort => calcEnPort,
              ASendPort => ASendPort,
              BSendPort => BSendPort,
              opSendPort => opSendPort,
              ansSendPort => ansSendPort);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    wait for 10ns;
    RxDonePort <= '1';
    wait for 10ns;
    RxDonePort <= '0';
    wait for 40ns;
    TCDonePort <= '1';
    wait for 10ns;
    TCDonePort <= '0';
    wait for 40ns;
    sumPort <= '1';
    wait for 10ns;
    sumPort <= '0';
    wait for 40ns;
    TCDonePort <= '1';
    wait for 10ns;
    TCDonePort <= '0';
    wait for 40ns;
    RxDonePort <= '1';
    wait for 10ns;
    RxDonePort <= '0';
    wait for 40ns;
    TCDonePort <= '1';
    wait for 10ns;
    TCDonePort <= '0';
    wait;
  end process;
end testbench;

  
    
