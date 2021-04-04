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
    
    out1<=
            "01" when (A="001") else
            "10" when (A="01-") else
            "11" when (A="1--") else
            "00";
    
end architecture arch_priorencoder;