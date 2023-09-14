library ieee;                 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--versatile video conding(VVC) 
entity VVC is
    port(
        clock : in std_logic;
        reset : in std_logic;
        coef : in std_logic_vector(3 downto 0);--qual parte da matriz usaremos(qual posicao vamos usar)
        input: in std_logic_vector(15 downto 0);--qual reg vamos ler(coefff)
        input_m: in std_logic_vector(1 downto 0);--escolher oq vamos passar na conta do "m"
        );
end VVC;

architecture behavior of VVC is
    --(SABER O NOME DESSES REGS)

--15 14 13 12 
--11 10 9  8
--7  6  5  4
--3  2  1  0

   signal reg0 : std_logic_vector(15 downto 0);
   signal reg1 : std_logic_vector(15 downto 0);
   signal reg2 : std_logic_vector(15 downto 0);
   signal reg3 : std_logic_vector(15 downto 0);
   signal reg4 : std_logic_vector(15 downto 0);
   signal reg5 : std_logic_vector(15 downto 0);
   signal reg6 : std_logic_vector(15 downto 0);
   signal reg7 : std_logic_vector(15 downto 0);
   signal reg8 : std_logic_vector(15 downto 0);
   signal reg9 : std_logic_vector(15 downto 0);
   signal reg10 : std_logic_vector(15 downto 0);
   signal reg11 : std_logic_vector(15 downto 0);
   signal reg12 : std_logic_vector(15 downto 0);
   signal reg13 : std_logic_vector(15 downto 0);
   signal reg14 : std_logic_vector(15 downto 0);
   signal reg15 : std_logic_vector(15 downto 0);



   --SIGNAL MUX DO "M"
   signal mux: std_logic_vector(1 downto 0);


   --mux que passa para setarmos o valor do reg
    -- signal mux_selector : std_logic_vector(15 downto 0);
    -- signal mux_0: std_logic_vector(15 downto 0);
    -- signal mux_1: std_logic_vector(15 downto 0);
    -- signal mux_2: std_logic_vector(15 downto 0);
    -- signal mux_3: std_logic_vector(15 downto 0);
    -- signal mux_4: std_logic_vector(15 downto 0);
    -- signal mux_5: std_logic_vector(15 downto 0);
    -- signal mux_6: std_logic_vector(15 downto 0);
    -- signal mux_7: std_logic_vector(15 downto 0);
    -- signal mux_8: std_logic_vector(15 downto 0);
    -- signal mux_9: std_logic_vector(15 downto 0);
    -- signal mux_10: std_logic_vector(15 downto 0);
    -- signal mux_11: std_logic_vector(15 downto 0);
    -- signal mux_12: std_logic_vector(15 downto 0);
    -- signal mux_13: std_logic_vector(15 downto 0);
    -- signal mux_14: std_logic_vector(15 downto 0);
    -- signal mux_15: std_logic_vector(15 downto 0);
   
   
     
   begin
    

    --mux que passa para setarmos o valor do reg
    mux_selector <= input;

    reg0<=mux_selector when coef="0000";
    reg1<=mux_selector when coef="0001";
    reg2<=mux_selector when coef="0010";
    reg3<=mux_selector when coef="0011";
    reg4<=mux_selector when coef="0100";
    reg5<=mux_selector when coef="0101";
    reg6<=mux_selector when coef="0110";
    reg7<=mux_selector when coef="0111";
    reg8<=mux_selector when coef="1000";
    reg9<=mux_selector when coef="1001";
    reg10<=mux_selector when coef="1010";
    reg11<=mux_selector when coef="1011";
    reg12<=mux_selector when coef="1100";
    reg13<=mux_selector when coef="1101";
    reg14<=mux_selector when coef="1110";
    reg15<=mux_selector when coef="1111";


    --MUX DO "M"
   
    -- 0, sT < 7,
    -- 1, 7 ≤ sT < 14,
    -- 2, 14 ≤ sT < 28,
    -- 3, sT ≥ 28,
    --CONFIGURA O M "SO MUDAR O VALOR DE ST PARA SABER OQ VAI PASSAR"
    mux_m <= "01" when sT < "00000111"
    mux_m <= "10" when sT >= "00000111" and sT < "00001110"
    mux_m <= "11" when sT >= "00001110" and sT < "00011100"


    process(clock)
    