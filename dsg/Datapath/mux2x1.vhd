library ieee;

use ieee.std_logic_1164.all;

entity mux2x1 is
        port
        (
          -- Input ports
          A, B : in std_logic_vector(15 downto 0);
          sel : in std_logic; -- Sel_5

          -- Output ports
          S : out std_logic_vector(15 downto 0)
        );
end mux2x1;
  
architecture behaviour of mux2x1 is
begin
  process (A, B, S)
    begin
      if sel = ‘0’ then
        S <= A;
      else
        s <= B;
      end if;
  end process;
end behaviour;
