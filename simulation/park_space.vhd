-- recalling the libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--creating Space check entity
entity park_space is

--declaring the inputs and outputs
port(Clk,Rst,Sens2,exs1,exs2: in std_logic;
     Wt_led,Gate2: out std_logic);
end park_space;

--starting the entity architecture
architecture PS of park_space is

--stating the signals that will be used based on ASM chart
type state_type is (IDLE, A_space,Car_enter_check, S_checker, No_space);
signal current_state, next_state : state_type := IDLE;
signal wit_led: std_logic;
signal Q:  integer range 0 to 31 := 15 ;


--starting the architeccture
begin

-- declarying process for reset
process (Clk,Rst)
begin
   if(Clk'event and Clk='1') then
      if (Rst='1') then
          current_state<=IDLE;
      else
          current_state<=next_state;
      end if;
    end if;
end process;


-- declarying process for  the system i/p - o/p
process(exs1,exs2, Q,Sens2,current_state)
begin
 case (current_state) is

-- ASM chart implementation 
      when IDLE =>
           if (exs1='1') then
               next_state <= A_space;
           else
               next_state <= Car_enter_check;
           end if;

       when A_space =>
            if (Q=0) then
                next_state <= Car_enter_check;
            else   
               if (exs2='1') then
                next_state <= IDLE;
                else
                next_state <= A_space;
                end if;
             end if;
                
       when Car_enter_check =>
             if(Sens2='1') then 
                next_state <= S_checker;
             else
                next_state <= Car_enter_check;
             end if;

       when S_checker =>
            if (Q=31) then
                next_state <= No_space;
            else
                next_state <= IDLE;
            end if;
 
        when No_space =>
            if (exs1='1') then
               next_state <= A_space;
            else
                next_state <= No_space;
            end if;
end case;
end process;

-- calculating Controller output values
process(current_state)
begin
     case (current_state) is
           when (IDLE) =>
                Gate2 <= '0';
                Wt_led <='1';

           when (A_space)=>
                Wt_led <='1';
                Q <= Q-1;
                Gate2<='1';
           when (Car_enter_check) =>
                Wt_led <= '1';
             
            when (S_checker) =>
                Q <= Q+1;
   
            when (No_space) =>
                 Wt_led <='0';
end case;
end process;


end PS;               
