-- recalling the libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--creating Password check entity
entity pass_chk is

--declaring the input and outputs
port (CLK,Reset,sens1,sens2,white_led: in std_logic;
      pass: in std_logic_vector (3 downto 0);
       red_led, green_led, Gate: out std_logic);
end pass_chk;

--starting the entity architecture
architecture PC of pass_chk is

--stating the signals that will be used based on ASM chart
type state_type is(IDLE, S1, S2, S3, S4, S5); -- Password check system's states
signal current_state, next_state : state_type := IDLE;

signal timer_10s, load_timer: std_logic; 
signal Attempt : integer range 0 to 31 := 1; --declarying the attempts variable and its intial value
signal qq: std_logic_vector (4 downto 0); -- timer output value
signal w_led: std_logic;
signal red: std_logic;
 
--recalling the counter entity
component counter5bit is 
port (rest,clk: in std_logic; 
      q: out std_logic_vector(4 downto 0));
end component;

--starting the architeccture
begin 

--calculating the 10 s timer
t0: counter5bit port map (clk,load_timer,qq);
timer_10s <= qq(1) and qq(3);

red_led <= red;

-- declarying process for reset
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

-- declarying process for  the system i/p - o/p
process(sens1, white_led, pass, sens2, Attempt, timer_10s, current_state)
begin
case (current_state) is

-- ASM chart implementation    
     when IDLE =>
         if (sens1='1') then 
            next_state<=S1;
         else 
             next_state<=IDLE;
         end if;
      
     when S1 =>
          if (white_led='1') then
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
                next_state <= S5;
            end if;

   

      when S4 => 
            if (timer_10s ='1') then 
                next_state <= IDLE;
            else
                next_state <= S4; 
            end if;
       when S5 =>
            next_state <= S1;

end case;
end process;

-- calculating Controller output values
process (current_state)
begin 
case (current_state) is

    when IDLE => 
        Gate<='0';
        Attempt<=1;
        green_led <='0';
        red_led <= '0';

    when S1 =>
        Gate <= '0';

    when S2 =>
        Gate <= '1';
        green_led <= '1';

    when S3 =>
         Attempt<=Attempt-1;
         
    when S4 =>   
         red <= '1';
         load_timer<='1';

    when S5 =>
         Attempt <= Attempt + 2;

end case;
end process;

end PC;

