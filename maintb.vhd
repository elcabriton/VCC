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
    signal entrada : std_logic_vector(15 downto 0):= "0000000000000000";
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
	-- sk<="11" after 70 ns;
    PROCESS 
    begin 
    wait for 5 ns;
    reset <= '1';
    wait for 10 ns;
    reset <= '0';
    wait;
    end process;
    process
    begin
    wait for 5 ns;
    
    sk <= "00";
    wait for 10 ns;
    
    escolha <= "0000";
    wait for 10 ns;
    escolha <= "0001";
   
    wait for 10 ns;
    escolha <= "0010";
    wait for 10 ns;
    escolha <= "0011";
   
    wait for 10 ns;
    escolha <= "0100";
    wait for 10 ns;
    escolha <= "0101";
    wait for 10 ns;
    escolha <= "0110";
    wait for 10 ns;
    escolha <= "0111";
    wait for 10 ns;
    escolha <= "1000";
    wait for 10 ns;
    escolha <= "1001";
    wait for 10 ns;
    escolha <= "1010";
    wait for 10 ns;
    escolha <= "1011";
    wait for 10 ns;
    escolha <= "1100";
    wait for 10 ns;
    escolha <= "1101";
    wait for 10 ns;
    escolha <= "1110";
    wait for 10 ns;
    escolha <= "1111";
    wait for 10 ns;
end process;
	

    file_read : process 
        file file_org : text;
        variable original_line : line;
        variable org_str : string(16 downto 1);
    begin
        file_open(file_org, "C:/Users/mchhe/Documents/VCC/entrada.txt", READ_MODE);
        wait for 4 ns;
        
        while not endfile(file_org) loop
            readline(file_org, original_line);
            read(original_line, org_str);
            entrada <= str_to_stdvec(org_str);
			wait for 9 ns;
        end loop;
    end process;

  
    
end Behavioral;
