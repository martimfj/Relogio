LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SM1 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        input1 : IN STD_LOGIC := '0';
        output1 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
END SM1;

ARCHITECTURE BEHAVIOR OF SM1 IS
    TYPE type_fstate IS (state1,state4,state7,state10,state5,state3,state2,state6,state8,state9,state11,state14,state13,state15,state12,state16,state17,state18);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
begin



    PROCESS (clock)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            output1 <= "00000000000000";
        ELSE
            output1 <= "00000000000000";
            CASE reg_fstate IS
                WHEN state1 =>
					 
					 output1 <= "00100001000000";
                    reg_fstate <= state2;
	
					WHEN state2 =>
                    IF (NOT((input1 = '1'))) THEN
                        reg_fstate <= state1;
                    ELSIF ((input1 = '1')) THEN
                        reg_fstate <= state1;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    output1 <= "10100010000000";
                    
               
                WHEN OTHERS => 
                    reg_fstate <= state1;
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;