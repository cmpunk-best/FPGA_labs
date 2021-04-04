library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex4_part1 is
    port (
        a,b:in std_logic_vector(3 downto 0);
        greaterthan:out std_logic
    );
end entity ex4_part1;

architecture ex4_part1_arch of ex4_part1 is
    
begin
greaterthan<='1' when (a>b) else,
            '0';
    
end architecture ex4_part1_arch;