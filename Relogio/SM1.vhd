LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SM1 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        input1 : IN STD_LOGIC := '0';
		  sequencia: IN STD_LOGIC;
        output1 : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
		  modo    : OUT STD_LOGIC := '0'
		  
    );
END SM1;

ARCHITECTURE BEHAVIOR OF SM1 IS
    
	 TYPE type_fstate IS (state0,state1,state4,state7,state10,state5,state3,state2,state6,state8,
	 state9,state11,state14,state13,state15,state12,state16,state17,state18,state19,state20,state21,
	 state22,state23,state24,state25,state26, state27, state28, state29, state30, state31);
    
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
            output1 <= "0000000000000000000";
        ELSE
				
					
            CASE fstate IS
				
					 WHEN state0 =>
						  if(sequencia = '0') then
								reg_fstate <= state1;
                    else
								reg_fstate <= state15;
							end if;
						  
							output1 <= "0000000000000000000";                
						  
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
				
				
				
				
				
				
				
				
				-------------------- Fluxo 2 -------------------
				
					 WHEN state15 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state16;
								
                    ELSE
                        reg_fstate <= state18;
								
                    END IF;

                    output1 <= "0000001000000000000";
				

					WHEN state16 =>
					 
                    reg_fstate <= state0;

                    output1 <= "0010001100000000000";
						  
						  
					WHEN state17 =>
					 
                    reg_fstate <= state0;

                    output1 <= "1010000100000000000";
				


					 WHEN state18 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state19;
								
                    ELSE
                        reg_fstate <= state21;
								
                    END IF;

                    output1 <= "0000011000000000000";
				

					WHEN state19=>
					 
                    reg_fstate <= state17;

                    output1 <= "0010011010000000000";
						  
					WHEN state20=>
					 
                    reg_fstate <= state17;

                    output1 <= "1000010010000000000";						  

						  
					WHEN state21 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state22;
								
                    ELSE
                        reg_fstate <= state24;
								
                    END IF;

                    output1 <= "0000101000000000000";
				

					WHEN state22 =>
					 
                    reg_fstate <= state20;

                    output1 <= "0010101001000000000";
						  
					WHEN state23 =>
					 
                    reg_fstate <= state20;

                    output1 <= "1010100001000000000";

						  
					WHEN state24 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state25;
								
                    ELSE
                        reg_fstate <= state27;
								
                    END IF;

                    output1 <= "0000111000000000000";
				

					WHEN state25 =>
					 
                    reg_fstate <= state23;

                    output1 <= "0010111000100000000";
						  
					WHEN state26 =>
					 
                    reg_fstate <= state23;

                    output1 <= "1000110000100000000";

						  
								  
					WHEN state27 =>
                    IF (input1 = '0') THEN
                        reg_fstate <= state28;
								flag4 <= '0';
								
                    ELSE
                        reg_fstate <= state30;
								flag4 <= '1';
								
                    END IF;

                    output1 <= "0001001000000000000";
				

					WHEN state28 =>
					 
                    reg_fstate <= state26;

                    output1 <= "0011001000010000000";
						  
						  
					WHEN state29 =>
					 
                    reg_fstate <= state26;

                    output1 <= "1011000000010000000";

						  	  
					WHEN state30 =>
					
                    IF (input1 = '0') THEN
                        reg_fstate <= state31;
								
                    ELSE
                        reg_fstate <= state0;
								
                    END IF;

                    output1 <= "0001011000000000000";
				

					WHEN state31 =>
					 
                    reg_fstate <= state29;

                    output1 <= "0011011000001000000";

			
				
                WHEN OTHERS => 
   					  reg_fstate <= state0;
                    output1 <= "XXXXXXXXXXXXXXXXXXX";
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;