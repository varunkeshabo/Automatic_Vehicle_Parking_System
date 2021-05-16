library ieee;
use ieee.std_logic_1164.all;

entity test_Parkspace is
end test_Parkspace; 

architecture test of test_Parkspace is

component park_space is

port(Clk,Rst,Sens2,exs1,exs2: in std_logic;
     Wt_led,Gate2: out std_logic);
end component;

signal rest,sen2,ex1,ex2,W_led,Gat2: std_logic;
signal Clk: std_logic :='0';
begin
B0: park_space port map (Clk,rest,sen2,ex1,ex2,W_led,Gat2);

Clk <= not Clk after 10 ns;
process
begin

rest<='0';
ex1 <= '0','1' after 100 ns;
ex2 <= '0','1' after 200 ns;
sen2 <= '0','1' after 50 ns;

wait;
end process;
end test;
