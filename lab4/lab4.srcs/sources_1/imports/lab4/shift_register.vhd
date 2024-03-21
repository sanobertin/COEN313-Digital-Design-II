-- start 
library ieee;
library work;
use work.all;
use work.register_4bit;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std;
-- consists of 4 registers 
entity shift_register is
    port(
        data_in: in std_logic_vector (3 downto 0);
        data_out: out std_logic_vector(3 downto 0);
        common_clock: in std_logic;
        choose_register: in std_logic_vector (1 downto 0); -- MUX selection input
        shift_register_sel_output: out std_logic_vector(3 downto 0)
        );
end entity;


architecture comparator of shift_register is
    for R3, R2, R1, R0: register_4bit use entity register_4bit(behav); -- 4 components
    -- signal shift_register_clock: std_logic;
    begin
        R3:  work.Register_4bit port map ( data_in(3) => register_dout(3));
        R2: work.Register_4bit port map ( data_in(2) => register_dout(2));
        R1: work.Register_4bit port map ( data_in(1) => register_dout(1));
        R0: work.Register_4bit port map ( data_in => register_din);
        tell_max_min: process(common_clock)
        begin
            -- maximum value finder
            if(R3 > R2) then 
                if(R3 > R1) then
                    if(R3 > R0) then 
                        MAX_REG <= R3;
                    else
                        MAX_REG <= R0;
                    end if;
                    MAX_REG <= R1;
                end if;
                MAX_REG <= R2;
            end if;
            -- end here
            -- minimum value finder
            if(R3 < R2) then 
                if(R3 < R1) then
                    if(R3 < R0) then 
                        MIN_REG <= R3;
                    else
                    MIN_REG <= R0;
                    end if;
                    MIN_REG <= R1;
                end if;
                MIN_REG <= R2;
            end if;
            -- end here
        end process;
        -- process ends here

end architecture;


architecture selector of shift_register is

    for R3, R2, R1, R0: register_4bit use entity register_4bit(behav); -- 4 components
    signal shift_register_clock: std_logic;
    signal display_register: std_logic_vector(3 downto 0);
    begin
        R3:  work.Register_4bit port map ( data_in(3) => register_dout(3));
        R2: work.Register_4bit port map ( data_in(2) => register_dout(2));
        R1: work.Register_4bit port map ( data_in(1) => register_dout(1));
        R0: work.Register_4bit port map ( data_in(0) => register_dout(0));
        process(choose_register)
            begin
                if(choose_register = "11") then
                    display_register <= data_in(3);
                else if (choose_register ="11") then
                    display_register <= data_in(2);
                else if (choose_register ="11") then
                        display_register <= data_in(1);
                else
                display_register <= data_in(0);
                end if;
            end;
        shift_register_sel_output <= display_register;
    end;

end architecture;