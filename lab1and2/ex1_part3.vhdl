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
demuxpro: process(A,sel) 
begin
   case( sel ) is
   
    when "00" =>out1<=A;out2<="0000",
                  out3<="0000",
                  out4<="0000";
    when "01" =>out2<=A;out1<="0000",
                  out3<="0000",
                  out4<="0000";
    when "10" =>out3<=A;out2<="0000",
                  out1<="0000",
                  out4<="0000";
    when "11" =>out4<=A;out2<="0000",
                  out3<="0000",
                  out1<="0000";
   
    when others =>out1<="0000",
                  out2<="0000",
                  out3<="0000",
                  out4<="0000";
   
   end case ; 
end process ; --demuxpro

end arch_demux4bit ; -- arch_demux4bit
