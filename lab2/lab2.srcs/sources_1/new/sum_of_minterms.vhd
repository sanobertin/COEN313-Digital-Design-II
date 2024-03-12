library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- use and3.all;
entity sum_of_minterms is
port(a, b,c : in std_logic;
output: out std_logic);
end sum_of_minterms;

architecture rtl of sum_of_minterms is 
component and3  
port(in1: in std_logic;
in2: in std_logic;
in3: in std_logic;
output3: out std_logic  );
end component; 

component or3  -- 3 input or gate
port(inin1: inout std_logic;
inin2: inout std_logic;
inin3: inout std_logic;
or3_out: out std_logic);
end component; 

-- for FA_output: or3 use entity work.full_adder(structural);
for c1, c2, c3: and3 use entity work.and3(rtl);
for outout: or3 use entity work.or3(rtl);
signal out1, out2, out3, not_a, not_b, outputoutput: std_logic;
begin
not_a <= not a;
not_b <= not b;
--c1: and3 port map ((not a)>= in1, (not b)>= in2, c>=in3, out1 >= output3);
--c2: and3 port map ((not a)>= in1, b>= in2, c>=in3, out2 >= output3);
--c3: and3 port map (a>= in1, b>= in2, c>=in3, out3 >= output3);
c1 : and3 port map (not_a, not_b, c, out1);
c2 : and3 port map (not_a, b, c, out2);
c3 : and3 port map (a, b, c, out3);
outout: or3 port map ( out1,  out2,  out3, outputoutput);
-- outout: or3 port map (out1, out2, out3, outputoutput);
--FA_output: or3 port map (out1, out2, out3, output_sum_out, output_carry_out);
process(a,b,c, out1, out2, out3, outputoutput) is
    begin
    output <= outputoutput;
    end process;
end rtl;
-- end here



















