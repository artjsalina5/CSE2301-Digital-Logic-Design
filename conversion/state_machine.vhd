use library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity blinky is 
  port (
  clk : in std_logic;
  rst : in std_logic;
  switch1 : in std_logic;
  led1 : out std_logic
       );
end entity;

architecture behavioral of blinky is

begin
  led1 <= switch1;
end behavioral
