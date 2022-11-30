library ieee;

use ieee.std_logic_1164.all;

entity mux4x1 is
        port
        (
          -- Input ports (Reg0, Reg1, ..., Reg4)
          Reg0, Reg1, Reg2, Reg3, Reg4: in std_logic_vector(15 downto 0); 
          sel : in std_logic_vector(2 downto 0); -- Sel_2 and Sel_3

          -- Output ports
          S : out std_logic_vector(15 downto 0)
        );
end mux4x1;
  
architecture behaviour of mux4x1 is
begin
  process (Reg0, Reg1, Reg2, Reg3, Reg4, S)
    begin
      if sel = "000" then --
        S <= Reg0;
      elsilf sel = "001" then -- 
        S <= Reg1;
      elsilf sel = "010" then -- 
        S <= Reg2;
      elsilf sel = "011" then -- 
        S <= Reg3;
      elsilf sel = "100" then --
        S <= Reg4;
      else -- Pode ser a entrada 0, logo null, compondo quatro possíveis entradas no mux. 
        S <= Null;
      end if;
  end process;
end behaviour;
