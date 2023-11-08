library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Registradores16Bits is
  end Registradores16Bits;


architecture Behavioral of Registradores16Bits is
    component projeto is
    port(
    clock, reset : in std_logic;
    input in std_logic_vector(15 downto 0);
    en_reg_neibor : in std_logic;
    sk : in STD_LOGIC_VECTOR(1 downto 0);
    );
    end component;

signal clock, reset : std_logic;
signal input : std_logic_vector(15 downto 0);
signal en_reg_neibor : std_logic;
signal sk : STD_LOGIC_VECTOR(1 downto 0);

begin
DUT: entity work.main port map
(
clock => clock,
reset => reset,
input => input,
en_reg_neibor => en_reg_neibor,
sk => sk
);
process
begin
    clock <= '0';
    wait for 10 ns;
    clock <= '1';
    wait for 10 ns;

    --testbench

