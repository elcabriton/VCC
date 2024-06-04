library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all; 


entity topo is

port(
	     clock      : in   std_logic;     -- clock
       	 reset      : in   std_logic;     -- reset
	     coeff: in std_logic_vector(15 downto 0);
	     escolha: in STD_LOGIC_VECTOR(3 downto 0);
         sk : in STD_LOGIC_VECTOR(1 downto 0);
         sigflag: out std_logic;
         signpattern: out std_logic;
         gt1: out std_logic;
         gt2: out std_logic;
         remabslevel:out std_logic_vector(15 downto 0);         
         Q :out std_logic_vector(6 downto 0); -- Sa?da Q
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


        reg0_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg1_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg2_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg3_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg4_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg5_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg6_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg7_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg8_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg9_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg10_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg11_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg12_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg13_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg14_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg15_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);


         
         
         
         parity: out std_logic);
end topo;

architecture behavior of topo is

-- 

component elementos_residuais is
port(
			clock : in std_logic; -- Clock
			reset : in std_logic; -- Reset
            sigflag: out std_logic;
            signpattern: out std_logic;
            gt1: out std_logic;
            gt2: out std_logic;
            remabslevel:out std_logic_vector(15 downto 0);
            
            
            Q :out std_logic_vector(6 downto 0); -- Sa?da Q
            
            parity: out std_logic;
    		coeff: in std_logic_vector(15 downto 0)
);
    		
      
end component;

component main is

 Port (
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


        reg0_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg1_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg2_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg3_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg4_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg5_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg6_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg7_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg8_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg9_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg10_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg11_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg12_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg13_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg14_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);
        reg15_neibor_out2 : out STD_LOGIC_VECTOR(15 downto 0);


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
        
        sk : in STD_LOGIC_VECTOR(1 downto 0)
    );
end component;


begin

--start mapping
elementos_residuais_inst: elementos_residuais
	port map (
	          clock      =>   clock,
   	          reset      =>   reset,
	          coeff     =>   coeff,
	          sigflag => sigflag,
              signpattern => signpattern,
              gt1 => gt1,
              gt2 => gt2,
              remabslevel => remabslevel,
              Q => Q,
              parity => parity
	          );

main_inst: main
	port map(
	         clock         =>   clock,
	         reset         =>   reset,
             escolha        =>   escolha,
	         coeff        =>   coeff,
	         sk           => sk,
             reg0_neibor  => reg0_neibor,
             reg1_neibor  => reg1_neibor,
             reg2_neibor  => reg2_neibor,
             reg3_neibor  => reg3_neibor,
             reg4_neibor  => reg4_neibor,
             reg5_neibor  => reg5_neibor,
             reg6_neibor  => reg6_neibor,
             reg7_neibor  => reg7_neibor,
             reg8_neibor  => reg8_neibor,
             reg9_neibor  => reg9_neibor,
             reg10_neibor => reg10_neibor,
             reg11_neibor => reg11_neibor,
             reg12_neibor => reg12_neibor,
             reg13_neibor => reg13_neibor,
             reg14_neibor => reg14_neibor,
             reg15_neibor => reg15_neibor,
             reg0_neibor_out2  => reg0_neibor_out2,
             reg1_neibor_out2  => reg1_neibor_out2,
             reg2_neibor_out2  => reg2_neibor_out2,
             reg3_neibor_out2  => reg3_neibor_out2,
             reg4_neibor_out2  => reg4_neibor_out2,
             reg5_neibor_out2  => reg5_neibor_out2,
             reg6_neibor_out2  => reg6_neibor_out2,
             reg7_neibor_out2  => reg7_neibor_out2,
             reg8_neibor_out2  => reg8_neibor_out2,
             reg9_neibor_out2  => reg9_neibor_out2,
             reg10_neibor_out2 => reg10_neibor_out2,
             reg11_neibor_out2 => reg11_neibor_out2,
             reg12_neibor_out2 => reg12_neibor_out2,
             reg13_neibor_out2 => reg13_neibor_out2,
             reg14_neibor_out2 => reg14_neibor_out2,
             reg15_neibor_out2 => reg15_neibor_out2,

	         deck_abs_level_0  => deck_abs_level_0    ,
	         deck_abs_level_1  => deck_abs_level_1    ,
	         deck_abs_level_2  => deck_abs_level_2    ,
	         deck_abs_level_3  => deck_abs_level_3    ,
	         deck_abs_level_4  => deck_abs_level_4    ,
	         deck_abs_level_5  => deck_abs_level_5    ,
	         deck_abs_level_6  => deck_abs_level_6    ,
	         deck_abs_level_7  => deck_abs_level_7    ,
	         deck_abs_level_8  => deck_abs_level_8    ,
	         deck_abs_level_9  => deck_abs_level_9    ,
	         deck_abs_level_10 => deck_abs_level_10  ,
	         deck_abs_level_11 => deck_abs_level_11  ,
	         deck_abs_level_12 => deck_abs_level_12  ,
	         deck_abs_level_13 => deck_abs_level_13  ,
	         deck_abs_level_14 => deck_abs_level_14  ,
	         deck_abs_level_15 => deck_abs_level_15
	         
	         );
	         
end behavior;

