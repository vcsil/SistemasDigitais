library ieee;
use ieee.std_logic_1164.all;

entity P08mult4bit is port
    (
		X, Y : in  std_logic_vector(3 downto 0);
		S 	 : out std_logic_vector(7 downto 0)
    );
end P08mult4bit;

architecture mult4bit_comport of P08mult4bit is

	component P05fulladder port
		(
			X, Y : in  std_logic; 
			Cin  : in  std_logic; 
			S    : out std_logic; 
			Cout : out std_logic
		);
	end component;

    signal s1 : std_logic_vector(3 downto 1);
    signal s2 : std_logic_vector(3 downto 1);
    signal c1 : std_logic_vector(4 downto 1);
    signal c2 : std_logic_vector(4 downto 1);
    signal c3 : std_logic_vector(3 downto 1);

    begin
        S(0) <= X(0) and Y(0);

        fa11: P05fulladder port map(X(1) and Y(0), X(0) and Y(1),   '0',  S(1), c1(1));
        fa12: P05fulladder port map(X(2) and Y(0), X(1) and Y(1), c1(1), s1(1), c1(2));
        fa13: P05fulladder port map(X(3) and Y(0), X(2) and Y(1), c1(2), s1(2), c1(3));
        fa14: P05fulladder port map(          '0', X(3) and Y(1), c1(3), s1(3), c1(4));

        fa21: P05fulladder port map(        s1(1), X(0) and Y(2),   '0',  S(2), c2(1));
        fa22: P05fulladder port map(        s1(2), X(1) and Y(2), c2(1), s2(1), c2(2));
        fa23: P05fulladder port map(        s1(3), X(2) and Y(2), c2(2), s2(2), c2(3));
        fa24: P05fulladder port map(        c1(4), X(3) and Y(2), c2(3), s2(3), c2(4));

        fa31: P05fulladder port map(        s2(1), X(0) and Y(3),   '0',  S(3), c3(1));
        fa32: P05fulladder port map(        s2(2), X(1) and Y(3), c3(1),  S(4), c3(2));
        fa33: P05fulladder port map(        s2(3), X(2) and Y(3), c3(2),  S(5), c3(3));
        fa34: P05fulladder port map(        c2(4), X(3) and Y(3), c3(3),  S(6),  S(7));

end mult4bit_comport;