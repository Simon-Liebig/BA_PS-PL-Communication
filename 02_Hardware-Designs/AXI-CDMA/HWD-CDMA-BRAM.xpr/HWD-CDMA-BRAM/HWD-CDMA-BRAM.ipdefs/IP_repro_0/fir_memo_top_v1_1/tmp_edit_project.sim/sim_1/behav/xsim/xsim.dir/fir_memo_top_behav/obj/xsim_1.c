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
extern void execute_53(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_613(char*, char *);
extern void execute_617(char*, char *);
extern void execute_618(char*, char *);
extern void execute_619(char*, char *);
extern void execute_52(char*, char *);
extern void execute_55(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_607(char*, char *);
extern void execute_608(char*, char *);
extern void execute_609(char*, char *);
extern void execute_610(char*, char *);
extern void execute_611(char*, char *);
extern void execute_612(char*, char *);
extern void execute_197(char*, char *);
extern void execute_198(char*, char *);
extern void execute_199(char*, char *);
extern void execute_202(char*, char *);
extern void execute_203(char*, char *);
extern void execute_206(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_211(char*, char *);
extern void execute_214(char*, char *);
extern void execute_215(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_230(char*, char *);
extern void execute_231(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void execute_242(char*, char *);
extern void execute_243(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_250(char*, char *);
extern void execute_251(char*, char *);
extern void execute_254(char*, char *);
extern void execute_255(char*, char *);
extern void execute_258(char*, char *);
extern void execute_259(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_274(char*, char *);
extern void execute_275(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_298(char*, char *);
extern void execute_299(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_306(char*, char *);
extern void execute_307(char*, char *);
extern void execute_310(char*, char *);
extern void execute_311(char*, char *);
extern void execute_314(char*, char *);
extern void execute_315(char*, char *);
extern void execute_318(char*, char *);
extern void execute_319(char*, char *);
extern void execute_322(char*, char *);
extern void execute_323(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_338(char*, char *);
extern void execute_339(char*, char *);
extern void execute_342(char*, char *);
extern void execute_343(char*, char *);
extern void execute_346(char*, char *);
extern void execute_347(char*, char *);
extern void execute_350(char*, char *);
extern void execute_351(char*, char *);
extern void execute_354(char*, char *);
extern void execute_355(char*, char *);
extern void execute_358(char*, char *);
extern void execute_359(char*, char *);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_366(char*, char *);
extern void execute_367(char*, char *);
extern void execute_370(char*, char *);
extern void execute_371(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_382(char*, char *);
extern void execute_383(char*, char *);
extern void execute_386(char*, char *);
extern void execute_387(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_398(char*, char *);
extern void execute_399(char*, char *);
extern void execute_402(char*, char *);
extern void execute_403(char*, char *);
extern void execute_406(char*, char *);
extern void execute_407(char*, char *);
extern void execute_410(char*, char *);
extern void execute_411(char*, char *);
extern void execute_414(char*, char *);
extern void execute_415(char*, char *);
extern void execute_418(char*, char *);
extern void execute_419(char*, char *);
extern void execute_422(char*, char *);
extern void execute_423(char*, char *);
extern void execute_426(char*, char *);
extern void execute_427(char*, char *);
extern void execute_430(char*, char *);
extern void execute_431(char*, char *);
extern void execute_434(char*, char *);
extern void execute_435(char*, char *);
extern void execute_438(char*, char *);
extern void execute_439(char*, char *);
extern void execute_442(char*, char *);
extern void execute_443(char*, char *);
extern void execute_446(char*, char *);
extern void execute_447(char*, char *);
extern void execute_450(char*, char *);
extern void execute_451(char*, char *);
extern void execute_454(char*, char *);
extern void execute_455(char*, char *);
extern void execute_458(char*, char *);
extern void execute_459(char*, char *);
extern void execute_462(char*, char *);
extern void execute_463(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_474(char*, char *);
extern void execute_475(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_482(char*, char *);
extern void execute_483(char*, char *);
extern void execute_486(char*, char *);
extern void execute_487(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_494(char*, char *);
extern void execute_495(char*, char *);
extern void execute_498(char*, char *);
extern void execute_499(char*, char *);
extern void execute_502(char*, char *);
extern void execute_503(char*, char *);
extern void execute_506(char*, char *);
extern void execute_507(char*, char *);
extern void execute_510(char*, char *);
extern void execute_511(char*, char *);
extern void execute_514(char*, char *);
extern void execute_515(char*, char *);
extern void execute_518(char*, char *);
extern void execute_519(char*, char *);
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_526(char*, char *);
extern void execute_527(char*, char *);
extern void execute_530(char*, char *);
extern void execute_531(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_542(char*, char *);
extern void execute_543(char*, char *);
extern void execute_546(char*, char *);
extern void execute_547(char*, char *);
extern void execute_550(char*, char *);
extern void execute_551(char*, char *);
extern void execute_554(char*, char *);
extern void execute_555(char*, char *);
extern void execute_558(char*, char *);
extern void execute_559(char*, char *);
extern void execute_562(char*, char *);
extern void execute_563(char*, char *);
extern void execute_566(char*, char *);
extern void execute_567(char*, char *);
extern void execute_570(char*, char *);
extern void execute_571(char*, char *);
extern void execute_574(char*, char *);
extern void execute_575(char*, char *);
extern void execute_578(char*, char *);
extern void execute_579(char*, char *);
extern void execute_582(char*, char *);
extern void execute_583(char*, char *);
extern void execute_586(char*, char *);
extern void execute_587(char*, char *);
extern void execute_590(char*, char *);
extern void execute_591(char*, char *);
extern void execute_594(char*, char *);
extern void execute_595(char*, char *);
extern void execute_598(char*, char *);
extern void execute_599(char*, char *);
extern void execute_602(char*, char *);
extern void execute_603(char*, char *);
extern void execute_606(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_102(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_141(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_168(char*, char *);
extern void execute_169(char*, char *);
extern void execute_170(char*, char *);
extern void execute_171(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_182(char*, char *);
extern void execute_183(char*, char *);
extern void execute_184(char*, char *);
extern void execute_185(char*, char *);
extern void execute_186(char*, char *);
extern void execute_187(char*, char *);
extern void execute_188(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_191(char*, char *);
extern void execute_192(char*, char *);
extern void execute_193(char*, char *);
extern void execute_194(char*, char *);
extern void execute_195(char*, char *);
extern void execute_196(char*, char *);
extern void execute_201(char*, char *);
extern void execute_615(char*, char *);
extern void execute_616(char*, char *);
extern void execute_621(char*, char *);
extern void execute_625(char*, char *);
extern void execute_626(char*, char *);
extern void execute_636(char*, char *);
extern void execute_623(char*, char *);
extern void execute_624(char*, char *);
extern void execute_628(char*, char *);
extern void execute_629(char*, char *);
extern void execute_630(char*, char *);
extern void execute_631(char*, char *);
extern void execute_632(char*, char *);
extern void execute_633(char*, char *);
extern void execute_634(char*, char *);
extern void execute_635(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[366] = {(funcp)execute_53, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_613, (funcp)execute_617, (funcp)execute_618, (funcp)execute_619, (funcp)execute_52, (funcp)execute_55, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_63, (funcp)execute_64, (funcp)execute_66, (funcp)execute_67, (funcp)execute_69, (funcp)execute_70, (funcp)execute_72, (funcp)execute_73, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_607, (funcp)execute_608, (funcp)execute_609, (funcp)execute_610, (funcp)execute_611, (funcp)execute_612, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_202, (funcp)execute_203, (funcp)execute_206, (funcp)execute_207, (funcp)execute_210, (funcp)execute_211, (funcp)execute_214, (funcp)execute_215, (funcp)execute_218, (funcp)execute_219, (funcp)execute_222, (funcp)execute_223, (funcp)execute_226, (funcp)execute_227, (funcp)execute_230, (funcp)execute_231, (funcp)execute_234, (funcp)execute_235, (funcp)execute_238, (funcp)execute_239, (funcp)execute_242, (funcp)execute_243, (funcp)execute_246, (funcp)execute_247, (funcp)execute_250, (funcp)execute_251, (funcp)execute_254, (funcp)execute_255, (funcp)execute_258, (funcp)execute_259, (funcp)execute_262, (funcp)execute_263, (funcp)execute_266, (funcp)execute_267, (funcp)execute_270, (funcp)execute_271, (funcp)execute_274, (funcp)execute_275, (funcp)execute_278, (funcp)execute_279, (funcp)execute_282, (funcp)execute_283, (funcp)execute_286, (funcp)execute_287, (funcp)execute_290, (funcp)execute_291, (funcp)execute_294, (funcp)execute_295, (funcp)execute_298, (funcp)execute_299, (funcp)execute_302, (funcp)execute_303, (funcp)execute_306, (funcp)execute_307, (funcp)execute_310, (funcp)execute_311, (funcp)execute_314, (funcp)execute_315, (funcp)execute_318, (funcp)execute_319, (funcp)execute_322, (funcp)execute_323, (funcp)execute_326, (funcp)execute_327, (funcp)execute_330, (funcp)execute_331, (funcp)execute_334, (funcp)execute_335, (funcp)execute_338, (funcp)execute_339, (funcp)execute_342, (funcp)execute_343, (funcp)execute_346, (funcp)execute_347, (funcp)execute_350, (funcp)execute_351, (funcp)execute_354, (funcp)execute_355, (funcp)execute_358, (funcp)execute_359, (funcp)execute_362, (funcp)execute_363, (funcp)execute_366, (funcp)execute_367, (funcp)execute_370, (funcp)execute_371, (funcp)execute_374, (funcp)execute_375, (funcp)execute_378, (funcp)execute_379, (funcp)execute_382, (funcp)execute_383, (funcp)execute_386, (funcp)execute_387, (funcp)execute_390, (funcp)execute_391, (funcp)execute_394, (funcp)execute_395, (funcp)execute_398, (funcp)execute_399, (funcp)execute_402, (funcp)execute_403, (funcp)execute_406, (funcp)execute_407, (funcp)execute_410, (funcp)execute_411, (funcp)execute_414, (funcp)execute_415, (funcp)execute_418, (funcp)execute_419, (funcp)execute_422, (funcp)execute_423, (funcp)execute_426, (funcp)execute_427, (funcp)execute_430, (funcp)execute_431, (funcp)execute_434, (funcp)execute_435, (funcp)execute_438, (funcp)execute_439, (funcp)execute_442, (funcp)execute_443, (funcp)execute_446, (funcp)execute_447, (funcp)execute_450, (funcp)execute_451, (funcp)execute_454, (funcp)execute_455, (funcp)execute_458, (funcp)execute_459, (funcp)execute_462, (funcp)execute_463, (funcp)execute_466, (funcp)execute_467, (funcp)execute_470, (funcp)execute_471, (funcp)execute_474, (funcp)execute_475, (funcp)execute_478, (funcp)execute_479, (funcp)execute_482, (funcp)execute_483, (funcp)execute_486, (funcp)execute_487, (funcp)execute_490, (funcp)execute_491, (funcp)execute_494, (funcp)execute_495, (funcp)execute_498, (funcp)execute_499, (funcp)execute_502, (funcp)execute_503, (funcp)execute_506, (funcp)execute_507, (funcp)execute_510, (funcp)execute_511, (funcp)execute_514, (funcp)execute_515, (funcp)execute_518, (funcp)execute_519, (funcp)execute_522, (funcp)execute_523, (funcp)execute_526, (funcp)execute_527, (funcp)execute_530, (funcp)execute_531, (funcp)execute_534, (funcp)execute_535, (funcp)execute_538, (funcp)execute_539, (funcp)execute_542, (funcp)execute_543, (funcp)execute_546, (funcp)execute_547, (funcp)execute_550, (funcp)execute_551, (funcp)execute_554, (funcp)execute_555, (funcp)execute_558, (funcp)execute_559, (funcp)execute_562, (funcp)execute_563, (funcp)execute_566, (funcp)execute_567, (funcp)execute_570, (funcp)execute_571, (funcp)execute_574, (funcp)execute_575, (funcp)execute_578, (funcp)execute_579, (funcp)execute_582, (funcp)execute_583, (funcp)execute_586, (funcp)execute_587, (funcp)execute_590, (funcp)execute_591, (funcp)execute_594, (funcp)execute_595, (funcp)execute_598, (funcp)execute_599, (funcp)execute_602, (funcp)execute_603, (funcp)execute_606, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_102, (funcp)execute_103, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_108, (funcp)execute_109, (funcp)execute_110, (funcp)execute_111, (funcp)execute_112, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_127, (funcp)execute_128, (funcp)execute_129, (funcp)execute_130, (funcp)execute_131, (funcp)execute_132, (funcp)execute_133, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_137, (funcp)execute_138, (funcp)execute_139, (funcp)execute_140, (funcp)execute_141, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_145, (funcp)execute_146, (funcp)execute_147, (funcp)execute_148, (funcp)execute_149, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)execute_168, (funcp)execute_169, (funcp)execute_170, (funcp)execute_171, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_180, (funcp)execute_181, (funcp)execute_182, (funcp)execute_183, (funcp)execute_184, (funcp)execute_185, (funcp)execute_186, (funcp)execute_187, (funcp)execute_188, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_193, (funcp)execute_194, (funcp)execute_195, (funcp)execute_196, (funcp)execute_201, (funcp)execute_615, (funcp)execute_616, (funcp)execute_621, (funcp)execute_625, (funcp)execute_626, (funcp)execute_636, (funcp)execute_623, (funcp)execute_624, (funcp)execute_628, (funcp)execute_629, (funcp)execute_630, (funcp)execute_631, (funcp)execute_632, (funcp)execute_633, (funcp)execute_634, (funcp)execute_635, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_2, (funcp)transaction_47, (funcp)transaction_65};
const int NumRelocateId= 366;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/fir_memo_top_behav/xsim.reloc",  (void **)funcTab, 366);
	iki_vhdl_file_variable_register(dp + 140072);
	iki_vhdl_file_variable_register(dp + 140128);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/fir_memo_top_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/fir_memo_top_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/fir_memo_top_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/fir_memo_top_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/fir_memo_top_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
