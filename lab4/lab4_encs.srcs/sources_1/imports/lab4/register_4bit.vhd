library ieee;
library work;
use ieee.std_logic_1164.all;

entity Register_4bit is
    port (
        register_clk : in std_logic;
        register_reset : in std_logic;
        register_din : in std_logic_vector(3 downto 0);
        register_dout : out std_logic_vector(3 downto 0)
    );
end entity Register_4bit;

architecture behav of Register_4bit is
    signal reg : std_logic_vector(3 downto 0);
begin
    process (register_clk, register_reset)
    begin
        if register_reset = '1' then -- reset to 1000
            reg(3) <= '1'; reg <= (others => '0'); -- reset to 1000
        elsif rising_edge(register_clk) then
            reg <= register_din;
        end if;
    end process;
-- NAME	/nfs/home/b/b_mihigo/lab4_encs/lab4_encs.srcs/sources_1/imports/lab4/registers_min_max.vhd 
    register_dout <= reg;
end architecture behav;
