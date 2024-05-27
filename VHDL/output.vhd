library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity output is
  port (clkExtPort: in std_logic;
        inputExtPort: std_logic_vector(15 downto 0);
        btnExtPort: in std_logic;
        TxExtPort: out std_logic);
end output;

architecture structural of output is
  
  component trans is
    port (clk: in std_logic;
          regPort: in regType;
          newRegPort: in std_logic;
          maxAddrPort: in unsigned(7 downto 0);
          TxPort: out std_logic;
          TCDonePort: out std_logic);
  end component;

  component toNumReg is
    port (clk: in std_logic;
          numPort: in signed(15 downto 0);
          newNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
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

  signal clk, btn, newReg: std_logic := '0';
  signal maxAddr: unsigned(7 downto 0) := (others => '0');
  signal intReg: regType := (others => (others => '0'));
  signal intNum: signed(15 downto 0) := (others => '0');
begin

  t: trans
    port map (clk => clk,
              regPort => intReg,
              newRegPort => newReg,
              maxAddrPort => maxAddr,
              TxPort => TxExtPort,
              TcDonePort => open);

  n: toNumReg
    port map (clk => clk,
              numPort => intNum,
              newNumPort => btn,
              maxAddrPort => maxAddr,
              newRegPort => newReg,
              regPort => intReg);

  c: clockGenerator
    port map (clkExtPort => clkExtPort,
              clkPort => clk);

  b: buttonInterface
    port map (clk => clk,
              buttonPort => btnExtPort,
              buttonMpPort => btn);

  intNum <= signed(inputExtPort);
end structural;
