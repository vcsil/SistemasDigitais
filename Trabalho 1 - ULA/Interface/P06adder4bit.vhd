library ieee;
use ieee.std_logic_1164.all;

entity P06adder4bit is port
	(
		X, Y : in  std_logic_vector(3 downto 0);
		Cin	 : in  std_logic;
		Cout : out std_logic;
		S    : out std_logic_vector(3 downto 0)
	); 
end P06adder4bit; 

architecture adder_behav of P06adder4bit is 

	component P05fulladder port
		( 
			X, Y : in  std_logic; 
			Cin  : in  std_logic; 
			S    : out std_logic; 
			Cout : out std_logic
		); 
	end component; 

	signal sinal : std_logic_vector(2 downto 0);

	begin  
		fa1: P05fulladder port map(X(0), Y(0),     Cin , S(0),  sinal(0));
		fa2: P05fulladder port map(X(1), Y(1), sinal(0), S(1),  sinal(1));
		fa3: P05fulladder port map(X(2), Y(2), sinal(1), S(2),  sinal(2));
		fa4: P05fulladder port map(X(3), Y(3), sinal(2), S(3),      Cout);
 
end adder_behav;