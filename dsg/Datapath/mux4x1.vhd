library ieee;

use ieee.std_logic_1164.all;

entity mux4x1 is
        port
        (
          -- Input ports (ALU_out, RegIn, input = 0 e input[memória de dados])
          A, B, C: in std_logic_vector(15 downto 0); 
          sel : in std_logic_vector(1 downto 0); -- Sel_1

          -- Output ports
          S : out std_logic_vector(15 downto 0)
        );
end mux4x1;
  
architecture behaviour of mux4x1 is
begin
  process (A, B, C, S)
    begin
      if sel = "00" then -- pode ser regIn
        S <= A;
      elsilf sel = "01" then -- pode ser memória de dados
        S <= B;
      elsilf sel = "10" then -- pode ser a saída da Alu (ALU_out)
        S <= C;
      else -- Pode ser a entrada 0, logo null, compondo quatro possíveis entradas no mux. 
        S <= Null;
      end if;
  end process;
end behaviour;
