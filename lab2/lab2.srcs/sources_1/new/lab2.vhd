library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- use and3.all;


entity sum_of_minterms is
  port (
  min1, min2, min3,min4, min5, min6, min7, min8, min9: in std_logic;
  sum:out std_logic);
end sum_of_minterms;
-- for FA1, FA2:full_adder use entity.work.full_adder(structural);
-- FA1: full_adder port map (carry_in => A, input1 => B, input2 => C); 
--for and3_1, and3_2, and3_3: and3 use work.and3(structure);

--architecture structural of sum_of_minterms is
-- for minterm1, minterm2, minterm3 use entity and3(structure);
signal AA, BB, CC: std_logic;
begin
    minterm1: entity work.and3(structure) port map ( in1 => min1, in2 => min3, in3 => min3, output3 => AA);
    minterm2: entity work.and3(structure) port map ( in1 => min4, in2 => min5, in3 => min6, output3 => BB);
    minterm3: entity work.and3(structure) port map ( in1 => min7, in2 => min8, in3 => min9, output3 => CC); 
    sum <= AA or BB;

end structural;
