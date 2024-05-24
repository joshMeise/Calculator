library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity calculator is
  port (clk: in std_logic;
        sumExtPort: in std_logic;
        multExtPort: in std_logic;
        subExtPort: in std_logic;
        loadExtPort: in std_logic;
        resetExtPort: in std_logic;
        inputExtPort: in std_logic_vector(15 downto 0);
        TxExtPort: out std_logic);
end calculator;
        
architecture structural of calculator is
  component fsm is
    port (clk: in std_logic;
          sumPort: in std_logic;
          multPort: in std_logic;
          subPort: in std_logic;
          loadPort: in std_logic;
          resetPort: in std_logic;
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

  component datapath is
    port (clk: in std_logic;
          AEnPort: in std_logic;
          BEnPort: in std_logic;
          sumEnPort: in std_logic;
          subEnPort: in std_logic;
          multEnPort: in std_logic;
          resetEnPort: in std_logic;
          calcEnPort: in std_logic;
          inputPort: in std_logic_vector(15 downto 0);
          ansPort: out signed(15 downto 0);
          APort: out signed(15 downto 0);
          BPort: out signed(15 downto 0);
          opPort: out opType);
  end component;
  
  component toNumReg is
    port (clk: in std_logic;
          numPort: in signed(15 downto 0);
          newNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  component toAnsReg is
    port (clk: in std_logic;
          numPort: in signed(15 downto 0);
          newNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  component toOpReg is
    port (clk: in std_logic;
          opPort: in opType;
          newOpPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  component trans is
    port (clk: in std_logic;
          regPort: in regType;
          newRegPort: in std_logic;
          maxAddrPort: in unsigned(7 downto 0);
          TxPort: out std_logic;
          TCDonePort: out std_logic);
  end component;

  signal ansSend, ASend, BSend, opSend, AEn, BEn, sumEn, multEn, subEn, resetEn, calcEn, newNum, newNumReg, newOpReg, newAnsReg, newReg, TCDone: std_logic := '0';
  signal A, B, ans, num: signed(15 downto 0) := (others => '0');
  signal op: opType := sum;
  signal numMaxAddr, opMaxAddr, ansMaxAddr, maxAddr: unsigned(7 downto 0) := (others => '0');
  signal numReg, opReg, ansReg, reg: regType := (others => (others => '0'));

begin

  controller: fsm
    port map (clk => clk,
              sumPort => sumExtPort,              
              multPort => multExtPort,
              subPort => subExtPort,
              loadPort => loadExtPort,
              resetPort => resetExtPort,
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
              inputPort => inputExtPort,
              ansPort => ans,
              APort => A,
              BPort => B,
              opPort => op);

  toNum: toNumReg
    port map (clk => clk,
              numPort => num,
              newNumPort => newNum,
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
              regport => opReg);

  transmitter: trans
    port map(clk => clk,
             regPort=> reg,
             newRegPort => newReg,
             maxAddrPort => maxAddr,
             TxPort => TXExtPort,
             TCDonePort => TCDone);

  newNum <= ASend or BSend;
  newReg <= newNumReg or newOpReg or newAnsReg;
  
  updateRegAndAddr: process(newOpReg, newNumReg)
  begin
    if newOpReg = '1' then
      maxAddr <= opMaxAddr;
      reg <= opReg;
    elsif newNumReg = '1' then
      maxAddr <= numMaxAddr;
      reg <= numReg;
    elsif newOpReg  = '1' then
      maxAddr <= ansMaxAddr;
      reg <= ansReg;
    end if;
  end process;  

  updateNum: process(ansSend, ASend, BSend)
  begin
    if ASend = '1' then
      num <= A;
    elsif BSend = '1' then
      num <= B;
    end if; 
  end process;  
      
end structural;
