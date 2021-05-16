library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity park_space is
port(Clk,Rst,Sens2,exs1,exs2: in std_logic;
     Wt_led,Gate2: out std_logic);
end park_space;

architecture PS of park_space is

type state_type is (IDLE, A_space, S_checker, No_space);
signal current_state, next_state : state_type := IDLE;

signal wit_led: std_logic;
signal Q:  integer range 0 to 31 := 0 ;
--signal exs2, exs1: std_logic;



begin

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

process(exs1,exs2, Q,Sens2)
begin
 case (current_state) is
      when IDLE =>
           if (exs1='1') then
               next_state <= A_space;
           else
               if (Sens2='1') then
                   next_state <= S_checker;
               else
                   next_state <= IDLE;
               end if;
           end if;

       when A_space =>
            if (exs2='1') then
                next_state <= IDLE;
            else
                next_state <= A_space;
            end if;
       
       when S_checker =>
            if (Q=31) then
                next_state <= No_space;
            else
                next_state <= IDLE;
            end if;
 
        when No_space =>
            if (exs2='1') then
               next_state <= A_space;
            else
                next_state <= No_space;
            end if;
end case;
end process;

process(current_state)
begin
     case (current_state) is
           when (IDLE) =>
                Gate2 <= '0';
                Wt_led <='0';

           when (A_space)=>
                Wt_led <='1';
                Q <= Q-1;
                Gate2<='1';
 
            when (S_checker) =>
                Q <= Q+1;
   
            when (No_space) =>
                 Wt_led <='0';
end case;
end process;


end PS;