library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex5_part1_fulladder is
    port (
        a,b,cin:in std_logic;
        cout,sum:out std_logic;
    );
end entity ex5_part1_fulladder;

architecture ex5_fulladder_arch of ex5_part1_fulladder is
    
begin

sum<=a xor b xor cin;
cout<=(a and b) or ((a xor b) and cin);    
end architecture ex5_fulladder_arch;