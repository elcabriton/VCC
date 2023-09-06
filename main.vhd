library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity VCC is
    port(
        clock : in std_logic;
        reset : in std_logic;
        count_load : in std_logic;
        num: in std_logic_vector(15 downto 0);--escolher o valor para passar para algum dos regs( a escolha e feita no mux)

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
    signal sig: std_logic;
    signal gt1: std_logic;
    signal par: std_logic;
    signal gt3: std_logic;
    signal REM: std_logic;
    


    signal mux_reg: std_logic_vector(15 downto 0);--escolher o reg
    
    
    begin

    -- na subida do clock vamo setar o de uma entrada
    process(clock)
    if reset = '0' then
        --colocar o valor deles aqui setar pra zero
        elsif rising_edge(clock) then


