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
    signal regM0 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM1 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM2 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM3 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM4 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM5 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM6 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM7 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM8 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM9 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM10 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM11 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM12 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM13 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM14 : STD_LOGIC_VECTOR(15 downto 0);
    signal regM15 : STD_LOGIC_VECTOR(15 downto 0);    



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
        
        
            


    
            

    --MUX DO "M"
   
    -- 0, sT < 7,
    -- 1, 7 ≤ sT < 14,
    -- 2, 14 ≤ sT < 28,
    -- 3, sT ≥ 28,
    --CONFIGURA O M "SO MUDAR O VALOR DE ST PARA SABER OQ VAI PASSAR"
                -- mux_m <= "01" when sT < "00000111"
                -- mux_m <= "10" when sT >= "00000111" and sT < "00001110"
                -- mux_m <= "11" when sT >= "00001110" and sT < "00011100"
                
end Behavioral;
