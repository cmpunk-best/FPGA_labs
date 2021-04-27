library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity normfloattb is
--  Port ( );
end normfloattb;

architecture Behavioral of normfloattb is
component normfloat is
port(
    denorm:in std_logic_vector(15 downto 0);
    norm:out std_logic_vector(15 downto 0);
    clk,reset:in std_logic
);
end component;
signal denorm:std_logic_vector(15 downto 0):=(others=>'0');
signal norm:std_logic_vector(15 downto 0);
signal clk,reset:std_logic:='0';
constant period:time:=50 ns;
constant setup:time:=5 ns;
begin
uut:normfloat port map(denorm=>denorm,norm=>norm,clk=>clk,reset=>reset);

clk_pro:process
begin
wait for 100ns;
clk_loop:loop
clk<='0';
wait for period/2;
clk<='1';
wait for period/2;
end loop;
end process;

din_pro:process
begin
wait for 100ns;
reset<='1';
wait for period/2-setup;
reset<='0';
wait for 6*period;
for i in 0 to 1024 loop
denorm<=std_logic_vector(to_unsigned(i,16));
wait for period;
end loop;
wait for 256*period;
wait;
end process;