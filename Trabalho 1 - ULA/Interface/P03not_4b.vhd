library ieee;
use ieee.std_logic_1164.all;

entity P03not_4b is port
	( 
		X    : in  std_logic_vector(3 downto 0); 
		S    : out std_logic_vector(3 downto 0)
	); 
end P03not_4b;
 
architecture not_4b_behav of P03not_4b is 
	begin 
		nott:   for i in 0 to 3 generate 
			S(i) <= not(X(i));
			
		end generate nott; 
end not_4b_behav;