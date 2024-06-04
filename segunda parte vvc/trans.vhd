library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all; 


entity trans is

	port(
			clock : in std_logic; -- Clock
			reset : in std_logic; -- Reset
			flagpassada1 : in std_logic;
			sigflag: out std_logic;
            signpattern: out std_logic;
            parity: out std_logic;
    		coeff: in std_logic_vector(15 downto 0);
    		--qualehocoeff: in std_logic_vector(3 downto 0);
    		gt1: out std_logic;
            gt3: out std_logic;
            gt5: out std_logic;
            gt7: out std_logic;
            gt9: out std_logic;
            remm: out std_logic_vector(15 downto 0);
            valiremm: out   std_logic; 
  			valiGT  :  out  std_logic; 
            Q :out std_logic_vector(6 downto 0)); -- Sa�da Q
      
end entity;



architecture behavior of trans is

	constant aux1: std_logic_vector(15 downto 0):=16D"1";
	constant aux1soma: std_logic_vector(6 downto 0):="0000001";
	constant aux1neg: std_logic_vector(15 downto 0):="1111111111111111";
	constant aux3: std_logic_vector(15 downto 0):=16D"3";
	constant aux4: std_logic_vector(15 downto 0):=16D"4";
	constant aux3neg: std_logic_vector(15 downto 0):="1111111111111101";
	constant aux5: std_logic_vector(15 downto 0):=16D"5";
	constant aux5neg: std_logic_vector(15 downto 0):="1111111111111011";
	constant aux7: std_logic_vector(15 downto 0):=16D"7";
	constant aux7neg: std_logic_vector(15 downto 0):="1111111111111001";
	constant aux9: std_logic_vector(15 downto 0):=16D"9";
	constant aux9neg: std_logic_vector(15 downto 0):="1111111111110111";
	constant auxbud: std_logic_vector(6 downto 0):="0011000";
	
	signal muxbud1:std_logic_vector(6 downto 0);
	signal muxbud3:std_logic_vector(6 downto 0);
	signal muxbud5:std_logic_vector(6 downto 0);
	signal muxbud7:std_logic_vector(6 downto 0);
	signal muxbud9:std_logic_vector(6 downto 0);
	
	signal sub1:std_logic_vector(6 downto 0);
    signal sub2:std_logic_vector(6 downto 0);
	signal sub3:std_logic_vector(6 downto 0);
    signal sub4:std_logic_vector(6 downto 0);
  ------- vai aqui a memory  
  type lut is array (integer range 0 to 15) of std_logic_vector(15 downto 0); 
  signal lut_mult : lut; --como crio segunda mem�ria ?
  signal  contador1:std_logic_vector(3 downto 0);
  signal  contador2:std_logic_vector(3 downto 0);
  signal  contador3:std_logic_vector(4 downto 0);
  signal MUXBUD      :std_logic_vector(4 downto 0):="00000";
  signal S      :    std_logic_vector(2 downto 0); -- Seletor
  
		begin
		    ---memm�ria coefs
			
	
		
		
		
		
				sigflag <= '0' when coeff  = 16D"0" else '1';
				parity <= '0' when coeff(0) = '0' else '1';
  				signpattern <= '1' when coeff(15) = '1' else '0';
		        gt1 <= '1' when coeff > aux1 or coeff < aux1neg else  '0';
				
		        ---ajeitar flasg gt para um bit
		        gt3 <= '1' when lut_mult(conv_integer(contador2)) > aux3 or lut_mult(conv_integer(contador2)) < aux3neg else  '0';  
				gt5 <= '1' when lut_mult(conv_integer(contador2)) > aux5 or lut_mult(conv_integer(contador2)) < aux5neg else  '0';                 
  				gt7 <= '1' when lut_mult(conv_integer(contador2)) > aux7 or lut_mult(conv_integer(contador2)) < aux7neg else  '0';
  				gt9 <= '1' when lut_mult(conv_integer(contador2)) > aux9 or lut_mult(conv_integer(contador2)) < aux9neg else  '0';  
  				
  				---- budget primeira passada
  				muxbud1  <=  "0000001" when sigflag = '0' else "0000011"; --sig sinal e gt1 DUVIDA CALCULO
  				muxbud3  <=  "0000000" when gt1 = '0' else "0000001"; ---paridade
  				--*******************************************registradores coefs gt1 =1 **************		
  				--****************Budget segunda passada****************************
  				S <= gt7 & gt5 & gt3;
  				
  				MUXBUD <= "00001" when S = "000" else 
  				  			"00010" when S = "001" else
  				  			"00000" when S = "010" else  
  				            "00011" when S = "011" else 
  				            "00000" when S = "100" else 
  				            "00000" when S = "101" else 
  				            "00000" when S = "110" else
  				            "00100"  ;
  				
  				            
  				            remm <= (lut_mult(conv_integer(contador2)) - 10) srl 1 when gt9 = '1' and Q >= "0000100" else (lut_mult(conv_integer(contador2)) - 2) srl 1;
  				            
  				            --remm <= (lut_mult(conv_integer(contador2)) - 2) srl 1 when 
  							valiremm <= '1' when (gt9 = '1' and Q >= "0000100") or Q < "0000100" else '0';
  							valiGT <=	'1' when	Q >= "0000100" else '0';
  							
  							
  				muxbud5  <=  "0000000" when gt3 = '0' else "0000001";
  				muxbud7  <=  "0000000" when gt5 = '0' else "0000001";
  				muxbud9  <=  "0000000" when gt7 = '0' else "0000001";
  				
  				------parte da validade do budget-------------------------
  				---sig e sign conta para o budget
  				--sig seletor sig valor 1 subtraio 3 se for 0 subtraio 1
  				-- criar flag para o dec Q>= 4 saida nova flag 1 else valor 0;IMPORTANTE
  				sub1 <= Q - muxbud1;
  				process(clock, reset)                                                                    
  					begin                                                                                   
  							if (reset = '0') then -- Se reset est� ativo                                           
							Q <= "0011100"; -- Q recebe 28. troca
							contador1 <= "0000";
							contador2 <= "0000"; 
							lut_mult (0) <= "0000000000000000"; 
							lut_mult (1) <= "0000000000000000"; 
							lut_mult (2) <= "0000000000000000"; 
							lut_mult (3) <= "0000000000000000"; 
							lut_mult (4) <= "0000000000000000"; 
							lut_mult (5) <= "0000000000000000"; 
							lut_mult (6) <= "0000000000000000"; 
							lut_mult (7) <= "0000000000000000"; 
							lut_mult (8) <= "0000000000000000"; 
							lut_mult (9) <= "0000000000000000"; 
							lut_mult (10) <= "0000000000000000"; 
							lut_mult (11) <= "0000000000000000"; 
							lut_mult (12) <= "0000000000000000"; 
							lut_mult (13) <= "0000000000000000"; 
							lut_mult (14) <= "0000000000000000"; 
							lut_mult (15) <= "0000000000000000"; 
							
							--contador3 <= "000000";                                               
	            	elsif (clock = '1' and clock'event) then -- Sempre que o enable estiver na borda ativa
	            			if flagpassada1 = '0' then 
	            				--contador3 <= contador3 +"000001" ;
	            				if Q >= "0000100"  then
	            				--sub1 <= Q - muxbud1;--sub1  ; -- Q recebe D.
	            				Q <= sub1 - muxbud3; ----Q vai me dar meu bud restante
	            				
	            			       --lut_mult(conv_integer(contador3))
	            				
	            			
	            					if gt1 = '1'  then --jeito certo
	            					contador1 <= contador1 + 1;
	            					lut_mult(conv_integer(contador1)) <= coeff;
	            					--remm <= (coeff - 2) srl 1;
	            					end if;
	            			   end if;		
	            			
	            		  else  	
	            						if contador2 < contador1 then
	            					    contador2 <= contador2 +1;	
	            					    end if;
	            		  
	            		  ----segunda passada
	            			if  Q >= "0000100" then-- testar Q ai se tiver ainda desconto O MUXBUD
	            						
	            						--if gt9 = '1' then
	            							--remm <= (lut_mult(conv_integer(contador2)) - 10) srl 1;
	            						--end if;
	            						
	            							
	            					Q <= Q - MUXBUD;
	            					   --if contador2 < contador1 then
	            					   --contador2 <= contador2 +1;
	            					
	            				 
	            				                                               
	            			end if;
	            		end if;
	            	end if;		                                                                               
	            	end process; 
	            	--primeira passada � ler os 16 coef
	            	--nova entrada passada1 ou passada2
	           
	            	  --CRIAR PLANILHA COM MEM 16 VALORES COM MEUS GTS E CONFERIR COM O VHDL USAR COMO VALIDA��O
	            	  --FAZER TESTE Q BUDGET ESTOURA 1 PASSADA, N ESTORA , ESTOURA 2 PASSADA
	            	
	   end behavior;         	                                                                           
	
	                  
                        
    		
    		
    		