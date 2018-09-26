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
    TYPE type_fstate IS (state0, state1,state4,state7,state10,state5,state3,state2,state6,state8,state9,state11,state14,state13,state15,state12,state16,state17,state18);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock)
	
    BEGIN
        IF (rising_edge(clock)) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,input1)
    BEGIN
		  
			
        IF (reset='1') THEN
            reg_fstate <= state0;
            output1 <= "00000000000000";
        ELSE
				
					
            CASE fstate IS
				
					 WHEN state0 =>
						--if(clock = '1') then
                    reg_fstate <= state1;
						  
						--else
						  --reg_fstate  <= state0;
                    output1 <= "00000000000000";
						--end if;
                
					 WHEN state1 =>
					 
                    reg_fstate <= state2;

                    output1 <= "00100001000000";
						  
					 WHEN state2 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state0;
								
                    ELSE
                        reg_fstate <= state3;
								
                    END IF;

                    output1 <= "10100010000000";
						  
						  
					  WHEN state3 =>
                    reg_fstate <= state4;

                    output1 <= "00011001000000";
						  
						  
					  WHEN state4 =>
                    reg_fstate <= state5;

                    output1 <= "00100100100000";

				
					  WHEN state5 =>
                    if (input1 = '0') THEN
                        reg_fstate <= state0;
                    else 
                        reg_fstate <= state6;
                    END IF;
						  
                    output1 <= "10000110000000";
					  
					  
					  WHEN state6 =>
                 
						  reg_fstate <= state7;

                    output1 <= "00011000100000";
				
					  WHEN state7 =>
                    reg_fstate <= state8;

                    output1 <= "00101000010000";
						  
						  
					  WHEN state8 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state0;
                    ELSE
                        reg_fstate <= state9;
                    END IF;

                    output1 <= "10101010000000";
						  
					  WHEN state9 =>
                    reg_fstate <= state10;

                    output1 <= "00011000010000";
						  
						  
						WHEN state10 =>
                    reg_fstate <= state11;

                    output1 <= "00101100001000";
						  
						WHEN state11 =>
                    if (input1 = '0') then
                        reg_fstate <= state0;
                    else
                        reg_fstate <= state12;
                    END IF;

                    output1 <= "10001110000000";
						  
						  
						WHEN state12 =>
                    reg_fstate <= state13;

                    output1 <= "00011000001000";
						  
						WHEN state13 =>
                    reg_fstate <= state14;

                    output1 <= "00110000000100";
						
						WHEN state14 =>
                    IF (input1 = '0') then
                        reg_fstate <= state0;
                    else
                        reg_fstate <= state15;
                    END IF;
						  
						  output1 <= "01110010000000";
						  
						WHEN state15 =>
                    reg_fstate <= state16;

                    output1 <= "00011000000100";
						  
						 WHEN state16 =>
                 
                    reg_fstate <= state17;

                    output1 <= "00110100000010";
						  
						  
						  WHEN state17 =>
							  IF (input1 = '0') then
									reg_fstate <= state0;
							  else
									reg_fstate <= state18;
								END IF;
						  output1 <= "01010110000000";
						  
						  
						  WHEN state18 =>
								reg_fstate <= state0;

								output1 <= "00011000000010";
						  
						  
                WHEN OTHERS => 
   					  reg_fstate <= state0;
                    output1 <= "XXXXXXXXXXXXXX";
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;