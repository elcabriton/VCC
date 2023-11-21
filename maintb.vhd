library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use std.textio.ALL;           
use ieee.std_logic_textio.all;

entity Registradores16Bits is
  end Registradores16Bits;


architecture Behavioral of Registradores16Bits is
    component main is
    port(
    clock, reset : in std_logic;
    entrada: in std_logic_vector(15 downto 0);
    
    sk : in STD_LOGIC_VECTOR(1 downto 0);
    escolha: in STD_LOGIC_VECTOR(3 downto 0)
    );
    end component;

signal clock  : std_logic;
signal reset  : std_logic;
signal entrada : std_logic_vector(15 downto 0);
signal sk : STD_LOGIC_VECTOR(1 downto 0);
signal escolha:STD_LOGIC_VECTOR(3 downto 0);

-- converte de string para std_logic_vector
function str_to_stdvec(inp: string) return std_logic_vector is
	variable temp: std_logic_vector(inp'range);
	begin
		for i in inp'range loop--loop de 0 até o tamanho da string
			if (inp(i) = '1') then--se o caractere for 1
				temp(i) := '1';--atribui 1 ao vetor
			elsif (inp(i) = '0') then--se o caractere for 0
				temp(i) := '0';--atribui 0 ao vetor
			end if;
		end loop;
	return temp;
end function str_to_stdvec;
--para ler o escolha


begin
inst_top: main
port map
(
clock => clock,
reset => reset,
entrada => entrada,
escolha => escolha,
sk => sk
);
clock <= not clock after 4 ns; 


file_read:process 
	
		file  		file_org: text;
		variable    original_line: line;
		variable    org_str: string(16 downto 1);
		---variable	entrada_1_v : std_logic_vector(7 downto 0);
		begin

		
		FILE_OPEN(file_org, "entrada.txt", READ_MODE);
		wait for 8 ns;
		 -- enable <= '1';
	    while not endfile(file_org) loop--loop até o fim do arquivo
	    	-- entrada 1
	    	readline(file_org, original_line);--lê uma linha do arquivo
	    	read(original_line, org_str);
	   		escolha <= str_to_stdvec(org_str);--converte a string para std_logic_vector
	   	
	   	end loop;
       
      FILE_OPEN(file_org, "escolha.txt", READ_MODE);
       wait for 8 ns;
        -- enable <= '1';
         while not endfile(file_org) loop--loop até o fim do arquivo
           -- entrada 1
           readline(file_org, original_line);--lê uma linha do arquivo
           read(original_line, org_str);
            escolha <= str_to_stdvec(org_str);--converte a string para std_logic_vector
          
          end loop;
end process;	 
end Behavioral;

