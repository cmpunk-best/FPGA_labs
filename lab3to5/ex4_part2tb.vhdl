library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex4_part2tb is
end entity ex4_part2tb;

architecture ex4_part2tb_arch of ex4_part2tb is
component ex4_part2 is 
port(
    a,b:in unsigned(3 downto 0);
    greaterthan:out std_logic
);
end component;   
signal a,b: unsigned(3 downto 0);
signal greaterthan:std_logic;
begin
    
dut1:ex4_part2 port map (a=>a,b=>b,greaterthan=>greaterthan);
--stimulus process
stimulus : process
begin
    wait for 100 ns;
    for i in 0 to 15 loop 
        for j in 0 to 15 loop
            a<=to_unsigned(i,4);
            b<=to_unsigned(j,4); 
            wait for 10 ns;
        end loop;
    end loop;
    wait;
end process ; -- stimulus
    
end architecture ex4_part2tb_arch;