library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity state_detector is
  port (
    clk   : in std_logic;
    rst   : in std_logic;
    input : in std_logic;
    led   : out std_logic
  );
end entity;

architecture rtl of state_detector is
  TYPE State_type IS (S0, S1, S2, S3, S4, S5, S6, S7);
  SIGNAL State : State_type := S0;
begin

  PROCESS (clk, rst)
  BEGIN
    if rst = '1' THEN
      State <= S0;  -- Reset to S0
    elsif rising_edge(clk) THEN
      case State is
        when S0 =>
          if input = '1' then
            State <= S1;
          else
            State <= S2;
          end if;
        when S1 =>
          if input = '1' then
            State <= S1;
          else
            State <= S3;
          end if;
        when S2 =>
          if input = '1' then
            State <= S4;
          else
            State <= S2;
          end if;
        when S3 =>
          if input = '1' then
            State <= S5;
          else
            State <= S2;
          end if;
        when S4 =>
          if input = '1' then
            State <= S1;
          else
            State <= S6;
          end if;
        when S5 =>
          if input = '1' then
            State <= S1;
          else
            State <= S6;
          end if;
        when S6 =>
          if input = '1' then
            State <= S5;
          else
            State <= S2;
          end if;
        when others =>
          State <= S0;
      end case;
    end if;
  END PROCESS;

  led <= '1' when (State = S5 or State = S6) else '0';

end architecture;
