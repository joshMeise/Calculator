library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fsm is
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
end fsm;

architecture behavioral of fsm is
  type state is (reset, waitA, acceptA, sendA, waitSendA, waitOp, acceptAdd, acceptSub, acceptMult, sendOp, waitSendOp, waitB, acceptB, sendB, waitSendB, calc, sendCalc, waitSendCalc);

  signal cs, ns: state := reset;

begin
  stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  combinational: process(cs, sumPort, multPort, subPort, loadPort, resetPort, TCDonePort)
  begin
    -- Defaults.
    AEnPort <= '0';
    BEnPort <= '0';
    sumEnPort <= '0';
    subEnport <= '0';
    multEnPort <= '0';
    resetEnPort <= '0';
    calcEnPort <= '0';
    ASendPort <= '0';
    BSendPort <= '0';
    opSendPort <= '0';
    ansSendPort <= '0';

    case cs is
      when reset =>
        resetEnPort <= '1';
        ns <= waitA;
      when waitA =>
        if loadPort = '1' then
          ns <= acceptA;
        elsif resetPort = '1' then
          ns <= reset;
        end if;
      when acceptA =>
        AEnPort <= '1';
        ns <= sendA;
      when sendA =>
        ASendPort <= '1';
        ns <= waitSendA;
      when waitSendA => 
        if TCDonePort = '1' then
          ns <= waitOp;
        end if;
      when waitOp =>
        if sumPort = '1' then
          ns <= acceptAdd;
        elsif subPort = '1' then
          ns <= acceptSub;
        elsif multPort = '1' then
          ns <= acceptMult;
        elsif resetPort = '1' then
          ns <= reset;
        end if;
      when acceptAdd =>
        sumEnPort <= '1';
        ns <= sendOp;
      when acceptSub =>
        subEnPort <= '1';
        ns <= sendOp;
      when acceptMult =>
        multEnPort <= '1';
        ns <= sendOp;
      when sendOp =>
        opSendPort <= '1';
        ns <= waitSendOp;
      when waitSendOp =>
        if TCDonePort = '1' then
          ns <= waitB;
        end if;
      when waitB =>
        if loadPort = '1' then
          ns <= acceptB;
        elsif resetPort = '1' then
          ns <= reset;
        end if;
      when acceptB =>
        BEnPort <= '1';
        ns <= sendB;
      when sendB =>
        BSendPort <= '1';
        ns <= waitSendB;
      when waitSendB =>
        if TCDonePort = '1' then
          ns <= calc;
        end if;
      when calc =>
        calcEnPort <= '1';
        ns <= sendCalc;
      when sendCalc =>
        ansSendPort <= '1';
        ns <= waitSendCalc;
      when waitSendCalc =>
        if TCDonePort = '1' then
          ns <= reset;
        end if;
      when others =>
        ns <= reset;
    end case;

  end process;
end behavioral;
