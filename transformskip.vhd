library IEEE;
use ieee.std_logic_1164.all;  
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all; 

entity transformskip is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        --valores para o neighboor
        escolha: in STD_LOGIC_VECTOR(3 downto 0);
        coeff : in STD_LOGIC_VECTOR(15 downto 0);--valor para atribuir a aqueles regs que precisam de neibor
        deck_abs_level_0  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_1  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_2  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_3  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_4  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_5  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_6  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_7  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_8  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_9  : out  STD_LOGIC_VECTOR(15 downto 0); 
        deck_abs_level_10 : out   STD_LOGIC_VECTOR(15 downto 0);
        deck_abs_level_11 : out   STD_LOGIC_VECTOR(15 downto 0);
        deck_abs_level_12 : out   STD_LOGIC_VECTOR(15 downto 0);
        deck_abs_level_13 : out   STD_LOGIC_VECTOR(15 downto 0);
        deck_abs_level_14 : out   STD_LOGIC_VECTOR(15 downto 0);
        deck_abs_level_15 : out   STD_LOGIC_VECTOR(15 downto 0);         
        sk : in STD_LOGIC_VECTOR(1 downto 0)
    );
end transformskip;
architecture Behavioral of transformskip is
   
signal menosum : STD_LOGIC:='1';

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

signal M0 : STD_LOGIC_VECTOR(1 downto 0):="01";-- SEMPRE IGUAL A 1

type pos0_minor is array (0 to 0) of std_logic_vector(15 downto 0);
signal regpos0_menor : pos0_minor;
signal regpos1_maior : pos0_minor;



    signal pos0_0: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_1: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_2: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_3: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_4: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_5: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_6: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_7: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_8: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_9: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_10: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_11: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_12: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_13: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_14: STD_LOGIC_VECTOR(15 downto 0);
    signal pos0_15: STD_LOGIC_VECTOR(15 downto 0);
    signal validador0: STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
begin
    
    regpos0_menor(0) <= "0000000000000010";--2
    regpos1_maior(0) <= "0000000000000100";--4
   
    validador0<=coeff - "0000000000000001";



process(clock)
begin
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

        
        

        --0 2 5 9 
        --1 4 8 12
        --3 7 11 14
        --6 10 13 15

    elsif (rising_edge(clock)) then
        if escolha=="0000" then
                reg0_neibor <= reg0_neibor;
                reg1_neibor <= reg1_neibor+coeff;
                reg2_neibor <= reg2_neibor+coeff;
                end if;
        if escolha=="0001" then
                reg3_neibor <= reg3_neibor+coeff;
                end if;
        if escolha=="0010" OR escolha=="0001" then
                reg4_neibor <= reg4_neibor+coeff;
                end if;
        if escolha=="0010" then
                reg5_neibor <= reg5_neibor+coeff;
                end if;
        if escolha=="0011" then
                reg6_neibor <= reg6_neibor+coeff;
                end if;
        if escolha=="0100" OR escolha=="0011"then
                reg7_neibor <= reg7_neibor+coeff;
                end if;
        if escolha=="0100" OR escolha=="0101" then
                reg8_neibor <= reg8_neibor+coeff;
                end if;
        if escolha=="0101" then
                reg9_neibor <= reg9_neibor+coeff;
                end if;
        if escolha=="0110" OR escolha=="0111" then
                reg10_neibor <= reg10_neibor+coeff;
                end if;
        if escolha=="1000" OR escolha=="0111"then
                reg11_neibor <= reg11_neibor+coeff;
                end if;
        if escolha=="1000" OR escolha=="1001" then
                reg12_neibor <= reg12_neibor+coeff;
                end if;
        if escolha=="1011" OR escolhar=="1010" then
                reg13_neibor <= reg13_neibor+coeff;
                end if;
        if escolha=="1011" OR escolha=="1100" then
                reg14_neibor <= reg14_neibor+coeff;
                end if;
        if escolha=="1110" OR escolha=="1101"then
                reg15_neibor <= reg15_neibor+coeff;
                end if;
                
      end if;
end process;

pos0_0<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else

pos0_1<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else

pos0_2<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_3<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_4<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_5<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_6<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_7<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_8<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_9<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_10<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_11<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_12<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_13<=regpos0_menor(1) when sk<"10" AND M0="01"else  
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_14<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
pos0_15<=regpos0_menor(1) when sk<"10" AND M0="01"else
        regpos1_maior(1) when sk>="10" AND M0="01"else
       
                
        deck_abs_level_0 <= pos0_0 when coeff="0000000000000000" else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_0 else
        coeff;--coeff>pos9

deck_abs_level_1 <= pos0_1 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_1 else
        coeff;
    
deck_abs_level_2 <= pos0_2 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_2 else
        coeff;

deck_abs_level_3 <= pos0_3 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_3 else
        coeff ;

deck_abs_level_4 <= pos0_4 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_4 else
        coeff;

deck_abs_level_5 <= pos0_5 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_5 else
        coeff ;                

deck_abs_level_6 <= pos0_6 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_6 else
        coeff ;

deck_abs_level_7 <= pos0_7 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_7 else
        coeff ;

deck_abs_level_8 <= pos0_8 when coeff="0000000000000000"else 
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_8 else
        coeff ;

deck_abs_level_9 <= pos0_9 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_9 else
        coeff;

deck_abs_level_10 <= pos0_10 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_10 else
        coeff;

deck_abs_level_11 <= pos0_11 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_11 else
        coeff ;

deck_abs_level_12 <= pos0_12 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_12 else
        coeff ;

deck_abs_level_13 <= pos0_13 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_13 else
        coeff ;

deck_abs_level_14 <= pos0_14 when coeff="0000000000000000"else
        validador0 when coeff>"0000000000000000" OR coeff<=pos0_14 else 
        coeff ;

deck_abs_level_15 <= pos0_15 when coeff="0000000000000000"else
         validador0  when coeff>"0000000000000000" OR coeff<=pos0_15 else
        coeff ;

      
end Behavioral;