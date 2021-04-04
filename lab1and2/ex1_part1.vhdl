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
signal sel_sig:std_logic_vector(3 downto 0);
signal out_sig:std_logic_vector(3 downto 0);
begin
sel_sig(0)<=(not sel(0)) and (not sel(1));
sel_sig(1)<=( sel(0)) and (not sel(1));
sel_sig(2)<=(not sel(0)) and ( sel(1));
sel_sig(3)<=( sel(0)) and ( sel(1));
generate1:for i in 0 to 3 generate
out1(i)<=A(i) and sel_sig(0);
out2(i)<=A(i) and sel_sig(1);
out3(i)<=A(i) and sel_sig(2);
out4(i)<=A(i) and sel_sig(3);
end generate1;


end arch_demux4bit ; -- arch_demux4bit
