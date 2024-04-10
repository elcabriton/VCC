library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all; 


entity elementos_residuais is

    port(	
    		clock : in std_logic; -- Clock
			reset : in std_logic; -- Reset

    		coeff: in std_logic_vector(15 downto 0);     

            sigflag: out std_logic;
            signpattern: out std_logic;
            gt1: out std_logic;
            gt2: out std_logic;
            remabslevel:out std_logic_vector(15 downto 0);
            
            
		        Q :out std_logic_vector(6 downto 0); -- Sa�da Q
            
            parity: out std_logic);
            
end entity;

architecture behavior of elementos_residuais is


constant aux1: std_logic_vector(15 downto 0):=16D"1";
constant aux1neg: std_logic_vector(15 downto 0):="1111111111111111";
constant aux2: std_logic_vector(15 downto 0):=16D"3";
constant aux2neg: std_logic_vector(15 downto 0):="1111111111111101";
constant quatro: std_logic_vector(15 downto 0):=16D"4";
signal auxremabslevel : std_logic_vector(15 downto 0):=16D"4";
signal coef1 : bit_vector(15 downto 0):=16D"4";
signal auxremabslevelneg : std_logic_vector(15 downto 0);
signal auxparamodulo : std_logic_vector(15 downto 0);
signal modulo : std_logic_vector(15 downto 0);
signal seletormux : std_logic_vector(15 downto 0);
signal muxbud1:std_logic_vector(6 downto 0);
signal muxbud2:std_logic_vector(6 downto 0);
signal sub1:std_logic_vector(6 downto 0);
signal sub2:std_logic_vector(6 downto 0);
begin
  sigflag <= '0' when coeff  = 16D"0" else '1';  
  gt1 <= '1' when coeff > aux1 or coeff < aux1neg else  '0'; 
  gt2 <= '1' when coeff > aux2 or coeff < aux2neg else '0'; 
  parity <= '0' when coeff(0) = '0' else '1';
  signpattern <= '1' when coeff(15) = '1' else '0';
  ------parte da validade do budget-------------------------
  muxbud1<="0000001" when sigflag='0' else "0000010"; --budget sig gt1
  muxbud2<="0000010" when gt1='1' else "0000000"; -- budget par gt3
  
  -------preciso fazer meu subtrator------------------------
  sub1 <= Q - muxbud1;
  --sub2 <= sub1 - muxbud2;
  ------------------------------------------------
  
  
process(clock, reset)
	begin
			if (reset = '1') then -- Se reset est� ativo
			Q <= "0011000"; -- Q recebe zero.
			elsif (clock = '1' and clock'event) then -- Sempre que o enable estiver na borda ativa
			Q <= sub1 - muxbud2; -- Q recebe D.
			end if;
	end process;


  
  
  
  -----------------------------------------------
  auxparamodulo(15)<=coeff(15) xor '1'; 
  auxparamodulo(14)<=coeff(14) xor '1'; 
  auxparamodulo(13)<=coeff(13) xor '1'; 
  auxparamodulo(12)<=coeff(12) xor '1'; 
  auxparamodulo(11)<=coeff(11) xor '1'; 
  auxparamodulo(10)<=coeff(10) xor '1'; 
  auxparamodulo(9)<=coeff(9) xor '1'; 
  auxparamodulo(8)<=coeff(8) xor '1'; 
  auxparamodulo(7)<=coeff(7) xor '1'; 
  auxparamodulo(6)<=coeff(6) xor '1'; 
  auxparamodulo(5)<=coeff(5) xor '1'; 
  auxparamodulo(4)<=coeff(4) xor '1'; 
  auxparamodulo(3)<=coeff(3) xor '1'; 
  auxparamodulo(2)<=coeff(2) xor '1'; 
  auxparamodulo(1)<=coeff(1) xor '1'; 
  auxparamodulo(0)<=coeff(0) xor '1'; 
  seletormux <=coeff when signpattern ='0' else  modulo;
  modulo <= auxparamodulo + aux1;--aux1  
  auxremabslevel <= seletormux - quatro;
  remabslevel <= auxremabslevel srl 1;

end behavior;