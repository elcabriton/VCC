library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use std.textio.ALL;           
use ieee.std_logic_textio.all;
use ieee.numeric_std.all; 

entity main_tb is
end main_tb;

architecture Behavioral of main_tb is
    component main is
        port (
            clock, reset : in std_logic;
            entrada : in std_logic_vector(15 downto 0);
            sk : in std_logic_vector(1 downto 0);
            escolha : in std_logic_vector(3 downto 0)
        );
    end component;

    signal clock  : std_logic := '0';
    signal reset  : std_logic := '0';
    signal entrada : std_logic_vector(15 downto 0);
    signal sk : std_logic_vector(1 downto 0):= "00";
    signal escolha : std_logic_vector(3 downto 0) := "0000";
    signal count : integer range 0 to 15 := 0;
	

    function str_to_stdvec(inp: string) return std_logic_vector is
        variable temp: std_logic_vector(inp'range);
    begin
        for i in inp'range loop
            if (inp(i) = '1') then
                temp(i) := '1';
            elsif (inp(i) = '0') then
                temp(i) := '0';
            end if;
        end loop;
        return temp;
    end function str_to_stdvec;

begin
	inst_top : main 
	port map (
		clock => clock,
		reset => reset,
		entrada => entrada,
		escolha => escolha,
		sk => sk
	);
	clock <= not clock after 5 ns;
	sk<="10" after 70 ns;
    process(clock)
    begin
        if rising_edge(clock) then
            if count <= 15 then
                count <= count + 1;
                
            end if;
        end if;
    end process;
	escolha <= std_logic_vector(to_unsigned(count, escolha'length));

    file_read : process 
        file file_org : text;
        variable original_line : line;
        variable org_str : string(16 downto 1);
    begin
        file_open(file_org, "C:/Users/mchhe/Documents/VCC/entrada.txt", READ_MODE);
        wait for 8 ns;
        
        while not endfile(file_org) loop
            readline(file_org, original_line);
            read(original_line, org_str);
            entrada <= str_to_stdvec(org_str);
			
        end loop;
    end process;

  
    
end Behavioral;
