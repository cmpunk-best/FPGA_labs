library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity lab6prior_imp2 is
port(
denorm:in std_logic_vector(15  downto 0);
posone:out std_logic_vector(3 downto 0)
);
end lab6prior_imp2;

architecture arch_lab6priorencoder of lab6prior_imp2 is

begin
posone<= "1111" when denorm(15)='1' else
         "1110" when denorm(14)='1' else
         "1101" when denorm(13)='1' else
         "1100" when denorm(12)='1' else
         "1011" when denorm(11)='1' else
         "1010" when denorm(10)='1' else
         "1001" when denorm(9)='1' else
         "1000" when denorm(8)='1' else
         "0111" when denorm(7)='1' else
         "0110" when denorm(6)='1' else
         "0101" when denorm(5)='1' else
         "0100" when denorm(4)='1' else
         "0011" when denorm(3)='1' else
         "0010" when denorm(2)='1' else
         "0001" when denorm(1)='1' else
         "0000" when denorm(0)='1' else
         "0000";
         
 
end arch_lab6priorencoder;