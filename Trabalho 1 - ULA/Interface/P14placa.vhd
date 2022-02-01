library ieee;
use ieee.std_logic_1164.all;

entity P14placa is port 
    (
        CLOCK_50                        : in  std_logic; 
		V_BT                            : in  std_logic_vector(1  downto 0);  -- V_BT(0)=reset V_BT(1)=selecao (carrega A e B simultaneamente)
		V_SW	                        : in  std_logic_vector(17 downto 9);  -- switches A:17ate14 / B:12ate9
		G_HEX7, G_HEX6                  : out std_logic_vector(6  downto 0);  -- display7seg -> entradaA 
		G_HEX5, G_HEX4                  : out std_logic_vector(6  downto 0);  -- display7seg -> entradaB
		G_HEX3, G_HEX2, G_HEX1, G_HEX0  : out std_logic_vector(6  downto 0);  -- display7seg -> resultado
		G_LEDG                          : out std_logic_vector(0  downto 0);  -- borrow out
		G_LEDR                          : out std_logic_vector(2  downto 0)   -- redLED mostra operaçao atual
    );
end P14placa;

architecture behav of P14placa is

	component P11interface port 
        (
            clk, reset, botaoSEL : in  std_logic;                    -- botaoSEL carrega A e B simultaneamente
			entradaA, entradaB   : in  std_logic_vector(3 downto 0); -- switches 
			resultadoDISPLAY	 : out std_logic_vector(7 downto 0); -- display pra A e B tbm
			carry_borrowLED      : out std_logic;
			operacaoLED          : out std_logic_vector(2 downto 0);
			saidaA, saidaB		 : out std_logic_vector(3 downto 0)  -- saidas para display A e display B
		);
	end component;
	
	component P12decodificador7seg port
        (
            data_in     : in  std_logic_vector(3 downto 0); --V_SW   : in  std_logic_vector(3 downto 0);
			data_out    : out std_logic_vector(6 downto 0)  --G_HEX0 : out std_logic_vector(6 downto 0)
		);
	end component;
	
	component P13divisorFREQ port 
        (
            clk     : in  std_logic;
			reset	: in  std_logic;
			saida   : out std_logic
		);
	end component;
		
	signal clk1seg, bout                            : std_logic;
	signal op                                       : std_logic_vector(2 downto 0);
	signal dpA, dpB, dispA0, dispA1, dispB0, dispB1 : std_logic_vector(3 downto 0); -- 
	signal resultado                                : std_logic_vector(7 downto 0) := "00000000";
	signal results0, results1, results2, results3   : std_logic_vector(3 downto 0);
	
    begin

        DIVfreq: P13divisorFREQ port map(CLOCK_50, V_BT(0), clk1seg); -- entradas: clock 50 Mhz, Botao de Reset, saida: clock de 1 seg
        
        ITERF  : P11interface port map( clk              => clk1seg,
                                        reset            => V_BT(0),
                                        botaoSEL         => V_BT(1), -- entrada: clock de 1 seg, reset, botao de seleção 
                                        entradaA         => V_SW(17 downto 14),
                                        entradaB         => V_SW(12 downto  9), -- entrada: A,B
                                        resultadoDISPLAY => resultado,
                                        carry_borrowLED  => bout,
                                        operacaoLED      => op, 
                                        saidaA           => dpA, 
                                        saidaB           => dpB);  -- saida: result,carry/borrowOUT,operacao
	
        DECOD0  : P12decodificador7seg port map(dispA0, G_HEX6);    --entrada: A, saida: display 7 seg entrada A
        DECOD1  : P12decodificador7seg port map(dispA1, G_HEX7);    --entrada: B, saida: display 7 seg entrada B
        DECOD2  : P12decodificador7seg port map(dispB0, G_HEX4);
        DECOD3  : P12decodificador7seg port map(dispB1, G_HEX5);
        
        DECOD4  : P12decodificador7seg port map(results0, G_HEX0);
        DECOD5  : P12decodificador7seg port map(results1, G_HEX1);
        DECOD6  : P12decodificador7seg port map(results2, G_HEX2);
        DECOD7  : P12decodificador7seg port map(results3, G_HEX3);
        
        G_LEDR <= op;
        G_LEDG(0) <= not(bout);
	    
        process (resultado)
            begin
                if (op(2) = '0') then
                    results0  <= "000" & resultado(0);
                    results1  <= "000" & resultado(1);
                    results2  <= "000" & resultado(2);
                    results3  <= "000" & resultado(3);
                else
                    results0  <= resultado(3 downto 0);
                    results1  <= resultado(7 downto 4);
                    results2  <= "0000";
                    results3  <= "0000";
                end if;
        end process;
        
        process (dpA)
            begin
                if (dpA = "1010") then
                    dispA0  <= "0000";
                    dispA1  <= "0001";
                elsif (dpA = "1011") then
                    dispA0  <= "0001";
                    dispA1  <= "0001";
                elsif (dpA = "1100") then
                    dispA0  <= "0010";
                    dispA1  <= "0001";
                elsif (dpA = "1101") then
                    dispA0  <= "0011";
                    dispA1  <= "0001";
                elsif (dpA = "1110") then
                    dispA0  <= "0100";
                    dispA1  <= "0001";
                elsif (dpA = "1111") then
                    dispA0  <= "0101";
                    dispA1  <= "0001";
                else
                    dispA0  <= dpA;
                    dispA1  <= "0000";
                end if;
        end process;
        
        process (dpB)
            begin
                if (dpB = "1010") then
                    dispB0  <= "0000";
                    dispB1  <= "0001";
                elsif (dpB = "1011") then
                    dispB0  <= "0001";
                    dispB1  <= "0001";
                elsif (dpB = "1100") then
                    dispB0  <= "0010";
                    dispB1  <= "0001";
                elsif (dpB = "1101") then
                    dispB0  <= "0011";
                    dispB1  <= "0001";
                elsif (dpB = "1110") then
                    dispB0  <= "0100";
                    dispB1  <= "0001";
                elsif (dpB = "1111") then
                    dispB0  <= "0101";
                    dispB1  <= "0001";
                else
                    dispB0  <= dpB;
                    dispB1  <= "0000";
                end if;
        end process;
                    

end behav;