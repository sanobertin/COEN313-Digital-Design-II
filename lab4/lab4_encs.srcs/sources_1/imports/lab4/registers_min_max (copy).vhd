library IEEE;
library work;
use work.all;
-- use work.shift_register;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;


entity registers_min_max is
port( 
        din : in std_logic_vector(3 downto 0);
        reset : in std_logic;
        clk : in std_logic;
        sel : in std_logic_vector(1 downto 0);
        max_out : out std_logic_vector(3 downto 0);
        min_out : out std_logic_vector(3 downto 0);
        reg_out : out std_logic_vector(3 downto 0));
    --extended

end registers_min_max ;

architecture rtl of registers_min_max is 
    component Register_4bit is
    port (
        register_clk : in std_logic;
        register_reset : in std_logic;
        register_din : in std_logic_vector(3 downto 0);
        register_dout : out std_logic_vector(3 downto 0)
    );
    end component;

    for R33, R22, R11, R00: register_4bit use entity work.register_4bit(behav); -- 4 components
    -- R3: entity Register_4bit port map ( data_in(3) => register_dout(3));
    signal temp3, temp2, temp1, temp0: std_logic_vector(3 downto 0); -- signals for inputs into next registers
    signal temp33, temp22, temp11, temp00: std_logic_vector(3 downto 0); -- signals for outputs from register
    signal display_register: std_logic_vector(3 downto 0);
    -- signal R33, R22, R11, R00: std_logic_vector(3 downto 0);
    signal R3, R2, R1, R0: std_logic_vector(3 downto 0);
    signal MAX_REG, MIN_REG: std_logic_vector(3 downto 0);
    signal user_input: std_logic_vector(3 downto 0);
    begin
        R33: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp22, register_dout =>  temp33);
        R22: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp11, register_dout =>  temp22);
        R11: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp00, register_dout =>  temp11);
        R00: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => user_input, register_dout =>  temp00);
        
        process_to_shift_data: process(din, clk)
        begin
            -- do nothing for now
            if (reset = '0') then
                -- user_input <= (others => '0');
                temp00 <= (others => '0');
                temp11 <= (others => '0');
                temp22 <= (others => '0');
                temp33 <= (others => '0');
            elsif (rising_edge(clk)) then 
                user_input <= din;
                temp00 <= user_input;
                temp11 <= temp00;
                temp22 <= temp11;
                temp33 <= temp22;              
            end if;
               
        end process;
        

        tell_max_min: process(clk)
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
    
        select_data_from_registers: process(clk, sel)
        begin
            if(sel = "11") then
                display_register <= temp33;
            elsif (sel ="10") then
                display_register <= temp22;
            elsif (sel ="01") then
                    display_register <= temp11;
            else -- 00 condition
                display_register <= temp00;
            end if;
           
    end process;
    reg_out <= display_register;

end architecture;






