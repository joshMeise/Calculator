library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fsm is
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
end fsm;

architecture behavioral of fsm is
  type state is (reset, waitA, acceptA, sendAMp, sendA, waitOp, acceptAdd, acceptSub, acceptMult, sendOpMp, sendOp, waitB, acceptB, sendBMp, sendB, waitCalc, calc, sendCalcMp, sendCalc);

  signal cs, ns: state := reset;

begin
  stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  combinational: process(cs, sumPort, multPort, subPort, RxDonePort, TCDonePort)
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
    ns <= cs;

    case cs is
      when reset => 
        resetEnPort <= '1';
        ns <= waitA;
      when waitA => -- Waits to enable entry A
        if RxDonePort = '1' then
          ns <= acceptA;
        end if;
      when acceptA =>  -- takes in A enabler into datapath
        AEnPort <= '1';
        ns <= sendAMp;
      when sendAMp => -- Sends monopulsed A w clock cycle delay
      	ASendPort <= '1';
        ns <= sendA;
      when sendA =>
        if TCDonePort = '1' then
          ns <= waitOp;
        end if;
      when waitOp => -- Wait for operation
        if sumPort = '1' then
          ns <= acceptAdd;
        elsif subPort = '1' then
          ns <= acceptSub;
        elsif multPort = '1' then
          ns <= acceptMult;
        end if;
      when acceptAdd => -- Determine whether to add, subtract, or multiply
        sumEnPort <= '1';
        ns <= sendOpMp;
      when acceptSub =>
        subEnPort <= '1';
        ns <= sendOpMp;
      when acceptMult =>
        multEnPort <= '1';
        ns <= sendOpMp;
      when sendOpMp => -- Sends the monopulse signal for the operation
      	opSendPort <= '1';
        ns <= sendOp;
      when sendOp =>
        if TCDonePort = '1' then
          ns <= waitB;
        end if;
      when waitB => -- Repeat B with logic for A
        if RxDonePort = '1' then
          ns <= acceptB;
        end if;
      when acceptB =>
        BEnPort <= '1';
        ns <= sendBMp;
      when sendBMp =>
        BSendPort <= '1';
        ns <= sendB;
      when sendB =>
        if TCDonePort = '1' then
          ns <= waitCalc;
        end if;
      when waitCalc => -- delay and then enable calculation phase
        ns <= calc;
      when calc =>
        calcEnPort <= '1';
        ns <= sendCalcMp;
      when sendCalcMp =>
      	ansSendPort <= '1';
        ns <= sendCalc;
      when sendCalc => -- end calculation phase
        if TCDonePort = '1' then
          ns <= reset;
        end if;
      when others =>
        ns <= reset;
    end case;

  end process;
end behavioral;
