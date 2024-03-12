library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- use and3.all;
entity or3 is 
    port(inin1, inin2, inin3: inout std_logic;
    or3_out: out std_logic);
end or3; 

architecture rtl of or3 is 
begin
process(inin1, inin2, inin3) is
begin 
    or3_out <= (inin1 or inin2 or inin3);
    end process;
end rtl;
-- end here