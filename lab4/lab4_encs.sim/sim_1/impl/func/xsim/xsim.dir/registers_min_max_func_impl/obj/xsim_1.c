/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_84(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_101(char*, char *);
extern void execute_102(char*, char *);
extern void execute_107(char*, char *);
extern void execute_111(char*, char *);
extern void execute_140(char*, char *);
extern void execute_144(char*, char *);
extern void execute_176(char*, char *);
extern void execute_184(char*, char *);
extern void execute_191(char*, char *);
extern void execute_243(char*, char *);
extern void execute_259(char*, char *);
extern void execute_267(char*, char *);
extern void execute_282(char*, char *);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[40] = {(funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_84, (funcp)execute_86, (funcp)execute_87, (funcp)execute_101, (funcp)execute_102, (funcp)execute_107, (funcp)execute_111, (funcp)execute_140, (funcp)execute_144, (funcp)execute_176, (funcp)execute_184, (funcp)execute_191, (funcp)execute_243, (funcp)execute_259, (funcp)execute_267, (funcp)execute_282, (funcp)transaction_52, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_105, (funcp)transaction_112, (funcp)transaction_119, (funcp)transaction_125, (funcp)transaction_133, (funcp)transaction_140, (funcp)transaction_147, (funcp)transaction_153, (funcp)transaction_161, (funcp)transaction_168, (funcp)transaction_175, (funcp)transaction_181, (funcp)transaction_189, (funcp)transaction_196, (funcp)transaction_203, (funcp)transaction_209};
const int NumRelocateId= 40;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/registers_min_max_func_impl/xsim.reloc",  (void **)funcTab, 40);
	iki_vhdl_file_variable_register(dp + 44328);
	iki_vhdl_file_variable_register(dp + 44384);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/registers_min_max_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/registers_min_max_func_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/registers_min_max_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/registers_min_max_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/registers_min_max_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
