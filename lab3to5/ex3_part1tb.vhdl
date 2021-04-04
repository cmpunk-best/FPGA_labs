library IEEE;
use IEEE.std_logic_1164.all;use IEEE.numeric_std.all;

entity ex3_part1tb is
end entity ex3_part1tb;

architecture ex3_part1tb_arch of ex3_part1tb is
component ex3_part1 is 
port(
    a,b:in std_logic_vector(1 downto 0);
    greaterthan,equal,lessthan:out std_logic
);
end component;
signal a,b:std_logic_vector(1 downto 0):=(others=>'0');
signal greaterthan,equal,lessthan: std_logic;
begin
--device under test instantiation
dut1:ex3_part1 port map (a=>a,b=>b,greaterthan=>greaterthan,equal=>equal,lessthan=>lessthan);
--process stimulus
stimulus : process 
begin
wait for 100 ns;
for i in 0 to 3 loop
    for j in 0 to 3 loop
        a<=std_logic_vector(to_unsigned(i,2));
        b<=std_logic_vector(to_unsigned(j,2));
        wait for 10 ns;
    end loop;
end loop;
wait;
end process ; -- stimulus
end architecture ex3_part1tb_arch;