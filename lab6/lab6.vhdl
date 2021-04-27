library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity normfloat is 
port(
    denorm:in std_logic_vector(15 downto 0);
    norm:out std_logic_vector(15 downto 0);
    clk,reset:in std_logic
);
end normfloat;

architecture arch_normfloat of normfloat is 
signal q:std_logic_vector(15 downto 0):=(others=>'0');
component lab6priorencoder is
    port(
    denorm:in std_logic_vector(15 downto 0);
    posone:out std_logic_vector(3 downto 0)
    );
end component;
signal posone:std_logic_vector(3 downto 0);
begin 
--using priorit encoder for knowing leading '1' in denorm and store in posone
prior:lab6priorencoder port map(denorm=>denorm,posone=>posone);
--process for shifting

q<=std_logic_vector(unsigned(denorm) sll (15-to_integer(unsigned(posone))));

--giving this combinational ckt to ff
seq_ckt:process(clk,reset)
begin
if(reset='1') then
norm<=(others=>'0');
elsif(clk'event and clk='1') then
norm<=q;
end if;
end process;
--normalizing the data

end arch_normfloat;
