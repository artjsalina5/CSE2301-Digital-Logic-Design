library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DoorOpener is
	port (
		c, h, p: in std_logic;
		f : out std_logic
	     );
end DoorOpener;


architecture rtl of DoorOpener is
	component Inv
		port (
			x: in std_logic;
			F: out std_logic
		     );
	end component;
	component OR2
		port (
			x, y : in std_logic;
			F : out std_logic
		     );
	end component;
	component AND2
		port (
			x, y : in std_logic;
			F : out std_logic
		     );
	end component;

	signal n1, n2: std_logic;

begin
	Inv_1: Inv port map (
		x => c, 
		F => n1
		   );
        OR2_1: OR2 port map (
		x => h,
		y => p,
		F => n2
		   );
	AND2_1: AND2 port map (
		x => n1,
		y => n2,
		F => f
		   );
end rtl;
