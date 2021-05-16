-- recalling the libraries
library ieee;
use ieee.std_logic_1164.all;

entity test_pass_chk is
end test_pass_chk;

architecture testP of test_pass_chk is

--calling the password check entity
component pass_chk is
port (CLK,Reset,sens1,sens2,white_led: in std_logic;
      pass: in std_logic_vector (3 downto 0);
       red_led, green_led, Gate: out std_logic);

end component;

--creating signals for port map
signal rset,se1,se2,W_Ld,R_Ld,G_Ld,Gte: std_logic;
signal password :std_logic_vector(3 downto 0);  
signal clk: std_logic:= '0';

begin 

B1: pass_chk port map (clk, rset, se1, se2,W_Ld, password, R_Ld, G_Ld, Gte);

clk <= not clk after 1 ns;

process 
begin
-- setting the signals timing
rset <= '0';
se1 <= '0','1' after 100 ns;
se2 <= '0','1' after 200 ns;
W_Ld <= '0','1' after 150 ns;
password <= "1100";

wait;
end process;
end testP;

