library ieee;
use ieee.std_logic_1164.all;

entity P01and_4b is port
	( 
        X, Y : in  std_logic_vector(3 downto 0); 
        S 	 : out std_logic_vector(3 downto 0)
    ); 
end P01and_4b; 
 
architecture and_4b_behav of P01and_4b is 
	begin      
		andd: for i in 0 to 3 generate 
			S(i) <=  X(i) and Y(i); 
			
		end generate andd; 
end and_4b_behav;