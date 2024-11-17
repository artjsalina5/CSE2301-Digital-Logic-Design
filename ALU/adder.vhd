library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fourbit is
	port (
	A, B : in STD_LOGIC_VECTOR(3 downto 0);
	Cin : in STD_LOGIC;
	Sum : out STD_LOGIC_VECTOR(3 downto 0);
	Cout : out STD_LOGIC
	     );
end fourbit;

architecture Structure of fourbit is
	component FullAdder is
		port (X, Y, Cin : in STD_LOGIC;
		     Sum, Cout : out STD_LOGIC
	     );
	end component;
	signal C : STD_LOGIC_VECTOR(3 downto 1);
     begin

     	FA0: FullAdder port map (A(0), B(0), Cin, C(1), Sum(0));
     	FA1: FullAdder port map (A(1), B(1), C(1), C(2), Sum(1));
     	FA2: FullAdder port map (A(2), B(2), C(2), C(3), Sum(2));
     	FA3: FullAdder port map (A(3), B(3), C(3), Cout, Sum(3));
     	
end architecture Structure;
