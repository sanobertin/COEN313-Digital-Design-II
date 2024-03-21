library IEEE;
library work;
-- use work.shift_register;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity registers_min_max is
port( din : in std_logic_vector(3 downto 0);
reset : in std_logic;
clk : in std_logic;
sel : in std_logic_vector(1 downto 0);
max_out : out std_logic_vector(3 downto 0);
min_out : out std_logic_vector(3 downto 0);
reg_out : out std_logic_vector(3 downto 0));
    --extended

end registers_min_max ;

architecture shifter of registers_min_max is 
    for R3, R2, R1, R0: register_4bit use entity register_4bit(behav); -- 4 components
    signal temp3, temp2, temp1, temp0: std_logic_vector;
    begin
        R3: work.Register_4bit port map ( data_in(3) => register_dout(3));
        R2: work.Register_4bit port map ( data_in(2) => register_dout(2));
        R1: work.Register_4bit port map ( data_in(1) => register_dout(1));
        R0: work.Register_4bit port map ( din => register_dout(0));
        process(din, clk)
        begin
            
        end

end architecture;

architecture selector of registers_min_max is
    for R3, R2, R1, R0: register_4bit use entity register_4bit(behav); -- 4 components
    signal display_register: std_logic_vector(3 downto 0);
begin
    R3:  work.Register_4bit port map ( data_in(3) => register_dout(3));
    R2: work.Register_4bit port map ( data_in(2) => register_dout(2));
    R1: work.Register_4bit port map ( data_in(1) => register_dout(1));
    R0: work.Register_4bit port map ( data_in(0) => register_dout(0));
    process(choose_register, clk)
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
    reg_out <= display_register;
        end;

    end architecture;

architecture comparator of registers_min_max is
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
    min_out <= MIN_REG;
    max_out <= MAX_REG;
end architecture;