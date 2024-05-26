library IEEE;
use IEEE.std_logic_1164.all;

entity input is
  port (clkExt: in std_logic;
        buttonPort: in std_logic;
        inputExtPort: in std_logic_vector(7 downto 0);
        TxPort: out std_logic);
end input;

architecture structural of input is
  component transmitter is
    port (clk: in std_logic;
          data: in std_logic_vector(7 downto 0);
          newData: in std_logic;
          Tx: out std_logic;
          TxReady: out std_logic);
  end component;

  component clockGenerator is
    port (clkExtPort: in std_logic;
          clkPort: out std_logic);
  end component;

  component buttonInterface is
    port (clk: in std_logic;
          buttonPort: in std_logic;
          buttonMpPort: out std_logic);
  end component;

  signal clk, btn: std_logic := '0';

begin
  clock: clockGenerator
    port map (clkExtPort => clkExt,
              clkPort => clk);

  inp: buttonInterface
    port map (clk => clk,
              buttonPort => buttonPort,
              buttonMpPort => btn);
              
  tr: transmitter
    port map (clk => clk,
              data => inputExtPort,
              newData => btn,
              Tx => TxPort,
              TxReady => open);
end structural;
