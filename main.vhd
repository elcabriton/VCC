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
    );
end Registradores16Bits;

architecture Behavioral of Registradores16Bits is
        

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

    signal pos0_0 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_1 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_2 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_3 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_4 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_5 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_6 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_7 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_8 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_9 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_10 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_11 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_12 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_13 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_14 : STD_LOGIC_VECTOR(1 downto 0);
    signal pos0_15 : STD_LOGIC_VECTOR(1 downto 0);



    

    -- regs dos M
   

       type M is array (0 to 15) of std_logic_vector(1 downto 0);
    signal regM : M;



begin   
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
    
 
    
 
    regm(0)<="00" when reg0_neibor<"0000000000000111" else
            "01" when reg0_neibor>="0000000000000111" and reg0_neibor<"0000000000001110" else
            "10" when reg0_neibor>="000000000001110" and reg0_neibor<"0000000000011100" else
            "11";
    regm(1)<="00" when reg1_neibor<"0000000000000111" else
            "01" when reg1_neibor>="0000000000000111" and reg1_neibor<"0000000000001110" else
            "10" when reg1_neibor>="000000000001110" and reg1_neibor<"0000000000011100" else
            "11";
    regm(2)<="00" when reg2_neibor<"0000000000000111" else
            "01" when reg2_neibor>="0000000000000111" and reg2_neibor<"0000000000001110" else
            "10" when reg2_neibor>="000000000001110" and reg2_neibor<"0000000000011100" else
            "11";
    regm(3)<="00" when reg3_neibor<"0000000000000111" else
            "01" when reg3_neibor>="0000000000000111" and reg3_neibor<"0000000000001110" else
            "10" when reg3_neibor>="000000000001110" and reg3_neibor<"0000000000011100" else
            "11";
    regm(4)<="00" when reg4_neibor<"0000000000000111" else
            "01" when reg4_neibor>="0000000000000111" and reg4_neibor<"0000000000001110" else
            "10" when reg4_neibor>="000000000001110" and reg4_neibor<"0000000000011100" else
            "11";
    regm(5)<="00" when reg5_neibor<"0000000000000111" else
            "01" when reg5_neibor>="0000000000000111" and reg5_neibor<"0000000000001110" else
            "10" when reg5_neibor>="000000000001110" and reg5_neibor<"0000000000011100" else
            "11";
    regm(6)<="00" when reg6_neibor<"0000000000000111" else
            "01" when reg6_neibor>="0000000000000111" and reg6_neibor<"0000000000001110" else
            "10" when reg6_neibor>="000000000001110" and reg6_neibor<"0000000000011100" else
            "11";
    regm(7)<="00" when reg7_neibor<"0000000000000111" else
            "01" when reg7_neibor>="0000000000000111" and reg7_neibor<"0000000000001110" else
            "10" when reg7_neibor>="000000000001110" and reg7_neibor<"0000000000011100" else
            "11";
    regm(8)<="00" when reg8_neibor<"0000000000000111" else
            "01" when reg8_neibor>="0000000000000111" and reg8_neibor<"0000000000001110" else
            "10" when reg8_neibor>="000000000001110" and reg8_neibor<"0000000000011100" else
            "11";
    regm(9)<="00" when reg9_neibor<"0000000000000111" else 
            "01" when reg9_neibor>="0000000000000111" and reg9_neibor<"0000000000001110" else
            "10" when reg9_neibor>="000000000001110" and reg9_neibor<"0000000000011100" else
            "11";
    regm(10)<="00" when reg10_neibor<"0000000000000111" else
            "01" when reg10_neibor>="0000000000000111" and reg10_neibor<"0000000000001110" else
            "10" when reg10_neibor>="000000000001110" and reg10_neibor<"0000000000011100" else
            "11";
    regm(11)<="00" when reg11_neibor<"0000000000000111" else
            "01" when reg11_neibor>="0000000000000111" and reg11_neibor<"0000000000001110" else
            "10" when reg11_neibor>="000000000001110" and reg11_neibor<"0000000000011100" else
            "11";
    regm(12)<="00" when reg12_neibor<"0000000000000111" else
            "01" when reg12_neibor>="0000000000000111" and reg12_neibor<"0000000000001110" else
            "10" when reg12_neibor>="000000000001110" and reg12_neibor<"0000000000011100" else
            "11";
    regm(13)<="00" when reg13_neibor<"0000000000000111" else
            "01" when reg13_neibor>="0000000000000111" and reg13_neibor<"0000000000001110" else
            "10" when reg13_neibor>="000000000001110" and reg13_neibor<"0000000000011100" else
            "11";
    regm(14)<="00" when reg14_neibor<"0000000000000111" else    
            "01" when reg14_neibor>="0000000000000111" and reg14_neibor<"0000000000001110" else
            "10" when reg14_neibor>="000000000001110" and reg14_neibor<"0000000000011100" else
            "11";
    regm(15)<="00" when reg15_neibor<"0000000000000111" else   
            "01" when reg15_neibor>="0000000000000111" and reg15_neibor<"0000000000001110" else
            "10" when reg15_neibor>="000000000001110" and reg15_neibor<"0000000000011100" else
            "11";
   

        --POS 0
    pos0_0<="01" when 
        
 
end Behavioral;
