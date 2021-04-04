library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity ex5_part2 is
    port (
        a:in std_logic_vector(3 downto 0);
        diff : out std_logic_vector(3 downto 0)
    );
end entity ex5_part2;

architecture ex5_part2_arch of ex5_part2 is
constant decrement:integer:=1;
begin

diff<=a-std_logic_vector(to_unsigned(decrement,4));
    
end architecture ex5_part2_arch;