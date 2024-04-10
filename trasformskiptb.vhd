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
            clock : in STD_LOGIC;
            reset : in STD_LOGIC;
            --valores para o neighboor
            escolha: in STD_LOGIC_VECTOR(3 downto 0);
            coeff : in STD_LOGIC_VECTOR(15 downto 0);--valor para atribuir a aqueles regs que precisam de neibor
           
            deck_abs_level_0  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_1  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_2  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_3  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_4  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_5  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_6  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_7  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_8  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_9  : out  STD_LOGIC_VECTOR(15 downto 0);     
            deck_abs_level_10 : out   STD_LOGIC_VECTOR(15 downto 0);    
            deck_abs_level_11 : out   STD_LOGIC_VECTOR(15 downto 0);    
            deck_abs_level_12 : out   STD_LOGIC_VECTOR(15 downto 0);    
            deck_abs_level_13 : out   STD_LOGIC_VECTOR(15 downto 0);    
            deck_abs_level_14 : out   STD_LOGIC_VECTOR(15 downto 0);    
            deck_abs_level_15 : out   STD_LOGIC_VECTOR(15 downto 0);           
            sk :in STD_LOGIC_VECTOR(1 downto 0)
        );
        end component;
        ----signal transform skip
            signal clock_sg: std_logic:= '0';       
             signal reset_sg: std_logic:= '1';
             signal coeff_sg: std_logic_vector(15 downto 0)  :=16D"0";
             signal  deck_abs_level_0_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_1_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_2_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_3_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_4_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_5_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_6_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_7_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_8_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_9_sg :STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_10_sg: STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_11_sg: STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_12_sg: STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_13_sg: STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_14_sg: STD_LOGIC_VECTOR(15 downto 0);
             signal  deck_abs_level_15_sg: STD_LOGIC_VECTOR(15 downto 0);
             
             
             
             
             
             
            ----signal main
            
           
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
       inst_topo: topo
           port map (
               clock => clock_sg,
               reset => reset_sg,
               escolha => escolha,
               coeff => coeff_sg,
               sk => sk ,
               deck_abs_level_0   => deck_abs_level_0_sg   ,
               deck_abs_level_1   => deck_abs_level_1_sg   ,
               deck_abs_level_2   => deck_abs_level_2_sg   ,
               deck_abs_level_3   => deck_abs_level_3_sg   ,
               deck_abs_level_4   => deck_abs_level_4_sg   ,
               deck_abs_level_5   => deck_abs_level_5_sg   ,
               deck_abs_level_6   => deck_abs_level_6_sg   ,
               deck_abs_level_7   => deck_abs_level_7_sg   ,
               deck_abs_level_8   => deck_abs_level_8_sg   ,
               deck_abs_level_9   => deck_abs_level_9_sg   ,
               deck_abs_level_10  => deck_abs_level_10_sg  ,
               deck_abs_level_11  => deck_abs_level_11_sg  ,
               deck_abs_level_12  => deck_abs_level_12_sg  ,
               deck_abs_level_13  => deck_abs_level_13_sg  ,
               deck_abs_level_14  => deck_abs_level_14_sg  ,
               deck_abs_level_15  => deck_abs_level_15_sg  
       
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
             escolha <= "0000";                                                                         
                                                                                
                                                                           
                                                                                            
             sk <= "00";                                                                    
                                                                            
                                                                                            
                                                                        
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
           wait;                                                           
         end process;                                                                       
                                                                                               
                                                                                            
             file_read : process                                                            
                 file file_org : text;                                                      
                 variable original_line : line;                                             
                 variable org_str : string(16 downto 1);                                    
             begin                                                                          
                 file_open(file_org, "C:\Users\gabri\Downloads\NEWVVC\NEWVVC\entrada.txt", READ_MODE);
                 wait for 10 ns;                                                             
                                                                                            
                 while not endfile(file_org) loop                                           
                     readline(file_org, original_line);                                     
                     read(original_line, org_str);                                          
                     coeff_sg <= str_to_stdvec(org_str);                                     
                     wait for 10 ns;                                                                  
                 end loop;                                                                  
             end process;    
        end behavior;       
             
                                                                            