
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex5_part2tb is
end entity ex5_part2tb;

architecture ex5_part2tb_arch of ex5_part2tb is
component ex5_part2 is 
port(
    a:in std_logic_vector(3 downto 0);
    diff:out std_logic_vector(3 downto 0)
);
end component;
signal a,diff:std_logic_vector(3 downto 0):=(others=>'0');

begin
dut1:ex5_part2 port map (a=>a,diff=>diff);
--stimulus process
stimulus : process
begin
wait for 100 ns;
for i in 0 to 15 loop
    a<=std_logic_vector(to_unsigned(i,4));
    wait for 10 ns;
end loop;

wait;
end process ; 