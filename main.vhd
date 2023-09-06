library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity VCC is
    port(
        clock : in std_logic;
        reset : in std_logic;
        num: in std_logic_vector(15 downto 0);--escolher o valor para passar para algum dos regs( a escolha e feita no mux)
        Select : in STD_LOGIC_VECTOR(3 downto 0);   -- Entrada de seleção (4 bits para 16 opções)
        sig:out std_logic;
        gt1:out  std_logic;
        par:out  std_logic;
        gt3: out std_logic;
        REM: out std_logic;

        );
end VCC;

architecture behavior of VCC is
    --(SABER O NOME DESSES REGS)
    signal reg: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    signal ACC: std_logic_vector(15 downto 0);
    

    --flags
   
    


    signal Output_Mux: std_logic_vector(15 downto 0);--escolher o reg
    
    mux_reg <= Data_In(to_integer(unsigned(Select)));
    
    begin
    process (Output_Mux, Select)
    begin
        case Select is
            when "0000" =>
                Output_Mux <= reg1;
            when "0001" =>
                Output_Mux <= reg2;
            when "0010" =>
                Output_Mux <= reg3;
            when "0011" =>
                Output_Mux <= reg4;
            when "0100" =>
                Output_Mux <= reg5;
            when "0101" =>
                Output_Mux <= reg6;
            when "0110" =>
                Output_Mux <= reg7;
            when "0111" =>
                Output_Mux <= reg8;
            when "1000" =>
                Output_Mux <= reg9;
            when "1001" =>
                Output_Mux <= reg10;
            when "1010" =>
                Output_Mux <= reg11;
            when "1011" =>
                Output_Mux <= reg11;
            when "1100" =>
                Output_Mux <= reg12;
            when "1101" =>
                Output_Mux <= reg13;
            when "1110" =>
                Output_Mux <= reg14;
            when "1111" =>
                Output_Mux <= reg15;
    -- na subida do clock vamo setar o de uma entrada
    process(clock)
    if reset = '0' then
        --colocar o valor deles aqui setar pra zero
        elsif rising_edge(clock) then
            if mux_reg /= "0000000000000000" then
                sig <= '1';  -- Define sig como '1'
                
                if mux_reg > "0000000000000001" then
                    gt1 <= '1';  -- Define gt1 como '1'
                else
                    gt1 <= '0';  -- Define gt1 como '0' se não for maior que 1
                end if;
                
                -- PAR?????????
                
                if mux_reg > "0000000000000011" then
                    gt3 <= '1';  -- Define gt3 como '1'
                else
                    gt3 <= '0';  -- Define gt3 como '0' se não for maior que 3
                end if;
                
                --REM???????????

                end if;


