library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Registradores16Bits is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        dados_in : in STD_LOGIC_VECTOR(15 downto 0);
        enable : in STD_LOGIC;
        
        
        --valores para o neighboor
        escolha: in STD_LOGIC_VECTOR(3 downto 0);
        input_ : in STD_LOGIC_VECTOR(15 downto 0);--valor para atribuir a aqueles regs que precisam de neibor
        en_reg_neibor : in STD_LOGIC;
    );
end Registradores16Bits;

architecture Behavioral of Registradores16Bits is
    signal reg0 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg1 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg2 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg3 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg4 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg5 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg6 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg7 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg8 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg9 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg10 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg11 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg12 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg13 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg14 : STD_LOGIC_VECTOR(15 downto 0);
    signal reg15 : STD_LOGIC_VECTOR(15 downto 0);

    signal contador : STD_LOGIC_VECTOR(4 downto 0);
   


        --RERGS QUE PRECISA DE NEIBOR 7,8,9,10,11,12,13,14,15

            --15 13 10 6 
            --14 11 7 3
            --12 8 4 1
            --9 5 2 0

    signal reg7_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg8_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg9_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg10_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg11_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg12_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg13_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg14_neibor : STD_LOGIC_VECTOR(15 downto 0);
    signal reg15_neibor : STD_LOGIC_VECTOR(15 downto 0);
    --ENABLES dos neibors
    signal enable_reg7_neibor : STD_LOGIC= '0';
    signal enable_reg8_neibor : STD_LOGIC= '0';
    signal enable_reg9_neibor : STD_LOGIC= '0';
    signal enable_reg10_neibor : STD_LOGIC= '0';
    signal enable_reg11_neibor : STD_LOGIC= '0';
    signal enable_reg12_neibor : STD_LOGIC= '0';
    signal enable_reg13_neibor : STD_LOGIC= '0';
    signal enable_reg14_neibor : STD_LOGIC= '0';
    signal enable_reg15_neibor : STD_LOGIC= '0';



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
        elsif rising_edge(clock) then
            contador <= contador + 1;
            if contador = "10000" then
                contador <= (others => '0');
            end if;

            

--MUDAR A FORMA DE ESCRITA
            if enable = '1' then
                if contador = 0 then
                    reg0 <= dados_in;
                elsif contador = 1 then
                    reg1 <= dados_in;
                elsif contador = 2 then
                    reg2 <= dados_in;
                elsif contador = 3 then
                    reg3 <= dados_in;
                elsif contador = 4 then
                    reg4 <= dados_in;
                elsif contador = 5 then
                    reg5 <= dados_in;
                elsif contador = 6 then
                    reg6 <= dados_in;
                elsif contador = 7 then
                    reg7 <= dados_in;
                elsif contador = 8 then
                    reg8 <= dados_in;
                elsif contador = 9 then
                    reg9 <= dados_in;
                elsif contador = 10 then
                    reg10 <= dados_in;
                elsif contador = 11 then
                    reg11 <= dados_in;
                elsif contador = 12 then
                    reg12 <= dados_in;
                elsif contador = 13 then
                    reg13 <= dados_in;
                elsif contador = 14 then
                    reg14 <= dados_in;
                elsif contador = 15 then
                    reg15 <= dados_in;
                end if;
            end if;
        end if;
    end process;

        --15 13 10 6 
        --14 11 7 3
        --12 8 4 1
        --9 5 2 0
    process(contador, input_,escolha)
    if enable_reg7_neibor = '1' then 
        if escolha = "0011" then
            reg7_neibor <= reg7_neibor+input_;
        elsif escolha = "0100" then
            reg7_neibor <= reg7_neibor+input_;
        elsif escolha = "0010" then
            reg7_neibor <= reg7_neibor+input_;
        elsif escolha = "0001" then
            reg7_neibor <= reg7_neibor+input_;
        end if;
        

    elsif enable_reg8_neibor = '1' then 
        if escolha = "0011" then
            reg8_neibor <= reg8_neibor+input_;
        elsif escolha = "0100" then
            reg8_neibor <= reg8_neibor+input_;
        elsif escolha = "0010" then
            reg8_neibor <= reg8_neibor+input_;
        elsif escolha = "0001" then
            reg8_neibor <= reg8_neibor+input_;
        end if;
    
    elsif enable_reg9_neibor = '1' then 
        if escolha = "0101" then
            reg9_neibor <= reg9_neibor+input_;
        elsif escolha = "0010" then
            reg9_neibor <= reg9_neibor+input_;
       
        end if;
    elsif enable_reg10_neibor = '1' then 
        if escolha = "0110" then
            reg10_neibor <= reg10_neibor+input_;
        elsif escolha = "0111" then
            reg10_neibor <= reg10_neibor+input_;
        elsif escolha = "0011" then
            reg10_neibor <= reg10_neibor+input_;
        elsif escolha = "0100" then
            reg10_neibor <= reg10_neibor+input_;
        end if;
    
    elsif enable_reg11_neibor = '1' then
        if escolha = "0111" then
            reg11_neibor <= reg11_neibor+input_;
        elsif escolha = "0011" then
            reg11_neibor <= reg11_neibor+input_;
        elsif escolha = "0100" then
            reg11_neibor <= reg11_neibor+input_;
        elsif escolha = "1000" then
            reg11_neibor <= reg11_neibor+input_;
        elsif escolha = "0101" then
            reg11_neibor <= reg11_neibor+input_;
        end if;
    elsif enable_reg12_neibor = '1' then 
        if escolha = "1000" then
            reg12_neibor <= reg12_neibor+input_;
        elsif escolha = "0100" then
            reg12_neibor <= reg12_neibor+input_;
        elsif escolha = "0101" then
            reg12_neibor <= reg12_neibor+input_;
        elsif escolha = "1001" then
            reg12_neibor <= reg12_neibor+input_;
        end if;
    elsif enable_reg13_neibor = '1' then 
        if escolha = "1010" then
            reg13_neibor <= reg13_neibor+input_;
        elsif escolha = "0110" then
            reg13_neibor <= reg13_neibor+input_;
        elsif escolha = "0111" then
            reg13_neibor <= reg13_neibor+input_;
        elsif escolha = "1011" then
            reg13_neibor <= reg13_neibor+input_;
        elsif escolha = "1000" then
            reg13_neibor <= reg13_neibor+input_;
        end if;
    elsif enable_reg14_neibor = '1' then
        if escolha = "1011" then
            reg14_neibor <= reg14_neibor+input_;
        elsif escolha = "0111" then
            reg14_neibor <= reg14_neibor+input_;
        elsif escolha = "1000" then
            reg14_neibor <= reg14_neibor+input_;
        elsif escolha = "1100" then
            reg14_neibor <= reg14_neibor+input_;
        elsif escolha = "1001" then
        end if;
    elsif enable_reg15_neibor = '1' then 
        if escolha = "1101" then
            reg15_neibor <= reg15_neibor+input_;
        elsif escolha = "1010" then
            reg15_neibor <= reg15_neibor+input_;
        elsif escolha = "1011" then
            reg15_neibor <= reg15_neibor+input_;
        elsif escolha = "1110" then
            reg15_neibor <= reg15_neibor+input_;
        elsif escolha = "1100" then
        end if;
    end if;
    end process;
    
        
        
            


    
            

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
