library IEEE;
use ieee.std_logic_1164.all;  
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all; 

entity topo is
--ts
    port(
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

            firstbit_coeff : out STD_LOGIC;
            deck_ts : out STD_LOGIC_VECTOR(15 downto 0)

    
    );
    end topo;
    
    architecture behavior of topo is

       
        
        component trans is
        port(
            clock : in std_logic; -- Clock
			reset : in std_logic; -- Reset
			flagpassada1 : in std_logic;
			sigflag: out std_logic;
            signpattern: out std_logic;
            parity: out std_logic;
    		coeff: in std_logic_vector(15 downto 0);
    		gt1: out std_logic;
            gt3: out std_logic;
            gt5: out std_logic;
            gt7: out std_logic;
            gt9: out std_logic;
            remm: out std_logic_vector(15 downto 0);
            valiremm: out   std_logic; 
  			valiGT  :  out  std_logic; 
            Q :out std_logic_vector(6 downto 0) 
            ) ;
        end component;

        component transformskip is
        port(
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
    
            firstbit_coeff : out STD_LOGIC;
            deck_ts : out STD_LOGIC_VECTOR(15 downto 0)
            
    
    
        );
        end component;

        begin
            trans_inst: trans port map(
                clock => clock,
                reset => reset,
                flagpassada1 => flagpassada1,
                sigflag => sigflag,
                signpattern => signpattern,
                parity => parity,
                coeff => coeff,
                gt1 => gt1,
                gt3 => gt3,
                gt5 => gt5,
                gt7 => gt7,
                gt9 => gt9,
                remm => remm,
                valiremm => valiremm,
                valiGT => valiGT,
                Q => Q
            ); 

            transformskip_inst: transformskip port map(
                clock => clock,
                reset => reset,
                escolha => escolha,
                coeff => coeff,
                reg0_neibor => reg0_neibor,
                reg1_neibor => reg1_neibor,
                reg2_neibor => reg2_neibor,
                reg3_neibor => reg3_neibor,
                reg4_neibor => reg4_neibor,
                reg5_neibor => reg5_neibor,
                reg6_neibor => reg6_neibor,
                reg7_neibor => reg7_neibor,
                reg8_neibor => reg8_neibor,
                reg9_neibor => reg9_neibor,
                reg10_neibor => reg10_neibor,
                reg11_neibor => reg11_neibor,
                reg12_neibor => reg12_neibor,
                reg13_neibor => reg13_neibor,
                reg14_neibor => reg14_neibor,
                reg15_neibor => reg15_neibor,


                deck_ts => deck_ts,
                firstbit_coeff => firstbit_coeff
                
                


            );
            
          
            
        end behavior;

    
    
          