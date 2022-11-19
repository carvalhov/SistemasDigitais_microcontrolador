library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port
 (
	  -- Input ports
    A, B    : in  STD_LOGIC_VECTOR(15 downto 0);
    ALU_Sel	: in std_logic_vector(4 downto 0);
		
    -- Output ports
    ALU_OUT	: out STD_LOGIC_VECTOR(15 downto 0)
);
end ALU;

architecture Behavioral of ALU is  

 -- ADD, SUB, AND, OR, XOR, SHL, SHR
 -- ADDI, SUBI, ANDI, ORI, XORI
 -- LD, ST
 -- JEQ, JLT
 -- JMP, CALL, RET
 -- IN, OUT
 begin
    process(A, B, ALU_Sel)
		  begin
			case(ALU_Sel) is
			  when "00000" => -- ADD
				 ALU_OUT <=  std_logic_vector(unsigned(A) + unsigned(B)) ;
				
			  when "00001" => -- SUB

				 ALU_OUT <=  std_logic_vector(unsigned(A) - unsigned(B)) ;
			  when "00010" => -- AND

         ALU_OUT <= A AND B ;
			 
			  when "00011" => -- Port OR
				 ALU_OUT <= A OR B ;
				 
			  when "00100" => -- Port XOR
				 ALU_OUT <= A XOR B ;

			  when "00101" => -- Component SHL (Shift Left)
				 ALU_OUT <= ;
				
			  when "00110" => -- Component SHR (Shift Right)
				 ALU_OUT <= ;
				
			  when "00111" => -- Componente subtrator A - B 
				 ALU_OUT <=  std_logic_vector(unsigned(A) - unsigned(B)) ;
			 
			  when "01000" => -- Port XOR
				 ALU_OUT <= A XOR B ;
				 
			  when "01001" => -- Componente subtrator B - A 
				 ALU_OUT <=  std_logic_vector(unsigned(B) - unsigned(A)) ;

			  when "01010" => -- Port AND
				 ALU_OUT <= A AND B ;
				
			  when "01011" => -- Componente Somador
				 ALU_OUT <=  std_logic_vector(unsigned(A) + unsigned(B)) ;
				
			  when "01100" => -- Componente subtrator A - B 
				 ALU_OUT <=  std_logic_vector(unsigned(A) - unsigned(B)) ;
			 
			  when "01101" => -- Port XOR
				 ALU_OUT <= A XOR B ;
				 
			  when "01111" => -- Componente subtrator B - A 
				 ALU_OUT <=  std_logic_vector(unsigned(B) - unsigned(A)) ;

			  when "10000" => -- Port AND
				 ALU_OUT <= A AND B ;
				
			  when "10001" => -- Componente Somador
				 ALU_OUT <=  std_logic_vector(unsigned(A) + unsigned(B)) ;
				
			  when "10010" => -- Componente subtrator A - B 
				 ALU_OUT <=  std_logic_vector(unsigned(A) - unsigned(B)) ;
			 
			  when "10011" => -- Port XOR
				 ALU_OUT <= A XOR B ;
				 
			  when "10100" => -- Componente subtrator B - A 
				 ALU_OUT <=  std_logic_vector(unsigned(B) - unsigned(A)) ;
					 
			  when others => ALU_Result <= NULL; 
			  end case;
   end process;
end Behavioral; 
