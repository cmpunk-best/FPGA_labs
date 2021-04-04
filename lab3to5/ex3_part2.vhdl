library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex3_part2 is
    port (
        a,b:in std_logic_vector(1 downto 0);
        greaterthan,equal,lessthan:out std_logic
    );
end entity ex3_part2;

architecture ex3_part2_arch of ex3_part2 is

    signal ab:std_logic_vector(3 downto 0);

begin
ab<=(a&b);
behavior : process( ab )
begin
    case ab is 
        when "0000" | "1111" | "0101" | "1010"  => equal<='1';lessthan<='0';greaterthan<='0';
        when "0011"|"0111"|"0001"|"0010"|"0110"|"1011" => lessthan<='1';greaterthan<='0';equal<='0';
        when "1100" |"1101"|"0100"|"1000"|"1001"|"1110"=> greaterthan<='1';equal<='0'; lessthan<='0';
        when others=>equal<='0'; lessthan<='0';greaterthan<='0';
    end case;
end process ; 
end ex3_part2_arch ; -- ex3_part2_arch