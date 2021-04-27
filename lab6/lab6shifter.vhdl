library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab6shifter is 
port(
denorm:in std_logic_vector(15 downto 0);
sel:in std_logic_vector(3 downto 0);
shiftednorm:out std_logic_vector(15 downto 0)
);
end entity;

architecture arch_lab6shifter of lab6shifter is 
signal zero:std_logic_vector(15 downto 0):=(others=>'0');

begin 
shifting_pro:process(sel,denorm)
begin
case sel is
when x"f" => shiftednorm<=denorm;
when x"e" => shiftednorm<=denorm(14 downto 0)&zero(0);
when x"d" => shiftednorm<=denorm(13 downto 0)&zero(1 downto 0);
when x"c" => shiftednorm<=denorm(12 downto 0)&zero(2 downto 0);
when x"b" => shiftednorm<=denorm(11 downto 0)&zero(3 downto 0);
when x"a" => shiftednorm<=denorm(10 downto 0)&zero(4 downto 0);
when x"9" => shiftednorm<=denorm(9 downto 0)&zero(5 downto 0);
when x"8" => shiftednorm<=denorm(8 downto 0)&zero(6 downto 0);
when "0111" => shiftednorm<=denorm(7 downto 0)&zero(7 downto 0);
when "0110" => shiftednorm<=denorm(6 downto 0)&zero(8 downto 0);
when "0101" => shiftednorm<=denorm(5 downto 0)&zero(9 downto 0);
when "0100" => shiftednorm<=denorm(4 downto 0)&zero(10 downto 0);
when "0011" => shiftednorm<=denorm(3 downto 0)&zero(11 downto 0);
when "0010" => shiftednorm<=denorm(2 downto 0)&zero(12 downto 0);
when "0001" => shiftednorm<=denorm(1 downto 0)&zero(13 downto 0);
when "0000" => shiftednorm<=denorm(0)&zero(14 downto 0);
when others=> shiftednorm<=zero;
end case;
end process;
end arch_lab6shifter;