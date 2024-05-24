library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity datapathAndController_tb is
end datapathAndController_tb;

architecture testbench of datapathAndController_tb is
  component calculator is
    port (clk: in std_logic;
          sumPort: in std_logic;
          multPort: in std_logic;
          subPort: in std_logic;
          loadPort: in std_logic;
          resetPort: in std_logic;
          inputPort: in std_logic_vector(15 downto 0);
          TCDonePort: in std_logic;
          ansPort: out signed(15 downto 0);
          ASendPort: out std_logic;
          BSendPort: out std_logic;
          opSendPort: out std_logic;
          ansSendPort: out std_logic;
          APort: out signed(15 downto 0);
          BPort: out signed(15 downto 0);
          opPort: out opType);
  end component;

  signal clk, sumPort, multPort, subPort, loadPort, resetPort, TCDonePort, ASendPort, BSendPort, opSendPort, ansSendPort: std_logic := '0';
  signal inputPort: std_logic_vector(15 downto 0) := (others => '0');
  signal ansPort, APort, BPort: signed(15 downto 0) := (others => '0');
  signal opPort: opType := sum;

begin
  uut: calculator
    port map (clk => clk,
              sumPort => sumPort,
              multPort => multPort,
              subPort => subPort,
              loadPort => loadPort,
              resetPort => resetPort,
              inputPort => inputPort,
              TCDonePort => TCDonePort,
              ansPort => ansPort,
              ASendPort => ASendPort,
              BSendPort => BSendPort,
              opSendPort => opSendPort,
              ansSendPort => ansSendPort,
              APort => APort,
              BPort => BPort,
              opPort => opPort);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    inputPort <= "0000000000001001";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 10ns;
    sumPort <= '1';
    wait for 10ns;
    sumPort <= '0';
    wait for 10ns;
    inputPort <= "0000000000001000";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 40ns;
    resetPort <= '1';
    wait for 10ns;
    resetPort <= '0';
    wait for 40ns;

    inputPort <= "0000000000001001";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 10ns;
    subPort <= '1';
    wait for 10ns;
    subPort <= '0';
    wait for 10ns;
    inputPort <= "0000000000001000";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 40ns;
    resetPort <= '1';
    wait for 10ns;
    resetPort <= '0';
    wait for 40ns;

    inputPort <= "0000000000001001";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 10ns;
    multPort <= '1';
    wait for 10ns;
    multPort <= '0';
    wait for 10ns;
    inputPort <= "0000000000001000";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 40ns;
    resetPort <= '1';
    wait for 10ns;
    resetPort <= '0';
    wait for 40ns;

    inputPort <= "0000000000001001";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 10ns;
    multPort <= '1';
    wait for 10ns;
    multPort <= '0';
    wait for 10ns;
    inputPort <= "0000000000001011";
    loadPort <= '1';
    wait for 10ns;
    loadPort <= '0';
    wait for 40ns;
    resetPort <= '1';
    wait for 10ns;
    resetPort <= '0';
    wait for 40ns;
                 
  end process;
end testbench;
