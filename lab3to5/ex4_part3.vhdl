library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex4_part3 is
    port (
        a,b:in unsigned(3 downto 0);
        greaterthan:out std_logic
    );
end entity ex4_part3;

architecture ex4_part3_arch of ex4_part3 is
    
begin
greaterprocess:process(a,b)
begin
if(a>b) then greaterthan<='1';
else greaterthan<='0';
end if;
end process;
    
end architecture ex4_part3_arch;