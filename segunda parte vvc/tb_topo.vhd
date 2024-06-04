library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use std.textio.ALL;           
use ieee.std_logic_textio.all;
use ieee.numeric_std.all; 

entity tb_topo is

end tb_topo;

architecture behavior of tb_topo is
component topo is

Port (
    clock      : in   std_logic;     -- clock
    reset      : in   std_logic;     -- reset

     coeff: in std_logic_vector(15 downto 0);
     escolha: in STD_LOGIC_VECTOR(3 downto 0);
     flagpassada1 : in std_logic;

     sigflag: out std_logic;
     signpattern: out std_logic;
     parity: out std_logic;
     gt1: out std_logic;
     gt3: out std_logic;
     gt5: out std_logic;
     gt7: out std_logic;
     gt9: out std_logic;
     remm: out std_logic_vector(15 downto 0);
     valiremm: out   std_logic; 
     valiGT  :  out  std_logic; 
     Q :out std_logic_vector(6 downto 0); -- Sa�da Q
    
    reg0_neibor: out std_logic_vector(15 downto 0);--SAO SAIDAS
    reg1_neibor: out std_logic_vector(15 downto 0);
    reg2_neibor: out std_logic_vector(15 downto 0);
    reg3_neibor: out std_logic_vector(15 downto 0);
    reg4_neibor: out std_logic_vector(15 downto 0);
    reg5_neibor: out std_logic_vector(15 downto 0);
    reg6_neibor: out std_logic_vector(15 downto 0);
    reg7_neibor: out std_logic_vector(15 downto 0);
    reg8_neibor: out std_logic_vector(15 downto 0);
    reg9_neibor: out std_logic_vector(15 downto 0);
    reg10_neibor: out std_logic_vector(15 downto 0);
    reg11_neibor: out std_logic_vector(15 downto 0);
    reg12_neibor: out std_logic_vector(15 downto 0);
    reg13_neibor: out std_logic_vector(15 downto 0);
    reg14_neibor: out std_logic_vector(15 downto 0);
    reg15_neibor: out std_logic_vector(15 downto 0);

    firstbit_coeff: out std_logic;
    deck_ts: out std_logic_vector(15 downto 0)


        
    );
 end component;

signal flagpassada1_sg :  std_logic;
signal sigflag_sg:  std_logic;
signal signpattern_sg:  std_logic;
signal parity_sg: std_logic;
signal gt1_sg:  std_logic;
signal gt3_sg:  std_logic;
signal gt5_sg:  std_logic;
signal gt7_sg:  std_logic;
signal gt9_sg:  std_logic;
signal remm_sg:  std_logic_vector(15 downto 0);
signal valiremm_sg:    std_logic; 
signal valiGT_sg  :    std_logic; 
signal Q_sg : std_logic_vector(6 downto 0); 














 ----signal transform skip
signal clock_sg: std_logic:= '0';       
signal reset_sg: std_logic:= '1';
signal coeff_sg: std_logic_vector(15 downto 0)  :=16D"0";

signal escolha_sg : std_logic_vector(3 downto 0) := "0000";


signal reg0_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg1_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg2_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg3_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg4_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg5_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg6_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg7_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg8_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg9_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg10_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg11_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg12_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg13_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg14_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);
signal reg15_neibor_sg : STD_LOGIC_VECTOR(15 downto 0);

signal firstbit_coeff_sg : std_logic;
signal deck_ts_sg: std_logic_vector(15 downto 0);




 
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
inst_topo: topo
	port map (
        clock => clock_sg,
        reset => reset_sg,
        escolha => escolha_sg,
        coeff => coeff_sg,
        flagpassada1 => flagpassada1_sg,
        sigflag => sigflag_sg,
        signpattern => signpattern_sg,
        parity => parity_sg,
        gt1 => gt1_sg,
        gt3 => gt3_sg,
        gt5 => gt5_sg,
        gt7 => gt7_sg,
        gt9 => gt9_sg,
        remm => remm_sg,
        valiremm => valiremm_sg,
        valiGT => valiGT_sg,
        Q => Q_sg,
        reg0_neibor => reg0_neibor_sg,
        reg1_neibor => reg1_neibor_sg,
        reg2_neibor => reg2_neibor_sg,
        reg3_neibor => reg3_neibor_sg,
        reg4_neibor => reg4_neibor_sg,
        reg5_neibor => reg5_neibor_sg,
        reg6_neibor => reg6_neibor_sg,
        reg7_neibor => reg7_neibor_sg,
        reg8_neibor => reg8_neibor_sg,
        reg9_neibor => reg9_neibor_sg,
        reg10_neibor => reg10_neibor_sg,
        reg11_neibor => reg11_neibor_sg,
        reg12_neibor => reg12_neibor_sg,
        reg13_neibor => reg13_neibor_sg,
        reg14_neibor => reg14_neibor_sg,
        reg15_neibor => reg15_neibor_sg,

        firstbit_coeff => firstbit_coeff_sg,
        deck_ts => deck_ts_sg


	); 
   
clock_sg <= not clock_sg after 5 ns;	

process

 begin             	        
    
  
  
  wait for 2 ns;                                                                    
      reset_sg <= '0';  
      wait;
      end process;

      process 
      begin                                                                
      escolha_sg <= "0000";                                                                         
                                                                         
                                                                    
                                                                                     
                                                                        
                                                                     
                                                                                     
                                                                 
      wait for 10 ns;                                                                
      escolha_sg <= "0001";                                                             
                                                                                     
      wait for 10 ns;                                                                
      escolha_sg <= "0010";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "0011";                                                             
                                                                                     
      wait for 10 ns;                                                                
      escolha_sg <= "0100";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "0101";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "0110";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "0111";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1000";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1001";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1010";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1011";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1100";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1101";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1110";                                                             
      wait for 10 ns;                                                                
      escolha_sg <= "1111";                                                             
    wait;                                                           
  end process;                                                                       
  	                                                                                  
                                                                                     
      file_read : process                                                            
          file file_org : text;                                                      
          variable original_line : line;                                             
          variable org_str : string(16 downto 1);                                    
      begin                                                                          
            file_open(file_org, "C:\Users\elcabriton\Documents\NEWVVC\entrada.txt", READ_MODE);
          wait for 10 ns;                                                             
                                                                                     
          while not endfile(file_org) loop                                           
              readline(file_org, original_line);                                     
              read(original_line, org_str);                                          
              coeff_sg <= str_to_stdvec(org_str);                                     
  			wait for 10 ns;                                                                  
          end loop;                                                                  
      end process;    
 end behavior;       
      
                                                                     