library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity main is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        --valores para o neighboor
        escolha: in STD_LOGIC_VECTOR(3 downto 0);
        entrada : in STD_LOGIC_VECTOR(15 downto 0);--valor para atribuir a aqueles regs que precisam de neibor
       
        sk : in STD_LOGIC_VECTOR(1 downto 0)
    );
end main;

architecture Behavioral of main is
        --RERGS QUE PRECISA DE NEIBOR 7,8,9,10,11,12,13,14,15
signal menosum : STD_LOGIC:='1';
            --15 13 10 6 
            --14 11 7 3
            --12 8 4 1
            --9 5 2 0
    signal reg0_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg1_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg2_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg3_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg4_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg5_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg6_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg7_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg8_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg9_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg10_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg11_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg12_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg13_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg14_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    signal reg15_neibor : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    

    -- regs dos M
    signal M0 : STD_LOGIC_VECTOR(1 downto 0);
    signal M1 : STD_LOGIC_VECTOR(1 downto 0);
    signal M2 : STD_LOGIC_VECTOR(1 downto 0);
    signal M3 : STD_LOGIC_VECTOR(1 downto 0);
    signal M4 : STD_LOGIC_VECTOR(1 downto 0);
    signal M5 : STD_LOGIC_VECTOR(1 downto 0);
    signal M6 : STD_LOGIC_VECTOR(1 downto 0);
    signal M7 : STD_LOGIC_VECTOR(1 downto 0);
    signal M8 : STD_LOGIC_VECTOR(1 downto 0);
    signal M9 : STD_LOGIC_VECTOR(1 downto 0);
    signal M10 : STD_LOGIC_VECTOR(1 downto 0);
    signal M11 : STD_LOGIC_VECTOR(1 downto 0);
    signal M12 : STD_LOGIC_VECTOR(1 downto 0);
    signal M13 : STD_LOGIC_VECTOR(1 downto 0);
    signal M14 : STD_LOGIC_VECTOR(1 downto 0);
    signal M15 : STD_LOGIC_VECTOR(1 downto 0);    

    --POS0
    signal pos0_0: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_1: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_2: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_3: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_4: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_5: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_6: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_7: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_8: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_9: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_10: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_11: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_12: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_13: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_14: STD_LOGIC_VECTOR(5 downto 0);
    signal pos0_15: STD_LOGIC_VECTOR(5 downto 0);

    --deck absoluute level
    signal deck_abs_level_0 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_1 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_2 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_3 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_4 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_5 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_6 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_7 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_8 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_9 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_10 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_11 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_12 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_13 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_14 : STD_LOGIC_VECTOR(15 downto 0);
    signal deck_abs_level_15 : STD_LOGIC_VECTOR(15 downto 0);

    signal validador0: STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
    



    type pos0_minor is array (0 to 3) of std_logic_vector(5 downto 0);
    signal regpos0_menor : pos0_minor;
    signal regpos1_maior : pos0_minor;


begin   
regpos0_menor(0) <= "000001";
regpos0_menor(1) <= "000010";
regpos0_menor(2) <= "000100";
regpos0_menor(3) <= "001000";

regpos1_maior(0) <= "000010";
regpos1_maior(1) <= "000100";
regpos1_maior(2) <= "001000";
regpos1_maior(3) <= "010000";



validador0<=entrada - 1;





pos0_0<=regpos0_menor(0) when sk<"10" AND M0="00"else
        regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos0_menor(2) when sk<"10" AND M0="10"else
        regpos0_menor(3) when sk<"10" AND M0="11"else
        regpos1_maior(0) when sk>="10" AND M0="00"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
        regpos1_maior(2) when sk>="10" AND M0="10"else
        regpos1_maior(3) ;

pos0_1<=regpos0_menor(0) when sk<"10" AND M1="00"else
        regpos0_menor(1) when sk<"10" AND M1="01"else
        regpos0_menor(2) when sk<"10" AND M1="10"else
        regpos0_menor(3) when sk<"10" AND M1="11"else
        regpos1_maior(0) when sk>="10" AND M1="00"else
        regpos1_maior(1) when sk>="10" AND M1="01"else
        regpos1_maior(2) when sk>="10" AND M1="10"else
        regpos1_maior(3);

pos0_2<=regpos0_menor(0) when sk<"10" AND M2="00"else
        regpos0_menor(1) when sk<"10" AND M2="01"else
        regpos0_menor(2) when sk<"10" AND M2="10"else
        regpos0_menor(3) when sk<"10" AND M2="11"else
        regpos1_maior(0) when sk>="10" AND M2="00"else
        regpos1_maior(1) when sk>="10" AND M2="01"else
        regpos1_maior(2) when sk>="10" AND M2="10"else
        regpos1_maior(3) ;

pos0_3<=regpos0_menor(0) when sk<"10" AND M3="00"else
        regpos0_menor(1) when sk<"10" AND M3="01"else
        regpos0_menor(2) when sk<"10" AND M3="10"else
        regpos0_menor(3) when sk<"10" AND M3="11"else
        regpos1_maior(0) when sk>="10" AND M3="00"else
        regpos1_maior(1) when sk>="10" AND M3="01"else
        regpos1_maior(2) when sk>="10" AND M3="10"else
        regpos1_maior(3) ;

pos0_4<=regpos0_menor(0) when sk<"10" AND M4="00"else
        regpos0_menor(1) when sk<"10" AND M4="01"else
        regpos0_menor(2) when sk<"10" AND M4="10"else
        regpos0_menor(3) when sk<"10" AND M4="11"else
        regpos1_maior(0) when sk>="10" AND M4="00"else
        regpos1_maior(1) when sk>="10" AND M4="01"else
        regpos1_maior(2) when sk>="10" AND M4="10"else
        regpos1_maior(3) ;

pos0_5<=regpos0_menor(0) when sk<"10" AND M5="00"else
        regpos0_menor(1) when sk<"10" AND M5="01"else
        regpos0_menor(2) when sk<"10" AND M5="10"else
        regpos0_menor(3) when sk<"10" AND M5="11"else
        regpos1_maior(0) when sk>="10" AND M5="00"else
        regpos1_maior(1) when sk>="10" AND M5="01"else
        regpos1_maior(2) when sk>="10" AND M5="10"else
        regpos1_maior(3) ;

pos0_6<=regpos0_menor(0) when sk<"10" AND M6="00"else
        regpos0_menor(1) when sk<"10" AND M6="01"else
        regpos0_menor(2) when sk<"10" AND M6="10"else
        regpos0_menor(3) when sk<"10" AND M6="11"else
        regpos1_maior(0) when sk>="10" AND M6="00"else
        regpos1_maior(1) when sk>="10" AND M6="01"else
        regpos1_maior(2) when sk>="10" AND M6="10"else
        regpos1_maior(3) ;

pos0_7<=regpos0_menor(0) when sk<"10" AND M7="00"else
        regpos0_menor(1) when sk<"10" AND M7="01"else
        regpos0_menor(2) when sk<"10" AND M7="10"else
        regpos0_menor(3) when sk<"10" AND M7="11"else
        regpos1_maior(0) when sk>="10" AND M7="00"else
        regpos1_maior(1) when sk>="10" AND M7="01"else
        regpos1_maior(2) when sk>="10" AND M7="10"else
        regpos1_maior(3) ;

pos0_8<=regpos0_menor(0) when sk<"10" AND M8="00"else
        regpos0_menor(1) when sk<"10" AND M8="01"else
        regpos0_menor(2) when sk<"10" AND M8="10"else
        regpos0_menor(3) when sk<"10" AND M8="11"else
        regpos1_maior(0) when sk>="10" AND M8="00"else
        regpos1_maior(1) when sk>="10" AND M8="01"else
        regpos1_maior(2) when sk>="10" AND M8="10"else
        regpos1_maior(3) ;

pos0_9<=regpos0_menor(0) when sk<"10" AND M9="00"else
        regpos0_menor(1) when sk<"10" AND M9="01"else
        regpos0_menor(2) when sk<"10" AND M9="10"else
        regpos0_menor(3) when sk<"10" AND M9="11"else
        regpos1_maior(0) when sk>="10" AND M9="00"else
        regpos1_maior(1) when sk>="10" AND M9="01"else
        regpos1_maior(2) when sk>="10" AND M9="10"else
        regpos1_maior(3) ;

pos0_10<=regpos0_menor(0) when sk<"10" AND M10="00"else
        regpos0_menor(1) when sk<"10" AND M10="01"else
        regpos0_menor(2) when sk<"10" AND M10="10"else
        regpos0_menor(3) when sk<"10" AND M10="11"else
        regpos1_maior(0) when sk>="10" AND M10="00"else
        regpos1_maior(1) when sk>="10" AND M10="01"else
        regpos1_maior(2) when sk>="10" AND M10="10"else
        regpos1_maior(3) ;

pos0_11<=regpos0_menor(0) when sk<"10" AND M11="00"else
        regpos0_menor(1) when sk<"10" AND M11="01"else
        regpos0_menor(2) when sk<"10" AND M11="10"else
        regpos0_menor(3) when sk<"10" AND M11="11"else
        regpos1_maior(0) when sk>="10" AND M11="00"else
        regpos1_maior(1) when sk>="10" AND M11="01"else
        regpos1_maior(2) when sk>="10" AND M11="10"else
        regpos1_maior(3) ;

pos0_12<=regpos0_menor(0) when sk<"10" AND M12="00"else
        regpos0_menor(1) when sk<"10" AND M12="01"else
        regpos0_menor(2) when sk<"10" AND M12="10"else
        regpos0_menor(3) when sk<"10" AND M12="11"else
        regpos1_maior(0) when sk>="10" AND M12="00"else
        regpos1_maior(1) when sk>="10" AND M12="01"else
        regpos1_maior(2) when sk>="10" AND M12="10"else
        regpos1_maior(3) ;

pos0_13<=regpos0_menor(0) when sk<"10" AND M13="00"else
        regpos0_menor(1) when sk<"10" AND M13="01"else
        regpos0_menor(2) when sk<"10" AND M13="10"else
        regpos0_menor(3) when sk<"10" AND M13="11"else
        regpos1_maior(0) when sk>="10" AND M13="00"else
        regpos1_maior(1) when sk>="10" AND M13="01"else
        regpos1_maior(2) when sk>="10" AND M13="10"else
        regpos1_maior(3);

pos0_14<=regpos0_menor(0) when sk<"10" AND M14="00"else
        regpos0_menor(1) when sk<"10" AND M14="01"else
        regpos0_menor(2) when sk<"10" AND M14="10"else
        regpos0_menor(3) when sk<"10" AND M14="11"else
        regpos1_maior(0) when sk>="10" AND M14="00"else
        regpos1_maior(1) when sk>="10" AND M14="01"else
        regpos1_maior(2) when sk>="10" AND M14="10"else
        regpos1_maior(3) ;

pos0_15<=regpos0_menor(0) when sk<"10" AND M15="00"else
        regpos0_menor(1) when sk<"10" AND M15="01"else
        regpos0_menor(2) when sk<"10" AND M15="10"else
        regpos0_menor(3) when sk<"10" AND M15="11"else
        regpos1_maior(0) when sk>="10" AND M15="00"else
        regpos1_maior(1) when sk>="10" AND M15="01"else
        regpos1_maior(2) when sk>="10" AND M15="10"else
        regpos1_maior(3) ;

      



--deck absoluute level
--HEAR
deck_abs_level_0 <= pos0_0 when entrada="0000000000000000" else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_0 else
                    entrada;

deck_abs_level_1 <= pos0_1 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_1 else
                    entrada;
                
deck_abs_level_2 <= pos0_2 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_2 else
                    entrada;

deck_abs_level_3 <= pos0_3 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_3 else
                    entrada ;

deck_abs_level_4 <= pos0_4 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_4 else
                    entrada;

deck_abs_level_5 <= pos0_5 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_5 else
                    entrada ;                

deck_abs_level_6 <= pos0_6 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_6 else
                    entrada ;

deck_abs_level_7 <= pos0_7 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_7 else
                    entrada ;

deck_abs_level_8 <= pos0_8 when entrada="0000000000000000"else 
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_8 else
                    entrada ;

deck_abs_level_9 <= pos0_9 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_9 else
                    entrada;

deck_abs_level_10 <= pos0_10 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_10 else
                    entrada;

deck_abs_level_11 <= pos0_11 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_11 else
                    entrada ;

deck_abs_level_12 <= pos0_12 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_12 else
                    entrada ;

deck_abs_level_13 <= pos0_13 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_13 else
                    entrada ;

deck_abs_level_14 <= pos0_14 when entrada="0000000000000000"else
                    validador0 when entrada>"0000000000000000" AND entrada<=pos0_14 else 
                    entrada ;

deck_abs_level_15 <= pos0_15 when entrada="0000000000000000"else
                     validador0  when entrada>"0000000000000000" AND entrada<=pos0_15 else
                    entrada ;


                    





    process(clock)
    begin
        
            
        --15 13 10 6 
        --14 11 7 3
        --12 8 4 1
        --9 5 2 0
        if (reset='1') then
            reg0_neibor <= "0000000000000000";
            reg1_neibor <= "0000000000000000";
            reg2_neibor <= "0000000000000000";
            reg3_neibor <= "0000000000000000";
            reg4_neibor <= "0000000000000000";
            reg5_neibor <= "0000000000000000";
            reg6_neibor <= "0000000000000000";
            reg7_neibor <= "0000000000000000";
            reg8_neibor <= "0000000000000000";
            reg9_neibor <= "0000000000000000";
            reg10_neibor <= "0000000000000000";
            reg11_neibor <= "0000000000000000";
            reg12_neibor <= "0000000000000000";
            reg13_neibor <= "0000000000000000";
            reg14_neibor <= "0000000000000000";
            reg15_neibor <= "0000000000000000";

            elsif (rising_edge(clock)) then
            if escolha ="0000" then
                reg0_neibor <= reg0_neibor;
            end if;
            if escolha="0000" then
                reg1_neibor <= reg1_neibor+entrada;
            end if;
            if escolha="0000" then
                reg2_neibor <= reg2_neibor+entrada;
            end if;
            if escolha="0000" or escolha="0001" then
                reg3_neibor <= reg3_neibor+entrada;
            end if;
            if escolha="0001" or escolha="0010" or escolha="0000" then
                reg4_neibor <= reg4_neibor+entrada;
            end if;
            if escolha="0010" or escolha="0000" then
                reg5_neibor <= reg5_neibor+entrada;
            end if;
            if escolha="0011" or escolha="0001" then
                reg6_neibor <= reg6_neibor+entrada;
            end if;
            if escolha="0011" or escolha="0100" or escolha="0001" or escolha="0010" then
                reg7_neibor <= reg7_neibor+entrada;
            end if;
            if escolha="0100" or escolha="0010" or escolha="0101" or escolha="0001"then
                reg8_neibor <= reg8_neibor+entrada;

            end if;
            if escolha="0101" or escolha="0010" then
                reg9_neibor <= reg9_neibor+entrada;
            end if;
        --15 13 10 6 
        --14 11 7 3
        --12 8 4 1
        --9 5 2 0
            if escolha="0110" or escolha="0011" or escolha="0111" or escolha="0100" then
                reg10_neibor <= reg10_neibor+entrada;
            end if;
            if escolha="0111" or escolha="0100" or escolha="0101" or escolha="1000" or escolha="0011" then
                reg11_neibor <= reg11_neibor+entrada;
            end if;
            if escolha="1000" or escolha="0100" or escolha="0101" or escolha="1001" then
                reg12_neibor <= reg12_neibor+entrada;
            end if;
            if escolha="1011" or escolha="0111" or escolha="0110" or escolha="1010" or escolha="0111" or escolha="1000" then 
                reg13_neibor <= reg13_neibor+entrada;
            end if;
            if escolha="1011" or escolha="0111" or escolha="1000" or escolha="1100" or escolha="1001" then
                reg14_neibor <= reg14_neibor+entrada;
            end if;
            if escolha="1101" or escolha="1010" or escolha="1011" or escolha="1110" or escolha="1100" then
                reg15_neibor <= reg15_neibor+entrada;
            end if;
        end if;


        
        
    end process;
        

    

                
            


    
            

    
   
    -- 0, sT < 7,
    -- 1, 7 ≤ sT < 14,
    -- 2, 14 ≤ sT < 28,
    -- 3, sT ≥ 28,
    
M0<="00" when reg0_neibor>"0000000000000111" else
  "01" when reg0_neibor>="000000000000111" AND reg0_neibor<"0000000000001110" else   
  "10" when reg0_neibor>="000000000001110" AND reg0_neibor<"0000000000011100" else  
  "11";    
  
  
M1<="00" when reg0_neibor>"0000000000000111" else
"01" when reg1_neibor>="000000000000111" AND reg1_neibor<"0000000000001110" else   
"10" when reg1_neibor>="000000000001110" AND reg1_neibor<"0000000000011100" else  
"11"  ; 

M2<="00"when reg2_neibor>"0000000000000111" else
"01" when reg2_neibor>="000000000000111" AND reg2_neibor<"0000000000001110" else
"10" when reg2_neibor>="000000000001110" AND reg2_neibor<"0000000000011100" else
"11" ;

M3<="00"when reg3_neibor<"0000000000000111" else
"01" when reg3_neibor>="000000000000111" AND reg3_neibor<"0000000000001110" else
"10" when reg3_neibor>="000000000001110" AND reg3_neibor<"0000000000011100" else
"11" ;

M4<="00" when reg4_neibor<"0000000000000111" else
"01" when reg4_neibor>="000000000000111" AND reg4_neibor<"0000000000001110" else
"10" when reg4_neibor>="000000000001110" AND reg4_neibor<"0000000000011100" else
"11" ;

M5<="00" when reg5_neibor<"0000000000000111" else
"01" when reg5_neibor>="000000000000111" AND reg5_neibor<"0000000000001110" else
"10" when reg5_neibor>="000000000001110" AND reg5_neibor<"0000000000011100" else
"11" ;

M6<="00" when reg6_neibor<"0000000000000111" else
"01" when reg6_neibor>="000000000000111" AND reg6_neibor<"0000000000001110" else
"10" when reg6_neibor>="000000000001110" AND reg6_neibor<"0000000000011100" else
"11" ;

M7<="00" when reg7_neibor<"0000000000000111" else
"01" when reg7_neibor>="000000000000111" AND reg7_neibor<"0000000000001110" else
"10" when reg7_neibor>="000000000001110" AND reg7_neibor<"0000000000011100" else
"11" ;

M8<="00" when reg8_neibor<"0000000000000111" else
"01" when reg8_neibor>="000000000000111" AND reg8_neibor<"0000000000001110" else
"10" when reg8_neibor>="000000000001110" AND reg8_neibor<"0000000000011100" else
"11" ;

M9<="00" when reg9_neibor<"0000000000000111" else
"01" when reg9_neibor>="000000000000111" AND reg9_neibor<"0000000000001110" else
"10" when reg9_neibor>="000000000001110" AND reg9_neibor<"0000000000011100" else
"11" ;

M10<="00" when reg10_neibor<"0000000000000111" else
"01" when reg10_neibor>="000000000000111" AND reg10_neibor<"0000000000001110" else
"10" when reg10_neibor>="000000000001110" AND reg10_neibor<"0000000000011100" else
"11" ;

M11<="00" when reg11_neibor<"0000000000000111" else
"01" when reg11_neibor>="000000000000111" AND reg11_neibor<"0000000000001110" else
"10" when reg11_neibor>="000000000001110" AND reg11_neibor<"0000000000011100" else
"11" ;

M12<="00" when reg12_neibor<"0000000000000111" else
"01" when reg12_neibor>="000000000000111" AND reg12_neibor<"0000000000001110" else
"10" when reg12_neibor>="000000000001110" AND reg12_neibor<"0000000000011100" else
"11" ;

M13<="00" when reg13_neibor<"0000000000000111" else
"01" when reg13_neibor>="000000000000111" AND reg13_neibor<"0000000000001110" else
"10" when reg13_neibor>="000000000001110" AND reg13_neibor<"0000000000011100" else
"11" ;

M14<="00" when reg14_neibor<"0000000000000111" else
"01" when reg14_neibor>="000000000000111" AND reg14_neibor<"0000000000001110" else
"10" when reg14_neibor>="000000000001110" AND reg14_neibor<"0000000000011100" else
"11" ;

M15<="00" when reg15_neibor<"0000000000000111" else
"01" when reg15_neibor>="000000000000111" AND reg15_neibor<"0000000000001110" else
"10" when reg15_neibor>="000000000001110" AND reg15_neibor<"0000000000011100" else
"11" ;




                
end Behavioral;