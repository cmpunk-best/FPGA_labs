library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex3_part1 is
    port (
        a,b:in std_logic_vector(1 downto 0);
        greaterthan,equal,lessthan:out std_logic
    );
end entity ex3_part1;

architecture arch_ex3_part1 of ex3_part1 is
signal ab:std_logic_vector(3 downto 0);
begin
ab<=a&b;
with ab select
greaterthan <= '1' when "1100"|"1101"|"0100"|"1000"|"1001"|"1110",
                '0' when others;
with ab select
equal <= '1' when "0000" | "1111" | "0101" | "1010",
        '0' when others;
               
with ab select
lessthan <= '1' when "0011"|"0111"|"0001"|"0010"|"0110"|"1011",
    '0' when others;
    
end architecture arch_ex3_part1;