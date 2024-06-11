
use ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity test is
end entity test;

architecture  rtl of test is    
    signal a : std_logic_vector(3 downto 0) := "0000";
    a <= a + 1 after 10 ms; -- not applicable in synthesis
    type dept is ("ECE", "SOEN", "CIVIL", "MECH");
    signal user_input : dept := "ECE";
    process(user_input)
    begin
        case user_input is 
            when "ECE" => a <= "0001";
            when "SOEN" => a <= "0010";
            when "CIVIL" => a <= "0011";
            when "MECH" => a <= "0100";
            when others => a <= "0000"; -- default/INVALID case
        end case;
    end process;
    -- loop statement 
    signal my_counter : integer := 0;
    signal my_range: integer range 0 to 50 := 0;
    process
    begin
        for i in my_range loop
            my_counter <= my_counter + 1;
        end loop;
         variable myarr : std_logic_vector(7 downto 0) := "0000";
         myarr'range;
         myarr'reverse_range;
         myarr'low;
        myarr'high; 
    end process;
        output <= my_counter;
end architecture rtl;