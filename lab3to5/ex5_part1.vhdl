library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex5_part1 is
    port (
        a:in std_logic_vector(3 downto 0);
        diff:out std_logic_vector(3 downto 0);
    );
end entity ex5_part1;

architecture ex5_part1_arch of ex5_part1 is
component ex5_part1_fulladder is 
port(
    a,b,cin:in std_logic;
    cout,sum:out std_logic;
);
end component;

signal b:std_logic_vector(3 downto 0):=(0=>'1',(others=>'0'));
signal cout:std_logic_vector(3 downto 0):=(0=>'1',(others=>'0'));
begin
b<=not b;
for i in 0 to 3 generate:
u1:ex5_part1_fulladder port map (a=>a(i),b=>b(i),cin=>cout(i),cout=>cout(i+1),sum=>diff(i));
end generate;
    
end architecture ex5_part1_arch;
