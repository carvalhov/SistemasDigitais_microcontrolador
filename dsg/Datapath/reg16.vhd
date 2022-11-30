library IEEE;
use IEEE.std_logic_1164.all;

entity Reg16 is

port(

		-- Input Ports 
   clk     : in std_logic;
   ld      : in std_logic; -- (ld0, ld1, ld2, ld3, ld4)
   X       : in std_logic_vector(15 downto 0);       
		-- Output Ports
   Y:     out std_logic_vector(15 downto 0)

);
end Reg16;
	
architecture behavioral of Reg16 is
begin
 process(clk, ld)
  begin
   if(rising_edge(clk) and ld = '1') then
     Y <= X;
   else
     Y <= Y; -- Corrigir no cyclone II 
   end if;
  end process;
end behavioral;
