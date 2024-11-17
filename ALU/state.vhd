library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity statemachine is
	port (
	X :in std_logic;
	clk :in std_logic;
	reset :in std_logic;
	Q0 :out std_logic;
	Q1 :out std_logic;
	Q2 :out std_logic;
	Y :out std_logic;
	) 
end statemachine;
architecture rtl of statemachine is
	type state_type is (S0, S1, S2, S3, S4, S5, S6);
	signal state, next_state: state_type;

	process(state)
	begin
		case state is
			when S0 =>
				Q0 <= '0';
				Q1 <= '0';
				Q2 <= '0';
			when S1 =>
				Q0 <= '0';
				Q1 <= '0';
				Q2 <= '1';
			when S1 =>
				Q0 <= '0';
				Q1 <= '0';
				Q2 <= '1';
			when S2 =>
				Q0 <= '0';
				Q1 <= '1';
				Q2 <= '0';
			when S3 =>
				Q0 <= '0';
				Q1 <= '1';
				Q2 <= '1';
			when S4 =>
				Q0 <= '1';
				Q1 <= '0';
				Q2 <= '0';
			when S5 =>
				Q0 <= '1';
				Q1 <= '0';
				Q2 <= '1';
			when S6 =>
				Q0 <= '1';
				Q1 <= '1';
				Q2 <= '0';
		end case;
	end process;

	process(clk, reset)
		begin
			if reset = '1' then
				state <= S0;
			elsif rising_edge(clk) then
				state <= next_state;
			end if;
	end process;

		process(state, X)
		begin
			case state is
				when S0 =>
					if X = '1' then 
						next_state <= S2;
					else
						next_state <= S1;
					end if;
				when S1 =>
					if X = '1' then
						next_state <= S1;
					else
						next_state <= S3;
					end if;
				when S2 => 
					if X = '1' then
						next_state <= S4;
					else
						next_state <= S2;
					end if
				when S3 =>
					if X = '1' then
						next_state <= S5;
					else
						next_state <= S2;
					end if
				when S4 =>
					if X = '1' then
						next_state <= S1;
					else
						next_state <= S6;
					end if
				when S5 =>
					if X = '1' then
						next_state <= S1;
					else
						next_state <= S6;
					end if
				when S6 =>
					if X = '1' then 
						next_state <= S5;
					else
						next_state <= S2;
					end if
				end process;


			if rising_edge(clk) then
			if rst = rst_val then
	end process ;
end

