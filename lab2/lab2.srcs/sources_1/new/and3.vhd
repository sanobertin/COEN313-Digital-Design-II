library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- use and3.all;
entity and3 is 
    port(in1, in2, in3: in std_logic;
    output3: out std_logic);
end and3; 

architecture rtl of and3 is 
begin
process(in1, in2, in3) is
begin 
    output3 <= (in1 and in2 and in3);
    end process;
end rtl;
-- end here