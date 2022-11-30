
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador_16b is
port (
      -- Port inputs
      A, B    : in std_logic_vector(15 downto 0); 
      -- Port Output
      S_Eq    : out std_logic; -- Output = 1 when A = B else 0 (Equal - Eq)
      S_Lt    : out std_logic -- Output = 1 when A < B else 0 (Less than - Lt)
 );
end comparador_16b;
  
architecture Behavioral of comparador_16b is
begin
   process(A, B)
			begin
            if (A = B) then  -- A equal B;   
                S_Lt <= '0';
                S_Eq <= '1';
            elsif (A < B) then -- AlB: A lesser than B.
                S_Lt <= '1';
                S_Eq <= '0';
            else  -- AgB: A maior do que B/ A larger than B
                S_Lt <= '0';
                S_Eq <= '0'; 
            END IF;
    end process;
end Behavioral;
