library IEEE;
use IEEE.std_logic_1164.all;

entity priorencoder is
    port (
        A:in std_logic_vector(2 downto 0);
        out1:out std_logic_vector(1 downto 0);
    );
end entity priorencoder;

architecture arch_priorencoder of priorencoder is
    
begin
    
   encode_pri : process( A )
   begin
       if (A="001") then
           out1<="01";
       elsif (A="01-") then
           out1<="10"
       elsif (A="1--") then
           out1<="11"
       else
           out1<="00"
       
       end if;
   end process ; 
end architecture arch_priorencoder;