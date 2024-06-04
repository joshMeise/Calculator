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
  component toNumReg is
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
  component toAnsReg is
    port (clk: in std_logic;
          numPort: in signed(15 downto 0);
          newNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  -- Takes in current operation and converts to ASCII followed by a space.
  component toOpReg is
    port (clk: in std_logic;
          opPort: in opType;
          newOpPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  -- FIFO and transmitter.
  component trans is
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
  end component;

  -- INternal signals.
  signal clk, RXDone, ansSend, ASend, BSend, opSend, resetEn, AEn, BEn, sumEn, multEn, subEn, calcEn, newNum, newNumReg, newOpReg, newAnsReg, newReg, TCDone, loadSig, addSig, subSig, multSig, resetSig: std_logic := '0';
  signal A, B, ans: signed(15 downto 0) := (others => '0');
  signal op: opType := sum;
  signal numMaxAddr, opMaxAddr, ansMaxAddr, maxAddr: unsigned(7 downto 0) := (others => '0');
  signal numReg, opReg, ansReg, reg: regType := (others => (others => '0'));
  signal num: signed(7 downto 0) := (others => '0');

begin
  
  clkGen: clockGenerator
    port map(clkExtPort => clkExtPort,
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

  toNum: toNumReg
    port map (clk => clk,
              ANumPort => A,
              newANumPort => ASend,
              BNumPort => B,
              newBNumPort => BSend,
              maxAddrPort => numMaxAddr,
              newRegPort => newNumReg,
              regPort => numReg);

  toOp: toOpReg
    port map (clk => clk,
              opPort => op,
              newOpPort => opSend,
              maxAddrPort => opMaxAddr,
              newRegPort => newOpReg,
              regport => opReg);
  
  toAns: toAnsReg
    port map (clk => clk,
              numPort => ans,
              newNumPort => ansSend,
              maxAddrPort => ansMaxAddr,
              newRegPort => newAnsReg,
              regport => ansReg);

  transmitter: trans
    port map(clk => clk,
             numRegPort => numReg,
             newNumRegPort => newNumReg,
             opRegPort => opReg,
             newOpRegPort => newOpReg,
             ansRegPort => ansReg,
             newAnsRegPort => newAnsReg,
             numMaxAddrPort => numMaxAddr,
             opMaxAddrPort => opMaxAddr,
             ansMaxAddrPort => ansMaxAddr,
             TxPort => TXExtPort,
             TCDonePort => TCDone);
end structural;
