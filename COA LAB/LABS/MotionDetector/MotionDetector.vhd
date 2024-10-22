LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY MotionDetector IS
    PORT(
        clk     : IN std_logic; -- Added clock for proper process execution
        sensor  : IN std_logic_vector(1 downto 0);
        entered : OUT std_logic;
        exited  : OUT std_logic
        
    );
END MotionDetector;

ARCHITECTURE struct OF MotionDetector IS
    SIGNAL enter : std_logic := '0';
    SIGNAL exitt : std_logic := '0';
    
    -- State encoding using one-hot encoding
    CONSTANT NoObject     : std_logic_vector(4 downto 0) := "00001";    
    CONSTANT AonState     : std_logic_vector(4 downto 0) := "00010";
    CONSTANT BonState     : std_logic_vector(4 downto 0) := "00100";
    CONSTANT PassingState : std_logic_vector(4 downto 0) := "01000";
    CONSTANT Passed       : std_logic_vector(4 downto 0) := "10000";
    
    SIGNAL logicState : std_logic_vector(4 downto 0) := NoObject;
    SIGNAL prevState  : std_logic_vector(4 downto 0) := NoObject;
    
BEGIN 
    -- Main process, triggered by clock or reset
    PROCESS (clk)
    BEGIN
        
        IF rising_edge(clk) THEN
            -- Main state transition logic based on sensor inputs
            CASE logicState IS
                WHEN NoObject =>
                    IF sensor = "00" THEN
                        logicState <= NoObject;
                        prevState  <= NoObject;
                        enter <= '0';
                        exitt <= '0';
                    ELSIF sensor = "01" THEN
                        logicState <= AonState;
                        prevState  <= AonState;
                    ELSIF sensor = "10" THEN
                        logicState <= BonState;
                        prevState  <= BonState;
                    ELSE
                        logicState <= NoObject;
                    END IF;
                    
                WHEN AonState =>
                    IF sensor = "11" THEN
                        logicState <= PassingState;
                        prevState  <= AonState;
                        enter <= '0';
                        exitt <= '0';
                    ELSIF sensor = "01" THEN
                        logicState <= AonState;
                    ELSE
                        logicState <= NoObject;
                    END IF;
                    
                WHEN BonState =>
                    IF sensor = "11" THEN
                        logicState <= PassingState;
                        prevState  <= BonState;
                        enter <= '0';
                        exitt <= '0';
                    ELSIF sensor = "10" THEN
                        logicState <= BonState;
                    ELSE
                        logicState <= NoObject;
                    END IF;
                    
                WHEN PassingState =>
                    IF sensor = "10" OR sensor = "01" THEN
                        logicState <= Passed;
                        enter <= '0';
                        exitt <= '0';
                    ELSE
                        logicState <= NoObject;
                    END IF;
                    
                WHEN Passed =>
                    IF sensor = "00" THEN
                        IF prevState = AonState THEN
                            enter <= '1';
                            exitt <= '0';
                        ELSE
                            enter <= '0';
                            exitt <= '1';
                        END IF;
                        logicState <= NoObject;
                    ELSE
                        logicState <= NoObject;
                    END IF;
                    
                WHEN OTHERS =>
                    logicState <= NoObject;
                    
            END CASE;
        END IF;
    END PROCESS;

    -- Output assignments
    entered <= enter;
    exited  <= exitt;

END struct;
