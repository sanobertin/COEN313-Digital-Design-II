library IEEE;
library work;
use work.all;
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
    component Register_4bit is
    port (
        register_clk : in std_logic;
        register_reset : in std_logic;
        register_din : in std_logic_vector(3 downto 0);
        register_dout : out std_logic_vector(3 downto 0)
    );
    end component;
    
    for R3, R2, R1, R0: register_4bit use entity work.register_4bit(behav); -- 4 components
    -- R3: entity Register_4bit port map ( data_in(3) => register_dout(3));
    signal temp3, temp2, temp1, temp0: std_logic_vector; -- signals for inputs into next registers
    signal temp33, temp22, temp11, temp00: std_logic_vector; -- signals for outputs from register
    begin
        R3: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp22, register_dout =>  temp33);
        R2: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp11, register_dout =>  temp22);
        R1: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp00, register_dout =>  temp11);
        R0: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => din, register_dout =>  temp00);
        
        process_to_shift_data: process(din, clk)
        begin
            -- do nothing for now
            temp0 <= din;
        end process;

end architecture;








architecture selector of registers_min_max is
    component Register_4bit is
port (
    register_clk : in std_logic;
    register_reset : in std_logic;
    register_din : in std_logic_vector(3 downto 0);
    register_dout : out std_logic_vector(3 downto 0)
);
end component;

for R3, R2, R1, R0: register_4bit use entity work.register_4bit(behav); -- 4 components
signal temp3, temp2, temp1, temp0: std_logic_vector;
signal temp33, temp22, temp11, temp00: std_logic_vector;
signal display_register: std_logic_vector(3 downto 0);
    begin
        R3: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp3, register_dout =>  temp33);
        R2: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp2, register_dout =>  temp22);
        R1: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp1, register_dout =>  temp11);
        R0: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => temp0, register_dout =>  temp00);
    
        process(clk)
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


architecture comparator of registers_min_max is
    component Register_4bit is
        port (
        register_clk : in std_logic;
        register_reset : in std_logic;
        register_din : in std_logic_vector(3 downto 0);
        register_dout : out std_logic_vector(3 downto 0)
        );
        end component;
    --signal reg3, reg2, reg1, reg0: std_logic_vector;
    signal R33, R22, R11, R00: std_logic_vector(3 downto 0);
    signal R3, R2, R1, R0: std_logic_vector(3 downto 0);
    signal MAX_REG, MIN_REG: std_logic_vector(3 downto 0);

for register3, register2, register1, register0: register_4bit use entity work.register_4bit(behav); -- 4 components
    -- signal shift_register_clock: std_logic;
    begin
    register3: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => R3, register_dout =>  R33);
    register2: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => R2, register_dout =>  R22);
    register1: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => R1, register_dout =>  R11);
    register0: Register_4bit port map ( register_clk => clk,register_reset => reset, register_din => R0, register_dout =>  R00);
    
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
end architecture;