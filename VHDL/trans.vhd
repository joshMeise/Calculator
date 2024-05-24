library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity trans is
port (clk: in std_logic;
      regPort: in regType;
      newRegPort: in std_logic;
      maxAddrPort: in unsigned(7 downto 0);
      TxPort: out std_logic;
      TCDonePort: out std_logic);
end trans;

architecture behavioral of trans is

	component toOutput is
    port (clk: in std_logic;
          TxReady: in std_logic;
          reg: in regType;
          newReg: in std_logic;
          maxAddr: in unsigned(7 downto 0);
          data: out std_logic_vector(7 downto 0);
          newData: out std_logic;
          TCdone: out std_logic);
	end component; 
    
  component transmitter is
    port (clk: in std_logic;
          data: in std_logic_vector(7 downto 0);
      	  newData: in std_logic;
      	  Tx: out std_logic;
      	  TxReady: out std_logic);
	end component;
    
  signal TXReady, newData: std_logic := '0';
  signal data: std_logic_vector(7 downto 0) := (others => '0');
    

begin
	toOout: toOutput
    port map (clk => clk,
              TxReady => TxReady,
              reg => regPort,
              newReg => newRegPort,
              maxAddr => maxAddrPort,
              data => data,
              newData => newData,
              TCDone => TCDonePort);
              
    tr: transmitter
    port map (clk => clk,
              data => data,
              newData => newData,
              Tx => TxPort,
              TxReady => TxReady);
              
end behavioral;
