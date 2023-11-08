library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Registradores16Bits is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        --valores para o neighboor
        escolha: in STD_LOGIC_VECTOR(3 downto 0);
        input_ : in STD_LOGIC_VECTOR(15 downto 0);--valor para atribuir a aqueles regs que precisam de neibor
        en_reg_neibor : in STD_LOGIC;
        sk : in STD_LOGIC_VECTOR(1 downto 0);
    );
end Registradores16Bits;

architecture Behavioral of Registradores16Bits is
        --RERGS QUE PRECISA DE NEIBOR 7,8,9,10,11,12,13,14,15

            --15 13 10 6 
            --14 11 7 3
            --12 8 4 1
            --9 5 2 0
    signal reg0_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg1_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg2_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg3_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg4_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg5_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg6_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg7_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg8_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg9_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg10_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg11_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg12_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg13_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg14_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg15_neibor : STD_LOGIC_VECTOR(15 downto 0);
    

    -- regs dos M
    signal regM0 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM1 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM2 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM3 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM4 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM5 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM6 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM7 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM8 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM9 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM10 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM11 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM12 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM13 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM14 : STD_LOGIC_VECTOR(1 downto 0);
    signal regM15 : STD_LOGIC_VECTOR1() downto 0);    

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


    type pos0_minor is array (0 to 3) of std_logic_vector(5 downto 0);
    signal regpos0_minor : pos0_menor;
    signal regpos0_maior : pos0_menor;


begin   
regpos0_menor(0) <= "00001";
regpos0_menor(1) <= "00010";
regpos0_menor(2) <= "00100";
regpos0_menor(3) <= "01000";

regpos1_maior(0) <= "00010";
regpos1_maior(1) <= "00100";
regpos1_maior(2) <= "01000";
regpos1_maior(3) <= "10000";

pos0_0<=regpos0_menor(0) when sk<"10" AND M0="00"else
        regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos0_menor(2) when sk<"10" AND M0="10"else
        regpos0_menor(3) when sk<"10" AND M0="11"else
        regpos0_maior(0) when sk>="10" AND M0="00"else
        regpos0_maior(1) when sk>="10" AND M0="01"else
        regpos0_maior(2) when sk>="10" AND M0="10"else
        regpos0_maior(3) when sk>="10" AND M0="11";

pos0_1<=regpos0_menor(0) when sk<"10" AND M1="00"else
        regpos0_menor(1) when sk<"10" AND M1="01"else
        regpos0_menor(2) when sk<"10" AND M1="10"else
        regpos0_menor(3) when sk<"10" AND M1="11"else
        regpos0_maior(0) when sk>="10" AND M1="00"else
        regpos0_maior(1) when sk>="10" AND M1="01"else
        regpos0_maior(2) when sk>="10" AND M1="10"else
        regpos0_maior(3) when sk>="10" AND M1="11";

pos0_2<=regpos0_menor(0) when sk<"10" AND M2="00"else
        regpos0_menor(1) when sk<"10" AND M2="01"else
        regpos0_menor(2) when sk<"10" AND M2="10"else
        regpos0_menor(3) when sk<"10" AND M2="11"else
        regpos1_maior(0) when sk>="10" AND M2="00"else
        regpos1_maior(1) when sk>="10" AND M2="01"else
        regpos1_maior(2) when sk>="10" AND M2="10"else
        regpos1_maior(3) when sk>="10" AND M2="11";

pos0_3<=regpos0_menor(0) when sk<"10" AND M3="00"else
        regpos0_menor(0 when sk<"10" AND M3="01"else)
        regpos0_menor(2) when sk<"10" AND M3="10"else
        regpos0_menor(3) when sk<"10" AND M3="11"else
        regpos1_maior(0) when sk>="10" AND M3="00"else
        regpos1_maior(1) when sk>="10" AND M3="01"else
        regpos1_maior(2) when sk>="10" AND M3="10"else
        regpos1_maior(3) when sk>="10" AND M3="11";

pos0_4<=regpos0_menor(0) when sk<"10" AND M4="00"else
        regpos0_menor(1) when sk<"10" AND M4="01"else
        regpos0_menor(2) when sk<"10" AND M4="10"else
        regpos0_menor(3) when sk<"10" AND M4="11"else
        regpos1_maior(0) when sk>="10" AND M4="00"else
        regpos1_maior(1) when sk>="10" AND M4="01"else
        regpos1_maior(2) when sk>="10" AND M4="10"else
        regpos1_maior(3) when sk>="10" AND M4="11";

pos0_5<=regpos0_menor(0) when sk<"10" AND M5="00"else
        regpos0_menor(1) when sk<"10" AND M5="01"else
        regpos0_menor(2) when sk<"10" AND M5="10"else
        regpos0_menor(3) when sk<"10" AND M5="11"else
        regpos1_maior(0) when sk>="10" AND M5="00"else
        regpos1_maior(1) when sk>="10" AND M5="01"else
        regpos1_maior(2) when sk>="10" AND M5="10"else
        regpos1_maior(3) when sk>="10" AND M5="11";

pos0_6<=regpos0_menor(0) when sk<"10" AND M6="00"else
        regpos0_menor(1) when sk<"10" AND M6="01"else
        regpos0_menor(2) when sk<"10" AND M6="10"else
        regpos0_menor(3) when sk<"10" AND M6="11"else
        regpos1_maior(0) when sk>="10" AND M6="00"else
        regpos1_maior(1) when sk>="10" AND M6="01"else
        regpos1_maior(2) when sk>="10" AND M6="10"else
        regpos1_maior(3) when sk>="10" AND M6="11";

pos0_7<=regpos0_menor(0) when sk<"10" AND M7="00"else
        regpos0_menor(1) when sk<"10" AND M7="01"else
        regpos0_menor(2) when sk<"10" AND M7="10"else
        regpos0_menor(3) when sk<"10" AND M7="11"else
        regpos1_maior(0) when sk>="10" AND M7="00"else
        regpos1_maior(1) when sk>="10" AND M7="01"else
        regpos1_maior(2) when sk>="10" AND M7="10"else
        regpos1_maior(3) when sk>="10" AND M7="11";

pos0_8<=regpos0_menor(0) when sk<"10" AND M8="00"else
        regpos0_menor(1) when sk<"10" AND M8="01"else
        regpos0_menor(2) when sk<"10" AND M8="10"else
        regpos0_menor(3) when sk<"10" AND M8="11"else
        regpos1_maior(0) when sk>="10" AND M8="00"else
        regpos1_maior(1) when sk>="10" AND M8="01"else
        regpos1_maior(2) when sk>="10" AND M8="10"else
        regpos1_maior(3) when sk>="10" AND M8="11";

pos0_9<=regpos0_menor(0) when sk<"10" AND M9="00"else
        regpos0_menor(1) when sk<"10" AND M9="01"else
        regpos0_menor(2) when sk<"10" AND M9="10"else
        regpos0_menor(3) when sk<"10" AND M9="11"else
        regpos1_maior(0) when sk>="10" AND M9="00"else
        regpos1_maior(1) when sk>="10" AND M9="01"else
        regpos1_maior(2) when sk>="10" AND M9="10"else
        regpos1_maior(3) when sk>="10" AND M9="11";

pos0_10<=regpos0_menor(0) when sk<"10" AND M10="00"else
        regpos0_menor(1) when sk<"10" AND M10="01"else
        regpos0_menor(2) when sk<"10" AND M10="10"else
        regpos0_menor(3) when sk<"10" AND M10="11"else
        regpos1_maior(0) when sk>="10" AND M10="00"else
        regpos1_maior(1) when sk>="10" AND M10="01"else
        regpos1_maior(2) when sk>="10" AND M10="10"else
        regpos1_maior(3) when sk>="10" AND M10="11";

pos0_11<=regpos0_menor(0) when sk<"10" AND M11="00"else
        regpos0_menor(1) when sk<"10" AND M11="01"else
        regpos0_menor(2) when sk<"10" AND M11="10"else
        regpos0_menor(3) when sk<"10" AND M11="11"else
        regpos1_maior(0) when sk>="10" AND M11="00"else
        regpos1_maior(1) when sk>="10" AND M11="01"else
        regpos1_maior(2) when sk>="10" AND M11="10"else
        regpos1_maior(3) when sk>="10" AND M11="11";

pos0_12<=regpos0_menor(0) when sk<"10" AND M12="00"else
        regpos0_menor(1) when sk<"10" AND M12="01"else
        regpos0_menor(2) when sk<"10" AND M12="10"else
        regpos0_menor(3) when sk<"10" AND M12="11"else
        regpos1_maior(0) when sk>="10" AND M12="00"else
        regpos1_maior(1) when sk>="10" AND M12="01"else
        regpos1_maior(2) when sk>="10" AND M12="10"else
        regpos1_maior(3) when sk>="10" AND M12="11";

pos0_13<=regpos0_menor(0) when sk<"10" AND M13="00"else
        regpos0_menor(1) when sk<"10" AND M13="01"else
        regpos0_menor(2) when sk<"10" AND M13="10"else
        regpos0_menor(3) when sk<"10" AND M13="11"else
        regpos1_maior(0) when sk>="10" AND M13="00"else
        regpos1_maior(1) when sk>="10" AND M13="01"else
        regpos1_maior(2) when sk>="10" AND M13="10"else
        regpos1_maior(3) when sk>="10" AND M13="11";

pos0_14<=regpos0_menor(0) when sk<"10" AND M14="00"else
        regpos0_menor(1) when sk<"10" AND M14="01"else
        regpos0_menor(2) when sk<"10" AND M14="10"else
        regpos0_menor(3) when sk<"10" AND M14="11"else
        regpos1_maior(0) when sk>="10" AND M14="00"else
        regpos1_maior(1) when sk>="10" AND M14="01"else
        regpos1_maior(2) when sk>="10" AND M14="10"else
        regpos1_maior(3) when sk>="10" AND M14="11";

pos0_15<=regpos0_menor(0) when sk<"10" AND M15="00"else
        regpos0_menor(1) when sk<"10" AND M15="01"else
        regpos0_menor(2) when sk<"10" AND M15="10"else
        regpos0_menor(3) when sk<"10" AND M15="11"else
        regpos1_maior(0) when sk>="10" AND M15="00"else
        regpos1_maior(1) when sk>="10" AND M15="01"else
        regpos1_maior(2) when sk>="10" AND M15="10"else
        regpos1_maior(3) when sk>="10" AND M15="11";

      



--deck absoluute level
--HEAR
deck_abs_level_0 <= pos0_0 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_0
                    input_ when input_>=pos0_0;

deck_abs_level_1 <= pos0_1 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_1
                    input_ when input_>=pos0_1;
                
deck_abs_level_2 <= pos0_2 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_2
                    input_ when input_>=pos0_2;

deck_abs_level_3 <= pos0_3 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_3
                    input_ when input_>=pos0_3;

deck_abs_level_4 <= pos0_4 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_4
                    input_ when input_>=pos0_4;

deck_abs_level_5 <= pos0_5 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_5
                    input_ when input_>=pos0_5;                 

deck_abs_level_6 <= pos0_6 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_6
                    input_ when input_>=pos0_6;

deck_abs_level_7 <= pos0_7 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_7
                    input_ when input_>=pos0_7;

deck_abs_level_8 <= pos0_8 when input_='0'else 
                    input_ - '1' when input_<'0' OR input_<=pos0_8
                    input_ when input_>=pos0_8;

deck_abs_level_9 <= pos0_9 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_9
                    input_ when input_>=pos0_9;

deck_abs_level_10 <= pos0_10 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_10
                    input_ when input_>=pos0_10;

deck_abs_level_11 <= pos0_11 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_11
                    input_ when input_>=pos0_11;

deck_abs_level_12 <= pos0_12 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_12
                    input_ when input_>=pos0_12;

deck_abs_level_13 <= pos0_13 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_13
                    input_ when input_>=pos0_13;

deck_abs_level_14 <= pos0_14 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_14
                    input_ when input_>=pos0_14;

deck_abs_level_15 <= pos0_15 when input_='0'else
                    input_ - '1' when input_<'0' OR input_<=pos0_15
                    input_ when input_>=pos0_15;
                    





    process(clock, reset)
    begin
        if reset = '1' then
            reg0 <= (others => '0');
            reg1 <= (others => '0');
            reg2 <= (others => '0');
            reg3 <= (others => '0');
            reg4 <= (others => '0');
            reg5 <= (others => '0');
            reg6 <= (others => '0');
            reg7 <= (others => '0');
            reg8 <= (others => '0');
            reg9 <= (others => '0');
            reg10 <= (others => '0');
            reg11 <= (others => '0');
            reg12 <= (others => '0');
            reg13 <= (others => '0');
            reg14 <= (others => '0');
            reg15 <= (others => '0');
        --15 13 10 6 
        --14 11 7 3
        --12 8 4 1
        --9 5 2 0
        elsif rising_edge(clock) then
            if escolha ="0000" then
                reg0_neibor <= reg0_neibor+input_;
            end if;
            if escolha="0000" then
                reg1_neibor <= reg1_neibor+input_;
            end if;
            if escolha="0000" then
                reg2_neibor <= reg2_neibor+input_;
            end if;
            if escolha="0000" or escolha="0001" then
                reg3_neibor <= reg3_neibor+input_;
            end if;
            if escolha="0001" or escolha="0010" or escolha="0000" then
                reg4_neibor <= reg4_neibor+input_;
            end if;
            if escolha="0010" or escolha="0000" then
                reg5_neibor <= reg5_neibor+input_;
            end if;
            if escolha="0011" or escolha="0001" then
                reg6_neibor <= reg6_neibor+input_;
            end if;
            if escolha="0011" or escolha="0100" or escolha="0001" or escolha="0010" then
                reg7_neibor <= reg7_neibor+input_;
            end if;
            if escolha="0100" or escolha="0010" or escolha="0101" or escolha="0001"then
                reg8_neibor <= reg8_neibor+input_;

            end if;
            if escolha="0101" or escolha="0010" then
                reg9_neibor <= reg9_neibor+input_;
            end if;
        --15 13 10 6 
        --14 11 7 3
        --12 8 4 1
        --9 5 2 0
            if escolha="0110" or escolha="0011" or escolha="0111" or escolha="0100" then
                reg10_neibor <= reg10_neibor+input_;
            end if;
            if escolha="0111" or escolha="0100" or escolha="0101" or escolha="1000" or escolha="0011" then
                reg11_neibor <= reg11_neibor+input_;
            end if;
            if escolha="1000" or escolha="0100" or escolha="0101" or escolha="1001" then
                reg12_neibor <= reg12_neibor+input_;
            end if;
            if escolha="1011" or escolha="0111" or escolha="0110" or escolha="1010" or escolha="0111" or escolha="1000" then 
                reg13_neibor <= reg13_neibor+input_;
            end if;
            if escolha="1011" or escolha="0111" or escolha="1000" or escolha="1100" or escolha="1001" then
                reg14_neibor <= reg14_neibor+input_;
            end if;
            if escolha="1101" or escolha="1010" or escolha="1011" or escolha="1110" or escolha="1100" then
                reg15_neibor <= reg15_neibor+input_;
            end if;
        end if;


        
        
    end process;
        

    

                
            


    
            

    
   
    -- 0, sT < 7,
    -- 1, 7 ≤ sT < 14,
    -- 2, 14 ≤ sT < 28,
    -- 3, sT ≥ 28,
    
M0<='0' when reg0_neibor<"0000000000000111" else
  '1' when reg0_neibor<="000000000000111" AND reg0_neibor<"0000000000001110" else   
  "10" when reg0_neibor<="000000000001110" AND reg0_neibor<"0000000000011100" else  
  "11" when reg0_neibor>="0000000000011100"      
  
  
M1<='0' when reg0_neibor<"0000000000000111" else
'1' when reg1_neibor<="000000000000111" AND reg1_neibor<"0000000000001110" else   
"10" when reg1_neibor<="000000000001110" AND reg1_neibor<"0000000000011100" else  
"11" when reg1_neibor>="0000000000011100"  

M2<='0' when reg2_neibor<"0000000000000111" else
'1' when reg2_neibor<="000000000000111" AND reg2_neibor<"0000000000001110" else
"10" when reg2_neibor<="000000000001110" AND reg2_neibor<"0000000000011100" else
"11" when reg2_neibor>="0000000000011100" 

M3<='0' when reg3_neibor<"0000000000000111" else
'1' when reg3_neibor<="000000000000111" AND reg3_neibor<"0000000000001110" else
"10" when reg3_neibor<="000000000001110" AND reg3_neibor<"0000000000011100" else
"11" when reg3_neibor>="0000000000011100" 

M4<='0' when reg4_neibor<"0000000000000111" else
'1' when reg4_neibor<="000000000000111" AND reg4_neibor<"0000000000001110" else
"10" when reg4_neibor<="000000000001110" AND reg4_neibor<"0000000000011100" else
"11" when reg4_neibor>="0000000000011100"

M5<='0' when reg5_neibor<"0000000000000111" else
'1' when reg5_neibor<="000000000000111" AND reg5_neibor<"0000000000001110" else
"10" when reg5_neibor<="000000000001110" AND reg5_neibor<"0000000000011100" else
"11" when reg5_neibor>="0000000000011100"

M6<='0' when reg6_neibor<"0000000000000111" else
'1' when reg6_neibor<="000000000000111" AND reg6_neibor<"0000000000001110" else
"10" when reg6_neibor<="000000000001110" AND reg6_neibor<"0000000000011100" else
"11" when reg6_neibor>="0000000000011100"

M7<='0' when reg7_neibor<"0000000000000111" else
'1' when reg7_neibor<="000000000000111" AND reg7_neibor<"0000000000001110" else
"10" when reg7_neibor<="000000000001110" AND reg7_neibor<"0000000000011100" else
"11" when reg7_neibor>="0000000000011100"

M8<='0' when reg8_neibor<"0000000000000111" else
'1' when reg8_neibor<="000000000000111" AND reg8_neibor<"0000000000001110" else
"10" when reg8_neibor<="000000000001110" AND reg8_neibor<"0000000000011100" else
"11" when reg8_neibor>="0000000000011100"

M9<='0' when reg9_neibor<"0000000000000111" else
'1' when reg9_neibor<="000000000000111" AND reg9_neibor<"0000000000001110" else
"10" when reg9_neibor<="000000000001110" AND reg9_neibor<"0000000000011100" else
"11" when reg9_neibor>="0000000000011100"

M10<='0' when reg10_neibor<"0000000000000111" else
'1' when reg10_neibor<="000000000000111" AND reg10_neibor<"0000000000001110" else
"10" when reg10_neibor<="000000000001110" AND reg10_neibor<"0000000000011100" else
"11" when reg10_neibor>="0000000000011100"

M11<='00' when reg11_neibor<"0000000000000111" else
'01' when reg11_neibor<="000000000000111" AND reg11_neibor<"0000000000001110" else
"10" when reg11_neibor<="000000000001110" AND reg11_neibor<"0000000000011100" else
"11" when reg11_neibor>="0000000000011100"

M12<='00' when reg12_neibor<"0000000000000111" else
'01' when reg12_neibor<="000000000000111" AND reg12_neibor<"0000000000001110" else
"10" when reg12_neibor<="000000000001110" AND reg12_neibor<"0000000000011100" else
"11" when reg12_neibor>="0000000000011100"

M13<="00" when reg13_neibor<"0000000000000111" else
"01" when reg13_neibor<="000000000000111" AND reg13_neibor<"0000000000001110" else
"10" when reg13_neibor<="000000000001110" AND reg13_neibor<"0000000000011100" else
"11" when reg13_neibor>="0000000000011100"

M14<="00" when reg14_neibor<"0000000000000111" else
"01" when reg14_neibor<="000000000000111" AND reg14_neibor<"0000000000001110" else
"10" when reg14_neibor<="000000000001110" AND reg14_neibor<"0000000000011100" else
"11" when reg14_neibor>="0000000000011100"

M15<="00" when reg15_neibor<"0000000000000111" else
"01" when reg15_neibor<="000000000000111" AND reg15_neibor<"0000000000001110" else
"10" when reg15_neibor<="000000000001110" AND reg15_neibor<"0000000000011100" else
"11" when reg15_neibor>="0000000000011100"




                
end Behavioral;