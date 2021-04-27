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
component lab6prior_imp2 is
    port(
    denorm:in std_logic_vector(15 downto 0);
    posone:out std_logic_vector(3 downto 0)
    );
end component;
component lab6shifter is
    port(
    denorm:in std_logic_vector(15 downto 0);
    sel:in std_logic_vector(3 downto 0);
    shiftednorm:out std_logic_vector(15 downto 0)
    );
end component;

signal posone:std_logic_vector(3 downto 0);
begin 
--using priorit encoder for knowing leading '1' in denorm and store in posone
prior:lab6prior_imp2 port map(denorm=>denorm,posone=>posone);
--combinational ckt for shifting

mux_shift_ckt:lab6shifter port map(denorm=>denorm,sel=>posone,shiftednorm=>q);

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