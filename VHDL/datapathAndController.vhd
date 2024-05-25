library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity calculator is
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
end calculator;

architecture structural of calculator is
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

  signal AEn, BEn, sumEn, subEn, multEn, resetEn, calcEn: std_logic := '0';
  
begin
  path: datapath
    port map (clk => clk,
              AEnPort => AEn,
              BEnPort => BEn,
              sumEnPort => sumEn,
              subEnPort => subEn,
              multEnPort => multEn,
              resetEnPort => resetEn,
              calcEnPort => calcEn,
              inputPort => inputPort,
              ansPort => ansPort,
              APort => APort,
              BPort => BPort,
              opPort => opPort);

  controller: fsm
    port map (clk => clk,
              sumPort => sumPort,
              multPort => multPort,
              subPort => subPort,
              loadport => loadPort,
              resetPort => resetPort,
              TCDonePort => TCDonePort,
              AEnPort => AEn,
              BEnPort => BEn,
              sumEnPort => sumEn,
              subEnPort => subEn,
              multEnPort => multEn,
              resetEnPort => resetEn,
              calcEnPort => calcEn,
              ASendPort => ASendPort,
              BSendPort => BSendPort,
              opSendPort => opSendPort,
              ansSendPort => ansSendPort);

end structural;
