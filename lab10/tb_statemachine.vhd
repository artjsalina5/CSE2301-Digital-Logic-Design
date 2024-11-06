library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_state_detector is
end entity;

architecture behavior of tb_state_detector is
  -- Signal declarations to connect to the state_detector
  signal clk   : std_logic := '0';
  signal rst   : std_logic := '0';
  signal input : std_logic := '0';
  signal led   : std_logic;

  -- Instantiate the state_detector component
  component state_detector
    port (
      clk   : in std_logic;
      rst   : in std_logic;
      input : in std_logic;
      led   : out std_logic
    );
  end component;

begin
  -- Connect signals to the state_detector instance
  uut: state_detector
    port map (
      clk   => clk,
      rst   => rst,
      input => input,
      led   => led
    );

  -- Generate a clock signal
  clk_process : process
  begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
  end process;

  -- Apply test stimulus
  stimulus: process
  begin
    -- Initial reset
    rst <= '1';
    wait for 20 ns;
    rst <= '0';

    -- Apply input sequence to test state transitions
    input <= '1'; wait for 20 ns;  -- Move to S1
    input <= '0'; wait for 20 ns;  -- Move to S3
    input <= '1'; wait for 20 ns;  -- Move to S5
    input <= '0'; wait for 20 ns;  -- Move to S6
    input <= '1'; wait for 20 ns;  -- Back to S5
    input <= '0'; wait for 20 ns;  -- Move to S2

    -- End simulation
    wait for 100 ns;
    wait;
  end process;

end architecture;
