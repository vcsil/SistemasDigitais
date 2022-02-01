library ieee;
use ieee.std_logic_1164.all;

entity P09compl2 is port
    (
		X    : in  std_logic_vector(3 downto 0);
		S 	 : out std_logic_vector(3 downto 0)
    );
end P09compl2;

architecture compl2_behav of P09compl2 is

	component P05fulladder port
		(
			X, Y : in  std_logic; 
			Cin  : in  std_logic; 
			S    : out std_logic; 
			Cout : out std_logic
		);
	end component;

	signal sinal : std_logic_vector(3 downto 0);

	begin
		fa1: P05fulladder port map(X(0) xor '1', '0',      '1', S(0), sinal(0));
		fa2: P05fulladder port map(X(1) xor '1', '0', sinal(0), S(1), sinal(1));
		fa3: P05fulladder port map(X(2) xor '1', '0', sinal(1), S(2), sinal(2));
		fa4: P05fulladder port map(X(3) xor '1', '0', sinal(2), S(3), sinal(3));

end compl2_behav;