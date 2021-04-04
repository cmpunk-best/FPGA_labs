library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex4_part2 is
    port (
        a,b:in unsigned(3 downto 0);
        greaterthan:out std_logic
    );
end entity ex4_part2;

architecture ex4_part2_arch of ex4_part2 is


begin
greaterthan<=(a(3) and not(b(3))) 
            or ((a(2) and not(b(2))) and (a(3) xnor b(3)))
            or ((a(1) and not(b(1))) and (a(3) xnor b(3)) and (a(2) xnor b(2)) )
            or ((a(0) and not(b(0))) and (a(3) xnor b(3)) and(a(2) xnor b(2)) and (a(1) xnor b(1)));
end ex4_part2_arch ; -- ex4_part2_arch