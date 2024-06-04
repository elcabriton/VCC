library IEEE;
use ieee.std_logic_1164.all;  
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all; 
--
entity transformskip is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        --valores para o neighboor
        escolha: in STD_LOGIC_VECTOR(3 downto 0);
        coeff : in STD_LOGIC_VECTOR(15 downto 0);--valor para atribuir a aqueles regs que precisam de neibor

        
        reg0_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg1_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg2_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg3_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg4_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg5_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg6_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg7_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg8_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg9_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg10_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg11_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg12_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg13_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg14_neibor : out STD_LOGIC_VECTOR(15 downto 0);
        reg15_neibor : out STD_LOGIC_VECTOR(15 downto 0);

        firstbit_coeff : out STD_LOGIC; --
        deck_ts : out STD_LOGIC_VECTOR(15 downto 0) --








      



       
    );
end entity;


architecture Behavioral of transformskip is
   







begin
 firstbit_coeff <= coeff(15);
  deck_ts <= coeff;


   
   
 







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
        if escolha="0000" then
                reg0_neibor <= reg0_neibor;
                reg1_neibor <= reg1_neibor+coeff;
                reg2_neibor <= reg2_neibor+coeff;
                end if;
        if escolha="0001" then
                reg3_neibor <= reg3_neibor+coeff;
                end if;
        if escolha="0010" OR escolha="0001" then
                reg4_neibor <= reg4_neibor+coeff;
                end if;
        if escolha="0010" then
                reg5_neibor <= reg5_neibor+coeff;
                end if;
        if escolha="0011" then
                reg6_neibor <= reg6_neibor+coeff;
                end if;
        if escolha="0100" OR escolha="0011"then
                reg7_neibor <= reg7_neibor+coeff;
                end if;
        if escolha="0100" OR escolha="0101" then
                reg8_neibor <= reg8_neibor+coeff;
                end if;
        if escolha="0101" then
                reg9_neibor <= reg9_neibor+coeff;
                end if;
        if escolha="0110" OR escolha="0111" then
                reg10_neibor <= reg10_neibor+coeff;
                end if;
        if escolha="1000" OR escolha="0111"then
                reg11_neibor <= reg11_neibor+coeff;
                end if;
        if escolha="1000" OR escolha="1001" then
                reg12_neibor <= reg12_neibor+coeff;
                end if;
        if escolha="1011" OR escolha="1010" then
                reg13_neibor <= reg13_neibor+coeff;
                end if;
        if escolha="1011" OR escolha="1100" then
                reg14_neibor <= reg14_neibor+coeff;
                end if;
        if escolha="1110" OR escolha="1101"then
                reg15_neibor <= reg15_neibor+coeff;
                end if;
                
      end if;
end process;



end Behavioral;