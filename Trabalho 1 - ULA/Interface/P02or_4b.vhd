library ieee;
use ieee.std_logic_1164.all;

entity P02or_4b is port
	( 
		X, Y : in  std_logic_vector(3 downto 0); 
		S    : out std_logic_vector(3 downto 0)
	); 
end P02or_4b;
 
architecture or_4b_behav of P02or_4b is 
	begin 
		orr:  for i in 0 to 3 generate 
			S(i) <=  X(i) or Y(i);
			
		end generate orr; 
end or_4b_behav;