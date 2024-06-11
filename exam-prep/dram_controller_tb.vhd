LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY tb IS

BEGIN

END tb;

ARCHITECTURE top of tb IS

 CONSTANT max_simulation_time : TIME := 240 ns;
 CONSTANT clk_period          : TIME := 10 ns;

 COMPONENT mem_ctrl is
   port( clk, reset: in std_logic;
         mem, rw, burst: in std_logic;
        oe, we, we_me: out std_logic
       );
 END COMPONENT;

 SIGNAL my_clk, my_reset   : STD_LOGIC;
 SIGNAL my_mem, my_rw, my_burst, my_oe, my_we, my_we_me  : STD_LOGIC;

 -- Components specification
 FOR memctrl_inst: mem_ctrl USE ENTITY Work.mem_ctrl(mult_seg_arch);
 

BEGIN

  clk_gen: PROCESS
     VARIABLE sim_time : TIME;
   BEGIN
       sim_time := 0 ns;
       WHILE sim_time <=  max_simulation_time LOOP
          my_clk <= '0';
          WAIT FOR 5 ns;
          my_clk <= '1';
          WAIT FOR 5 ns;
          sim_time := sim_time + clk_period;
       END LOOP;
       WAIT;
    END PROCESS; 

  memctrl_inst :  mem_ctrl PORT MAP (my_clk, my_reset, my_mem, my_rw, my_burst, my_oe, my_we, my_we_me);


   gen_stimuli: PROCESS

   BEGIN

      --reset

      WAIT  UNTIL  my_clk'event AND my_clk = '0' ;
        my_reset <= '1';

       WAIT UNTIL  my_clk'event AND my_clk = '0' ;
        my_reset <= '0';

       -- write;

       WAIT  UNTIL my_clk'event AND my_clk = '0' ;
            my_mem <= '1';
            my_rw  <= '1';
            my_burst <= '0';
   

       --read

       WAIT UNTIL  my_clk'event AND my_clk = '0' ;
            my_mem <= '1';
            my_rw  <= '0';
            my_burst <= '0';

      --read burst

       WAIT UNTIL my_clk'event AND my_clk = '0' ;
            my_mem <= '1';
            my_rw  <= '0';
            my_burst <= '1';

      --read burst
          
      WAIT UNTIL  my_clk'event AND my_clk = '0' ;
           -- my_mem <= '1';
           -- my_rw  <= '0';
           -- my_burst <= '1';

      --read burst

      WAIT UNTIL my_clk'event AND my_clk = '0' ;
           -- my_mem <= '1';
           -- my_rw  <= '1';
           -- my_burst <= '0';


     WAIT UNTIL my_clk'event AND my_clk = '0' ;
           my_mem <= '0';
           my_rw  <= '0';
           my_burst <= '0';

    WAIT UNTIL my_clk'event AND my_clk = '0' ;
          my_mem <= '0';
          --  my_rw  <= '1';
          --  my_burst <= '0';

    WAIT UNTIL my_clk'event AND my_clk = '0' ;
             my_mem <= '0';
            my_rw  <= '1';
            my_burst <= '0';

  
  WAIT UNTIL  my_clk'event AND my_clk = '0' ;
            my_mem <= '0';
            my_rw  <= '1';
            my_burst <= '0';

               

   END PROCESS;


END top;
No definition found.
Search the web for "max_simulation_time" »
