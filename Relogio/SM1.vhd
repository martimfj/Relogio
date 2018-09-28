LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SM1 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        input1 : IN STD_LOGIC := '0';
        output1 : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
		  modo    : OUT STD_LOGIC := '0'
    );
END SM1;

ARCHITECTURE BEHAVIOR OF SM1 IS
    
	 TYPE type_fstate IS (state0,state1,state4,state7,state10,state5,state3,state2,state6,state8,
	 state9,state11,state14,state13,state15,state12,state16,state17,state18,state19,state20);
    
	 SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
	 signal flag4: std_logic;
	 
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
            output1 <= "0001100111111000000";
        ELSE
				
					
            CASE fstate IS
				
					 WHEN state0 =>
	--					if(clock = '1') then
                    reg_fstate <= state1;
						  
		--				else
	--					  reg_fstate  <= state0;
                    output1 <= "0000000000000000000";
		--				end if;
                
						  
					 WHEN state1 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state2;
								
                    ELSE
                        reg_fstate <= state3;
								
                    END IF;

                    output1 <= "1010001000000000000";
				

					WHEN state2 =>
					 
                    reg_fstate <= state0;

                    output1 <= "0010000100000000000";
				


					 WHEN state3 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state4;
								
                    ELSE
                        reg_fstate <= state5;
								
                    END IF;

                    output1 <= "1000011000000000000";
				

					WHEN state4 =>
					 
                    reg_fstate <= state0;

                    output1 <= "0010010010000100000";

						  
					WHEN state5 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state6;
								
                    ELSE
                        reg_fstate <= state7;
								
                    END IF;

                    output1 <= "1010101000000000000";
				

					WHEN state6 =>
					 
                    reg_fstate <= state0;

                    output1 <= "0010100001000110000";

						  
					WHEN state7 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state8;
								
                    ELSE
                        reg_fstate <= state9;
								
                    END IF;

                    output1 <= "1000111000000000000";
				

					WHEN state8 =>
					 
                    reg_fstate <= state0;

                    output1 <= "0010110000100111000";

						  
								  
					WHEN state9 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state10;
								flag4 <= '0';
								
                    ELSE
                        reg_fstate <= state12;
								flag4 <= '1';
								
                    END IF;

                    output1 <= "0111001000000000000";
				

					WHEN state10 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state11;
							
								
                    ELSE
                        reg_fstate <= state12;
								
                    END IF;

                    output1 <= "1011001000000000000";
							
				
					WHEN state11 =>
					 
                    reg_fstate <= state0;

                    output1 <= "0011000000010111100";

						  	  
					WHEN state12 =>
					
                    IF (input1 = '0') THEN
                        reg_fstate <= state13;
						  
								IF(flag4 = '1') THEN
									reg_fstate <= state11;
								END IF;
								
                    ELSE
                        reg_fstate <= state14;
								
                    END IF;

                    output1 <= "0101011000000000000";
				

					WHEN state13 =>
					 
                    reg_fstate <= state0;

                    output1 <= "0011010000001111110";
						  
				
					
					
					WHEN state14 =>
					 
                    reg_fstate <= state0;
						  modo <= not(modo);	
							
                    output1 <= "0011010000001111111";
				
				
				
                WHEN OTHERS => 
   					  reg_fstate <= state0;
                    output1 <= "XXXXXXXXXXXXXXXXXXX";
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;