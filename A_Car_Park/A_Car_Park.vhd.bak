-- recalling the libraries
library ieee;
use ieee.std_logic_1164.all;

--creating Parckig system entity
entity A_Car_Park is


--declaring the input and outputs
port (clk, reset, sensor1,sensor2,exsens1,exsens2: in std_logic;
     W_LED, G_LED, R_LED,G1,G2: out std_logic; 
     Password: in std_logic_vector (3 downto 0));
end A_Car_Park;

--starting the entity architecture
architecture rtl of A_Car_Park is

-- calling the park space entity
component park_space is
port(Clk,Rst,Sens2,exs1,exs2: in std_logic;
     Wt_led,Gate2: out std_logic);
end component;

--calling the password check entity
component pass_chk is
port (CLK,Reset,sens1,sens2,white_led: in std_logic;
      pass: in std_logic_vector (3 downto 0);
       red_led, green_led, Gate: out std_logic);
end component;

signal whit_led: std_logic;
begin
A0: park_space port map (clk,reset,sensor2,exsens1,exsens2,whit_led,G2);
A1: pass_chk   port map (clk, reset, sensor1, sensor2, whit_led, Password,R_LED, G_LED, G1);
W_LED <= whit_led;
end rtl;
