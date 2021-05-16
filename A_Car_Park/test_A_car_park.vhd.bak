-- recalling the libraries
library ieee;
use ieee.std_logic_1164.all;

entity test_A_car_park is
end test_A_car_park;

architecture testCP of test_A_car_park is


component A_Car_Park is
port (clk, reset, sensor1,sensor2,exsens1,exsens2: in std_logic;
      W_LED,G_LED, R_LED,G1,G2: out std_logic; 
     Password: in std_logic_vector (3 downto 0));
end component;

signal rst,ses1,ses2,exse1,exse2,W_L,G_L,R_L,GT1,GT2: std_logic;
signal pass: std_logic_vector (3 downto 0);
signal cLk: std_logic:= '0';
begin

B2: A_Car_Park port map(cLk,rst,ses1,ses2,exse1,exse2,W_L,G_L,R_L,GT1,GT2,pass);

clk <= not clk after 1 ns;

process
begin

rst <='0';
ses1 <= '0','1' after 90 ns;
ses2 <= '0','1' after 120 ns;
exse1 <= '0','1' after 150 ns;
exse2 <= '0','1' after 200 ns;
pass <="1100";

wait;
end process;
end testCP;

