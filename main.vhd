library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Registradores16Bits is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        dados_in : in STD_LOGIC_VECTOR(15 downto 0);
        input_ : in STD_LOGIC_VECTOR(15 downto 0);--valor para atribuir a aqueles regs que precisam de neibor
        enable : in STD_LOGIC;
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

    signal contador : STD_LOGIC_VECTOR(3 downto 0);
    signal contador_neibor : STD_LOGIC_VECTOR(3 downto 0);--contador para os regs que precisam de neibor


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
            if contador = 16 then
                contador <= (others => '0');
            end if;

            contador_neibor <= contador_neibor + 1;
            if contador_neibor = 16 then
                contador_neibor <= (others => '0');
            end if;


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
    process(contador, contador_neibor,en_reg_neibor)


    
            if rising_edge(en_reg_neibor)
                if contador_neibor = 7 then
                    if contador= 3||4||1||0 then-- mudar essa linha para case
                        reg7_neibor <= input_+reg7_neibor;
                    end if;
                elsif contador_neibor = 8 then
                    if contador= 2||4||1||5 then
                        reg8_neibor <= input_+reg8_neibor;
                    end if;
                elsif contador_neibor = 9 then
                    if contador= 5||2 then
                        reg9_neibor <= input_+reg9_neibor;
                    end if;
                elsif contador_neibor = 10 then
                    if contador= 6||3||7||4 then
                        reg10_neibor <= input_+reg10_neibor;
                    end if;
                elsif contador_neibor = 11 then
                    if contador= 7||3||8||4||5 then
                        reg11_neibor <= input_+reg11_neibor;
                    end if;
                elsif contador_neibor = 12 then
                    if contador= 8||4||9||5 then
                        reg12_neibor <= input_+reg12_neibor;
                    end if;
                elsif contador_neibor = 13 then
                    if contador= 7||11||10||6||8 then
                        reg13_neibor <= input_+reg13_neibor;
                    end if;
                elsif contador_neibor = 14 then
                    if contador= 8||12||11||7||9 then
                        reg14_neibor <= input_+reg14_neibor;
                    end if;
                elsif contador_neibor = 15 then
                    if contador= 11||13||10||14||12 then
                        reg15_neibor <= input_+reg15_neibor;
                    end if;

                end if;

                -- mux_m <= "01" when sT < "00000111"
                -- mux_m <= "10" when sT >= "00000111" and sT < "00001110"
                -- mux_m <= "11" when sT >= "00001110" and sT < "00011100"
end Behavioral;
