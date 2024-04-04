
library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity room_occupancy is
    Port ( X : in  STD_LOGIC; --  input from the photocell. detects entrance
           Y : in  STD_LOGIC; --  input from the photocell. detects exiting
           reset : in  STD_LOGIC; -- sets max occupancy to 0
           --light : out  STD_LOGIC;
           max_capacity: out  STD_LOGIC -- output to the LED. indicates if the room is full or not aka '1' if full, '0' if not
           );
end room_occupancy;

architecture rtl of room_occupancy is
    variable max_occupancy : std_logic_vector(7 downto 0) := "11111111"; -- note that 11111111 is 255 in decimal
    variable current_occupancy : std_logic_vector(7 downto 0) := "00000000";
    begin
        process_to_reset_occupancy:process(reset)
        begin
            if reset = '1' then
                current_occupancy <= "00000000";
                max_capacity <= '0';
            end if;
        end process;

        
        process(X, Y) -- triggers when someone enters or exits
        begin
            if (rising_edge(X) or falling_edge(X)) then -- trigger of X signal
                if current_occupancy < max_occupancy then
                    current_occupancy <= current_occupancy + 1;
                else
                    -- do something to alert that the room is full
                end if;
            end if;
             -- trigger of Y signal
            if (rising_edge(Y) or falling_edge(Y)) then
                if current_occupancy > 0 then
                    current_occupancy <= current_occupancy - 1;
                else 
                    -- do something to alert that the room is empty
                end if;
            end if;
        end process; -- end of >> triggers when someone enters or exits
end rtl;

-- end of my code

