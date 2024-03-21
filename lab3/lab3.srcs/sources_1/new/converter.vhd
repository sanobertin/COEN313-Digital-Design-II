
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity converter is
    port(input_data: in std_logic_vector(3 downto 0); 
    output_data: out std_logic_vector(3 downto 0)
    );
end converter;

architecture structure of converter is
--signal sign_input: std_logic;
begin
process(input_data)
    variable temp : std_logic_vector(2 downto 0);
    variable  output_bits: std_logic_vector(2 downto 0);
            begin
                --sign_input <= input_data(3); --left most bit if the input
                -- input_bits<=  input_data(2 downto 0); -- rest of the number
                if(input_data(3) = '0') then
                    output_data <= input_data;
                else
                     -- temp <=(not input_data(2) ) & (not input_data(1)) & (not input_data(0)); 
                     --output_bits <= ((not input_data(2) ) & (not input_data(1)) & (not input_data(0)));
                     temp := ((not input_data(2) ) & (not input_data(1)) & (not input_data(0)));
                     output_bits := std_logic_vector(unsigned(temp) + 1);
                     output_data <=    input_data(3) & output_bits(2) & output_bits(1) & output_bits(0) ;  
                      --sign_output <= sign_input;
                 
                end if;
                 -- output_data <=    input_data(3) & output_bits(2) & output_bits(1) & output_bits(0) ;   
            end process;    
end structure;
