library ieee;
use ieee.std_logic_1164.all;

entity P05fulladder is port
	( 
		X, Y : in  std_logic; 
		Cin  : in  std_logic; 
		S    : out std_logic; 
		Cout : out std_logic
	); 
end P05fulladder; 

architecture fa_behav of P05fulladder is 
	begin  
		S    <= (X xor Y) xor cin; 
		Cout <= (X and Y) or ((X xor Y) and Cin); 

end fa_behav; 