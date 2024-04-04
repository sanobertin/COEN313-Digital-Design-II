-- Test bench for room_occupancy module

library ieee;
use ieee.std_logic_1164.all;

entity room_occupancy_testbench is
end entity room_occupancy_testbench;

architecture tb_arch of room_occupancy_testbench is
    -- Component declaration
    component room_occupancy
        port (
            -- Declare the ports of the module here
            -- Example: clk, reset, inputs, outputs
        );
    end component;

    -- Signal declarations
    signal clk : std_logic := '0';
    -- Declare other signals as needed

begin
    -- Instantiate the module
    uut: room_occupancy
        port map (
            -- Map the module ports to the signals here
        );

    -- Clock process
    clk_process: process
    begin
        while now < 1000 ns loop  -- Adjust the simulation time as needed
            clk <= not clk;
            wait for 5 ns;  -- Adjust the clock period as needed
        end loop;
        wait;
    end process clk_process;

    -- Add test cases and stimulus processes here

end architecture tb_arch;