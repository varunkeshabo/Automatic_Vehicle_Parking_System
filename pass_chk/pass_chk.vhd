library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pass_chk is
port (CLK,Reset,sens1,sens2,ext_sens: in std_logic;
      pass: in std_logic_vector (3 downto 0);
      white_led, red_led, green_led, Gate: out std_logic);
end pass_chk;

architecture PC of pass_chk is

type state_type is(IDLE, S1, S2, S3, S4); 
signal current_state, next_state : state_type := IDLE;

signal timer_10s, load_timer: std_logic;
signal Attempt : integer range 0 to 31 := 0 ;
signal qq: std_logic_vector (4 downto 0);
signal w_led: std_logic;
signal red: std_logic;
 
component counter5bit is
port (rest,clk: in std_logic; 
      q: out std_logic_vector(4 downto 0));
end component;


begin 

t0: counter5bit port map (clk,load_timer,qq);
timer_10s <= qq(1) and qq(3);
white_led <= w_led;
red_led <= red;

process (CLK,Reset) is
begin 
if (CLK'event and CLK='1') then 
    if (Reset='1') then 
        current_state <= IDLE;
    else
        current_state <= next_state;
    end if;
end if;
end process;

process(sens1, sens2, w_led, pass, timer_10s, Attempt, current_state)
begin
case (current_state) is
     
     when IDLE =>
         if (sens1='1') then 
            next_state<=S1;
         else 
             next_state<=IDLE;
         end if;
      
     when S1 =>
          if (w_led='1') then
              if(pass="1100") then 
                  next_state<=S2;
              else
                  next_state <= S3;
              end if;
           end if;

      when S2 => 
           if (sens2='1') then 
               next_state <= IDLE; 
           else
               next_state <= S2;
           end if;

      when S3 =>
            if (Attempt=2) then
                next_state <= S4;
            else
                next_state <= S1;
            end if;
      when S4 => 
            if (timer_10s ='1') then 
                next_state <= IDLE;
            else
                next_state <= S4; 
            end if;

end case;
end process;

process (current_state)
begin 
case (current_state) is

    when IDLE => 
        Gate<='0';
        Attempt<=3;
    when S1 =>
        Gate <= '0';
    when S2 =>
        Gate <= '1';
        green_led <= '1';
    when S3 =>
         Attempt<=Attempt-1;
    when S4 =>   
         red <= not red;

end case;
end process;

end PC;