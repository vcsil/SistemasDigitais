library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity P12decodificador7seg is port 
    (
        data_in  :  in  std_logic_vector(3 downto 0); --V_SW   : in std_logic_vector(3 downto 0);
        data_out :  out std_logic_vector(6 downto 0)  --G_HEX0 : out std_logic_vector(6 downto 0)
);
end P12decodificador7seg;

architecture decode of P12decodificador7seg is
begin 
   with data_in select 
		data_out <= "1000000" when "0000",--0
					"1111001" when "0001",--1 
					"0100100" when "0010",--2 
					"0110000" when "0011",--3    --  ---0---
					"0011001" when "0100",--4    --  |     |
					"0010010" when "0101",--5    --  5     1
					"0000010" when "0110",--6    --  |     |
					"1111000" when "0111",--7    --  ---6---
					"0000000" when "1000",--8    --  |     |
					"0011000" when "1001",--9    --  4     2
					"0001000" when "1010",--A    --  |     |
					"0000011" when "1011",--B    --  ---3---
					"1000110" when "1100",--C
					"0100001" when "1101",--D
					"0000110" when "1110",--E
					"0001110" when "1111",--F
					"1111111" when others;
end decode;