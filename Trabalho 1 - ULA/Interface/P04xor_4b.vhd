library ieee;
use ieee.std_logic_1164.all;

entity P04xor_4b is port
	( 
		X, Y : in  std_logic_vector(3 downto 0); 
		S    : out std_logic_vector(3 downto 0)
	); 
end P04xor_4b; 

architecture xor_4b_behav of P04xor_4b is 
	begin 
		xorr: for i in 0 to 3 generate 
			S(i) <=  X(i) xor Y(i); 
            
		end generate xorr; 
end xor_4b_behav;