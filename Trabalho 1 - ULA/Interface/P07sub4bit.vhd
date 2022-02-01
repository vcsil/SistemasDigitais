library ieee;
use ieee.std_logic_1164.all;

entity P07sub4bit is port
	( 
		X, Y : in  std_logic_vector(3 downto 0);
		Cin  : in  std_logic;	-- Borrow out
		Cout : out std_logic;	-- Borrow in
		S	 : out std_logic_vector(3 downto 0)
	);
end P07sub4bit;

architecture sub4bit_behav of P07sub4bit is

	component P05fulladder port
		(
			X, Y : in  std_logic; 
			Cin  : in  std_logic; 
			S    : out std_logic; 
			Cout : out std_logic
		);
	end component;
	
	component P09compl2 port
		(
			X   : in  std_logic_vector(3 downto 0);
			S 	 : out std_logic_vector(3 downto 0)
		);
	end component;

	signal sinal : std_logic_vector(3 downto 0);
	signal compl : std_logic_vector(3 downto 0);
	
	begin
		cp1: P09compl2    port map(Y, compl);
	
		fa1: P05fulladder port map(X(0), compl(0),     Cin , S(0),  sinal(0));
		fa2: P05fulladder port map(X(1), compl(1), sinal(0), S(1),  sinal(1));
		fa3: P05fulladder port map(X(2), compl(2), sinal(1), S(2),  sinal(2));
		fa4: P05fulladder port map(X(3), compl(3), sinal(2), S(3),      Cout);

end sub4bit_behav;