library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity trans is
port (clk: in std_logic;
      numRegPort: in regType;
      newNumRegPort: in std_logic;
      opRegPort: in regType;
      newOpRegPort: in std_logic;
      ansRegPort: regType;
      newAnsRegPort: in std_logic;
      numMaxAddrPort: in unsigned(7 downto 0);
      opMaxAddrPort: in unsigned(7 downto 0);
      ansMaxAddrPort: in unsigned(7 downto 0);
      TxPort: out std_logic;
      TCDonePort: out std_logic);
end trans;

architecture behavioral of trans is

	component toOutput is
    port (clk: in std_logic;
          TxReady: in std_logic;
          numReg: in regType;
          newNumReg: in std_logic;
          opReg: in regType;
          newOpreg: in std_logic;
          ansReg: in regType;
          newAnsReg: in std_logic;
          numMaxAddr: in unsigned(7 downto 0);
          opMaxAddr: in unsigned(7 downto 0);
          ansMaxAddr: in unsigned(7 downto 0);  
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
              numReg => numRegPort,
              newNumReg => newNumRegPort,
              opReg => opRegPort,
              newOpReg => newOpRegPort,
              ansReg => ansRegPort,
              newAnsReg => newAnsRegPort,
              numMaxAddr => numMaxAddrPort,
              opMaxAddr => opMaxAddrPort,
              ansMaxAddr => ansMaxAddrPort,
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
