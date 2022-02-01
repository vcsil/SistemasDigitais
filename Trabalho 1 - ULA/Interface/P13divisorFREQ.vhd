library ieee;
use ieee.std_logic_1164.all;

entity P13divisorFREQ is port 
    (
        clk     : in  std_logic;
        reset   : in  std_logic;
        saida   : out std_logic
    );
end P13divisorFREQ;

architecture display of P13divisorFREQ is
    
    signal ck : std_logic;
    
    begin
        saida <= ck;
    
    divisor2: process (clk,reset)
        
        variable cont  : natural range 0 to 25000000 := 0;
            
        begin
            if (reset='0') then    
                ck <='0';
                
            elsif (clk'event) and (clk='1') then
                cont := cont +1;
					 
                if cont=25000000 then
                    ck   <= NOT ck;
                    cont := 0;
                end if;
            end if;
    end process divisor2;
end display;