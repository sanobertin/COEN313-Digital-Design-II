library IEEE;
library work;
use work.all;
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

    signal display_register: std_logic_vector(3 downto 0);
    -- signal MAX_REG, MIN_REG: std_logic_vector(3 downto 0); -- signals to store maximum and minimum values
    type myarr is array ( 3 downto 0) of std_logic_vector(3 downto 0);
    signal D_wire: myarr; -- 4x4 array
    -- signal Q_wire: std_logic_vector(3 downto 0);
    begin        
        process_to_shift_data: process(din, clk)
        begin
            if (reset = '1') then
                D_wire <= (others => "1000");
            elsif (rising_edge(clk)) then 
                D_wire(3) <= din ;
                D_wire(2) <= D_wire(3);
                D_wire(1) <= D_wire(2);
                D_wire(0) <= D_wire(1);
                -- Q_wire <= D_wire(0);  
            end if;
               
        end process;
        --reg_out <= Q_wire; -- no need to output after shifting
        
        -- next process 
        
tell_max_min: process(clk)
    begin
        -- maximum value finder
        if(D_wire(3) >= D_wire(2) and D_wire(3) >= D_wire(1) and D_wire(3) >= D_wire(0)) then
            max_out <= D_wire(3);
        
        elsif (D_wire(2) >= D_wire(3) and D_wire(2) >= D_wire(1) and D_wire(2) >= D_wire(0)) then
            max_out <= D_wire(2);
        
        elsif (D_wire(1) >= D_wire(3) and D_wire(1) >= D_wire(2) and D_wire(1) >= D_wire(0)) then
            max_out <= D_wire(1);
        
        elsif (D_wire(0) >= D_wire(3) and D_wire(0) >= D_wire(2) and D_wire(0) >= D_wire(1)) then
            max_out <= D_wire(0);
        else
            max_out <= "XXXX"; -- somewhat get invalid state if all conditions fails! 
        end if;
    -- end here
    
    -- minimum value finder
        if(D_wire(3) <= D_wire(2) and D_wire(3) <= D_wire(1) and D_wire(3) <= D_wire(0)) then
            min_out <= D_wire(3);
        
        elsif (D_wire(2) <= D_wire(3) and D_wire(2) <= D_wire(1) and D_wire(2) <= D_wire(0)) then
            min_out <= D_wire(2);
        
        elsif (D_wire(1) <= D_wire(3) and D_wire(1) <= D_wire(2) and D_wire(1) <= D_wire(0)) then
            min_out <= D_wire(1);
        
        elsif (D_wire(0) <= D_wire(3) and D_wire(0) <= D_wire(2) and D_wire(0) <= D_wire(1)) then
            min_out <= D_wire(0);
        else
            min_out <= "XXXX"; -- somewhat get invalid state if all conditions fails! 
        end if;
        -- end here
    end process;
-- process ends here

--min_out <= MIN_REG;
--max_out <= MAX_REG;
    
select_data_from_registers: process(clk)
    begin
        if(sel = "11") then
            display_register <= D_wire(3);
        elsif (sel ="10") then
            display_register <= D_wire(2);
        elsif (sel ="01") then
                display_register <= D_wire(1);
        else -- 00 condition
            display_register <= D_wire(0);
        end if;
   
end process;
    reg_out <= display_register;

end architecture;






