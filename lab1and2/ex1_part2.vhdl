library IEEE;
use IEEE.std_logic_1164.all;

entity demux4bit is
  port (
    A:in std_logic_vector(3 downto 0);
    sel:in std_logic_vector(1 downto 0);
    out1,out2,out3,out4:out std_logic_vector(3 downto 0)
  ) ;
end demux4bit;

architecture arch_demux4bit of demux4bit is
begin
with sel select
out1<=A when "00",
        "0000" when others;

with sel select
out2<=A when "01",
        "0000" when others;

with sel select
out3<=A when "10",
        "0000" when others;
with sel select
out4<=A when "11",
        "0000" when others;
end arch_demux4bit ; -- arch_demux4bit