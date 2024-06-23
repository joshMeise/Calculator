--
--topLevel.vhd --- top level for calculator
--
--Author: Joshua Meise and Brandon Zhao
--Created: 05-29-2024
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.myPackage.all;

-- Entity definition.
entity calculator is
  port (clkExtPort: in std_logic;
        sumExtPort: in std_logic;
        multExtPort: in std_logic;
        subExtPort: in std_logic;
        RxExtPort: in std_logic;
        TxExtPort: out std_logic);
end calculator;
        
-- Architecture definition.
architecture structural of calculator is
  -- Clock divider.
  component clockGenerator is
    generic (clockDividerRatio: integer);
    port (clkExtPort: in std_logic;
          clkPort: out std_logic);
  end component;

  -- Button interfacing (monopulser).
  component buttonInterface is
    port(clk: in  std_logic;
         buttonPort: in  std_logic;
         buttonMpPort: out std_logic);
  end component;

  -- Receiver.
  component receiver is
    generic (baudCounter: integer);
    port (clk: in std_logic;
          RxPort: in std_logic;
          numPort: out signed(7 downto 0);
          RxDonePort: out std_logic);
  end component;

  -- Controller.
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

  -- Datapath.
  component datapath is
    port (clk: in std_logic;
          AEnPort: in std_logic;
          BEnPort: in std_logic;
          sumEnPort: in std_logic;
          subEnPort: in std_logic;
          multEnPort: in std_logic;
          resetEnPort: in std_logic;
          calcEnPort: in std_logic;
          numPort: signed(7 downto 0);
          ansPort: out signed(15 downto 0);
          APort: out signed(15 downto 0);
          BPort: out signed(15 downto 0);
          opPort: out opType);
  end component;
  
  -- Takes in number and converts to BCD ASCII and inserts into FIFO.
  component numToFIFO is
    port (clk: in std_logic;
          ANumPort: in signed(15 downto 0);
          newANumPort: in std_logic;
          BNumPort: in signed(15 downto 0);
          newBNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  -- Takes in number and converts to BCD ASCII preceded by an equal sign and
  -- followed by a newline and carriage return and inserts into FIFO.
  component ansToFIFO is
    port (clk: in std_logic;
          numPort: in signed(15 downto 0);
          newNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  -- Takes in current operation and converts to ASCII followed by a space.
  component opToFIFO is
    port (clk: in std_logic;
          opPort: in opType;
          newOpPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  -- FIFO
  component FIFO is
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

  -- Transmitter.
  component transmitter is
    generic (baudCounter: integer);
    port (clk: in std_logic;
          data: in std_logic_vector(7 downto 0);
      	  newData: in std_logic;
      	  Tx: out std_logic;
      	  TxReady: out std_logic);
	end component;

  -- Internal signals.
  signal clk, RXDone, ansSend, ASend, BSend, opSend, resetEn, AEn, BEn, sumEn, multEn, subEn, calcEn, newNum, newNumReg, newOpReg, newAnsReg, newReg, TCDone, loadSig, addSig, subSig, multSig, resetSig, TxReady, newData: std_logic := '0';
  signal A, B, ans: signed(15 downto 0) := (others => '0');
  signal op: opType := sum;
  signal numMaxAddr, opMaxAddr, ansMaxAddr, maxAddr: unsigned(7 downto 0) := (others => '0');
  signal numReg, opReg, ansReg, reg: regType := (others => (others => '0'));
  signal num: signed(7 downto 0) := (others => '0');
  signal data: std_logic_vector(7 downto 0) := (others => '0');

  -- Constants
  constant clockDividerRatioConst: integer := 100;
  constant baudCounterConstant: integer := 104;
begin
  
  clkGen: clockGenerator
    generic map (clockDividerRatio => clockDividerRatioConstant)
    port map (clkExtPort => clkExtPort,
             clkPort => clk);

  addBtn: buttonInterface
    port map (clk => clk,
              buttonPort => sumExtPort,
              buttonMpPort => addSig);

  subBtn: buttonInterface
    port map (clk => clk,
              buttonPort => subExtPort,
              buttonMpPort => subSig);

  multBtn: buttonInterface
    port map (clk => clk,
              buttonPort => multExtPort,
              buttonMpPort => multSig);

  rec: receiver
    generic map (baudCounter => baudCounterConstant)
    port map (clk => clk,
              RxPort => RxExtPort,
              numPort => num,
              RxDonePort => RxDone);
  
  controller: fsm
    port map (clk => clk,
              sumPort => addSig,              
              multPort => multSig,
              subPort => subSig,
              RxDonePort => RxDone,
              TCDonePort => TCDone,
              AEnPort => AEn,
              BEnPort => BEn,
              sumEnPort => sumEn,
              subEnPort => subEn,
              multEnPort => multEn,
              resetEnPort => resetEn,
              calcEnPort => calcEn,
              ASendPort => ASend,
              BSendPort => BSend,
              opSendPort => opSend,
              ansSendPort => ansSend);

  path: datapath
    port map (clk => clk,
              AEnPort => AEn,
              BEnPort => BEn,
              sumEnPort => sumEn,
              subEnPort => subEn,
              multEnPort => multEn,
              resetEnPort => resetEn,
              calcEnPort => calcEn,
              numPort => num,
              ansPort => ans,
              APort => A,
              BPort => B,
              opPort => op);

  toNum: numToFIFO
    port map (clk => clk,
              ANumPort => A,
              newANumPort => ASend,
              BNumPort => B,
              newBNumPort => BSend,
              maxAddrPort => numMaxAddr,
              newRegPort => newNumReg,
              regPort => numReg);

  toOp: opToFIFO
    port map (clk => clk,
              opPort => op,
              newOpPort => opSend,
              maxAddrPort => opMaxAddr,
              newRegPort => newOpReg,
              regport => opReg);
  
  toAns: ansToFIFO
    port map (clk => clk,
              numPort => ans,
              newNumPort => ansSend,
              maxAddrPort => ansMaxAddr,
              newRegPort => newAnsReg,
              regport => ansReg);

  toOut: FIFO
    port map (clk => clk,
              TxReady => TxReady,
              numReg => numReg,
              newNumReg => newNumReg,
              opReg => opReg,
              newOpReg => newOpReg,
              ansReg => ansReg,
              newAnsReg => newAnsReg,
              numMaxAddr => numMaxAddr,
              opMaxAddr => opMaxAddr,
              ansMaxAddr => ansMaxAddr,
              data => data,
              newData => newData,
              TCDone => TCDone);

  trans: transmitter
    generic map (baudCounter => baudCounterConstant)
    port map (clk => clk,
              data => data,
              newData => newData,
              Tx => TxExtPort,
              TxReady => TxReady);
  
end structural;
