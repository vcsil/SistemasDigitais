-- cout = 0 -> número negativo
-- cout = 1 -> número positvo

-- sel  operaçao
-- 000  X and Y
-- 001  X OR  Y
-- 010  not X
-- 011  X xor Y
-- 100  X + Y
-- 101  X - Y
-- 110  X * Y
-- 111  X comp 2 

library IEEE;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;

entity P10ula is port
	(
		X, Y : in  std_logic_vector(3 downto 0);
		F	 : in  std_logic_vector(2 downto 0);
		S	 : out std_logic_vector(7 downto 0);
		BOUT : out std_logic
	);
end P10ula;

architecture rtl of P10ula is

	-- Operação and
	component P01and_4b port
		( 
			X, Y : in  std_logic_vector(3 downto 0); 
			S 	 : out std_logic_vector(3 downto 0)
		); 
	end component;
	
	-- Operação or
	component P02or_4b port
		( 
			X, Y : in  std_logic_vector(3 downto 0); 
			S 	 : out std_logic_vector(3 downto 0)
		); 
	end component;

	-- Operação not
	component P03not_4b port
		( 
			X    : in  std_logic_vector(3 downto 0); 
			S 	 : out std_logic_vector(3 downto 0)
		); 
	end component;
	
	-- Operação xor
	component P04xor_4b port
		( 
			X, Y : in  std_logic_vector(3 downto 0); 
			S 	 : out std_logic_vector(3 downto 0)
		); 
	end component;

	-- Operação soma 4 bits
	component P06adder4bit port
		(
			X, Y : in  std_logic_vector(3 downto 0);
			Cin  : in  std_logic;
			Cout : out std_logic;
			S    : out std_logic_vector(3 downto 0)
		); 
	end component;
	
	-- Operação subtrair 4 bits
	component P07sub4bit port
		(
			X, Y : in  std_logic_vector(3 downto 0);
			Cin  : in  std_logic;
			Cout : out std_logic;
			S    : out std_logic_vector(3 downto 0)
		); 
	end component;

	-- Operação multiplicar 4 bits
	component P08mult4bit port
		 (
			X, Y   : in  std_logic_vector(3 downto 0);
			S 	   : out std_logic_vector(7 downto 0)
		 );
	end component;
	
	-- Operação complemento de 2 de X
	component P09compl2 port
		 (
			X   : in  std_logic_vector(3 downto 0);
			S 	: out std_logic_vector(3 downto 0)
		 );
	end component;
	
	signal r_and, r_or, r_not, r_xor, r_sum, r_sub, r_cp2   :	std_logic_vector(3 downto 0);
	signal r_mult											:	std_logic_vector(7 downto 0);
	signal cout, boutt										: 	std_logic;
	
	begin
		andd	:	P01and_4b	    port map(X, Y, r_and);
		orr	    :	P02or_4b		port map(X, Y, r_or );
		nott	:	P03not_4b	    port map(X,    r_not);
		xorr	:	P04xor_4b	    port map(X, Y, r_xor);
		sum	    :	P06adder4bit    port map(X, Y,   '0', cout , r_sum);
		sub	    :	P07sub4bit	    port map(X, Y,   '0', boutt, r_sub);
		mult    :	P08mult4bit	    port map(X, Y, r_mult);
		cop2	:	P09compl2	    port map(X,    r_cp2);
        BOUT    <=  boutt;
            
		process(F, r_and, r_or, r_not, r_xor, r_sum, r_sub, r_cp2, r_mult)
			begin
				
				case F is	
					when "000"  => S <= "0000" & r_and;	                        -- X and Y
					when "001"  => S <= "0000" & r_or;	                        -- X or  Y
					when "010"  => S <= "0000" & r_not;	                        -- not X
					when "011"  => S <= "0000" & r_xor;	                        -- X xor Y
					when "100"  => S <= "000"  & cout & r_sum;	                -- X + Y
					When "101"  => S <= boutt & boutt & boutt & boutt & r_sub;  -- X - Y
					when "110"  => S <= r_mult;			                        -- X * Y
					when "111"  => S <= "0000" & r_cp2;	                        -- cp2 X
					when others => S <= "ZZZZZZZZ";
				end case;
		end process;

end rtl;
