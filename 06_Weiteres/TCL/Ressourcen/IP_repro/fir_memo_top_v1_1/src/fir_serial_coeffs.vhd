--FIR-Filter-Koeffizienten lp
--Filter-Ordnung: 101 Normierte Grenzfrequenz: 0.01
--Fensterfunktion: --Blackman-Harris 5. Ordnung
--Designer: Dipl.Ing(TU)). D.Kohlert, CEO Kohlert Enterprises Int.
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
ENTITY fir_serial_coeffs IS
    port (
        clk,nres     : in  STD_LOGIC;
        data_rdy     : in  STD_LOGIC;
        in_dat		 : in  STD_LOGIC_VECTOR (15 downto 0);
		out_dat		 : out STD_LOGIC_VECTOR (15 downto 0);
		shift_coeffs : in  STD_LOGIC;
		in_coeffs	 : in STD_LOGIC_VECTOR (19 downto 0)
    );

END fir_serial_coeffs;
ARCHITECTURE arch_fir_serial_coeffs OF fir_serial_coeffs IS

component gen_reg24 is
    port (
        clk,nres   	: in  STD_LOGIC;
        cken       	: in  STD_LOGIC;
		load 		     : in  STD_LOGIC;
		in_dat		    : in  STD_LOGIC_VECTOR (23 downto 0);
		out_dat		   : out STD_LOGIC_VECTOR (23 downto 0)
    );
end component;

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
 component sreg_fir 
 Port (  din   : in std_logic_vector(19 downto 0);
         shift : in std_logic;
         clk   : in std_logic;
         out101 : out std_logic_vector(19 downto 0);
         out100 : out std_logic_vector(19 downto 0);
         out99 : out std_logic_vector(19 downto 0);
         out98 : out std_logic_vector(19 downto 0);
         out97 : out std_logic_vector(19 downto 0);
         out96 : out std_logic_vector(19 downto 0);
         out95 : out std_logic_vector(19 downto 0);
         out94 : out std_logic_vector(19 downto 0);
         out93 : out std_logic_vector(19 downto 0);
         out92 : out std_logic_vector(19 downto 0);
         out91 : out std_logic_vector(19 downto 0);
         out90 : out std_logic_vector(19 downto 0);
         out89 : out std_logic_vector(19 downto 0);
         out88 : out std_logic_vector(19 downto 0);
         out87 : out std_logic_vector(19 downto 0);
         out86 : out std_logic_vector(19 downto 0);
         out85 : out std_logic_vector(19 downto 0);
         out84 : out std_logic_vector(19 downto 0);
         out83 : out std_logic_vector(19 downto 0);
         out82 : out std_logic_vector(19 downto 0);
         out81 : out std_logic_vector(19 downto 0);
         out80 : out std_logic_vector(19 downto 0);
         out79 : out std_logic_vector(19 downto 0);
         out78 : out std_logic_vector(19 downto 0);
         out77 : out std_logic_vector(19 downto 0);
         out76 : out std_logic_vector(19 downto 0);
         out75 : out std_logic_vector(19 downto 0);
         out74 : out std_logic_vector(19 downto 0);
         out73 : out std_logic_vector(19 downto 0);
         out72 : out std_logic_vector(19 downto 0);
         out71 : out std_logic_vector(19 downto 0);
         out70 : out std_logic_vector(19 downto 0);
         out69 : out std_logic_vector(19 downto 0);
         out68 : out std_logic_vector(19 downto 0);
         out67 : out std_logic_vector(19 downto 0);
         out66 : out std_logic_vector(19 downto 0);
         out65 : out std_logic_vector(19 downto 0);
         out64 : out std_logic_vector(19 downto 0);
         out63 : out std_logic_vector(19 downto 0);
         out62 : out std_logic_vector(19 downto 0);
         out61 : out std_logic_vector(19 downto 0);
         out60 : out std_logic_vector(19 downto 0);
         out59 : out std_logic_vector(19 downto 0);
         out58 : out std_logic_vector(19 downto 0);
         out57 : out std_logic_vector(19 downto 0);
         out56 : out std_logic_vector(19 downto 0);
         out55 : out std_logic_vector(19 downto 0);
         out54 : out std_logic_vector(19 downto 0);
         out53 : out std_logic_vector(19 downto 0);
         out52 : out std_logic_vector(19 downto 0);
         out51 : out std_logic_vector(19 downto 0);
         out50 : out std_logic_vector(19 downto 0);
         out49 : out std_logic_vector(19 downto 0);
         out48 : out std_logic_vector(19 downto 0);
         out47 : out std_logic_vector(19 downto 0);
         out46 : out std_logic_vector(19 downto 0);
         out45 : out std_logic_vector(19 downto 0);
         out44 : out std_logic_vector(19 downto 0);
         out43 : out std_logic_vector(19 downto 0);
         out42 : out std_logic_vector(19 downto 0);
         out41 : out std_logic_vector(19 downto 0);
         out40 : out std_logic_vector(19 downto 0);
         out39 : out std_logic_vector(19 downto 0);
         out38 : out std_logic_vector(19 downto 0);
         out37 : out std_logic_vector(19 downto 0);
         out36 : out std_logic_vector(19 downto 0);
         out35 : out std_logic_vector(19 downto 0);
         out34 : out std_logic_vector(19 downto 0);
         out33 : out std_logic_vector(19 downto 0);
         out32 : out std_logic_vector(19 downto 0);
         out31 : out std_logic_vector(19 downto 0);
         out30 : out std_logic_vector(19 downto 0);
         out29 : out std_logic_vector(19 downto 0);
         out28 : out std_logic_vector(19 downto 0);
         out27 : out std_logic_vector(19 downto 0);
         out26 : out std_logic_vector(19 downto 0);
         out25 : out std_logic_vector(19 downto 0);
         out24 : out std_logic_vector(19 downto 0);
         out23 : out std_logic_vector(19 downto 0);
         out22 : out std_logic_vector(19 downto 0);
         out21 : out std_logic_vector(19 downto 0);
         out20 : out std_logic_vector(19 downto 0);
         out19 : out std_logic_vector(19 downto 0);
         out18 : out std_logic_vector(19 downto 0);
         out17 : out std_logic_vector(19 downto 0);
         out16 : out std_logic_vector(19 downto 0);
         out15 : out std_logic_vector(19 downto 0);
         out14 : out std_logic_vector(19 downto 0);
         out13 : out std_logic_vector(19 downto 0);
         out12 : out std_logic_vector(19 downto 0);
         out11 : out std_logic_vector(19 downto 0);
         out10 : out std_logic_vector(19 downto 0);
         out9 : out std_logic_vector(19 downto 0);
         out8 : out std_logic_vector(19 downto 0);
         out7 : out std_logic_vector(19 downto 0);
         out6 : out std_logic_vector(19 downto 0);
         out5 : out std_logic_vector(19 downto 0);
         out4 : out std_logic_vector(19 downto 0);
         out3 : out std_logic_vector(19 downto 0);
         out2 : out std_logic_vector(19 downto 0);
         out1 : out std_logic_vector(19 downto 0);
         out0 : out std_logic_vector(19 downto 0));
 end component;
 -- COMP_TAG_END ------ End COMPONENT Declaration ------------


signal tmp_in 		:  STD_LOGIC_VECTOR(17 downto 0);
signal sum0,out0 : STD_LOGIC_VECTOR(23 downto 0);
signal prod0 : STD_LOGIC_VECTOR(35 downto 0);
signal sum1,out1 : STD_LOGIC_VECTOR(23 downto 0);
signal prod1 : STD_LOGIC_VECTOR(35 downto 0);
signal sum2,out2 : STD_LOGIC_VECTOR(23 downto 0);
signal prod2 : STD_LOGIC_VECTOR(35 downto 0);
signal sum3,out3 : STD_LOGIC_VECTOR(23 downto 0);
signal prod3 : STD_LOGIC_VECTOR(35 downto 0);
signal sum4,out4 : STD_LOGIC_VECTOR(23 downto 0);
signal prod4 : STD_LOGIC_VECTOR(35 downto 0);
signal sum5,out5 : STD_LOGIC_VECTOR(23 downto 0);
signal prod5 : STD_LOGIC_VECTOR(35 downto 0);
signal sum6,out6 : STD_LOGIC_VECTOR(23 downto 0);
signal prod6 : STD_LOGIC_VECTOR(35 downto 0);
signal sum7,out7 : STD_LOGIC_VECTOR(23 downto 0);
signal prod7 : STD_LOGIC_VECTOR(35 downto 0);
signal sum8,out8 : STD_LOGIC_VECTOR(23 downto 0);
signal prod8 : STD_LOGIC_VECTOR(35 downto 0);
signal sum9,out9 : STD_LOGIC_VECTOR(23 downto 0);
signal prod9 : STD_LOGIC_VECTOR(35 downto 0);
signal sum10,out10 : STD_LOGIC_VECTOR(23 downto 0);
signal prod10 : STD_LOGIC_VECTOR(35 downto 0);
signal sum11,out11 : STD_LOGIC_VECTOR(23 downto 0);
signal prod11 : STD_LOGIC_VECTOR(35 downto 0);
signal sum12,out12 : STD_LOGIC_VECTOR(23 downto 0);
signal prod12 : STD_LOGIC_VECTOR(35 downto 0);
signal sum13,out13 : STD_LOGIC_VECTOR(23 downto 0);
signal prod13 : STD_LOGIC_VECTOR(35 downto 0);
signal sum14,out14 : STD_LOGIC_VECTOR(23 downto 0);
signal prod14 : STD_LOGIC_VECTOR(35 downto 0);
signal sum15,out15 : STD_LOGIC_VECTOR(23 downto 0);
signal prod15 : STD_LOGIC_VECTOR(35 downto 0);
signal sum16,out16 : STD_LOGIC_VECTOR(23 downto 0);
signal prod16 : STD_LOGIC_VECTOR(35 downto 0);
signal sum17,out17 : STD_LOGIC_VECTOR(23 downto 0);
signal prod17 : STD_LOGIC_VECTOR(35 downto 0);
signal sum18,out18 : STD_LOGIC_VECTOR(23 downto 0);
signal prod18 : STD_LOGIC_VECTOR(35 downto 0);
signal sum19,out19 : STD_LOGIC_VECTOR(23 downto 0);
signal prod19 : STD_LOGIC_VECTOR(35 downto 0);
signal sum20,out20 : STD_LOGIC_VECTOR(23 downto 0);
signal prod20 : STD_LOGIC_VECTOR(35 downto 0);
signal sum21,out21 : STD_LOGIC_VECTOR(23 downto 0);
signal prod21 : STD_LOGIC_VECTOR(35 downto 0);
signal sum22,out22 : STD_LOGIC_VECTOR(23 downto 0);
signal prod22 : STD_LOGIC_VECTOR(35 downto 0);
signal sum23,out23 : STD_LOGIC_VECTOR(23 downto 0);
signal prod23 : STD_LOGIC_VECTOR(35 downto 0);
signal sum24,out24 : STD_LOGIC_VECTOR(23 downto 0);
signal prod24 : STD_LOGIC_VECTOR(35 downto 0);
signal sum25,out25 : STD_LOGIC_VECTOR(23 downto 0);
signal prod25 : STD_LOGIC_VECTOR(35 downto 0);
signal sum26,out26 : STD_LOGIC_VECTOR(23 downto 0);
signal prod26 : STD_LOGIC_VECTOR(35 downto 0);
signal sum27,out27 : STD_LOGIC_VECTOR(23 downto 0);
signal prod27 : STD_LOGIC_VECTOR(35 downto 0);
signal sum28,out28 : STD_LOGIC_VECTOR(23 downto 0);
signal prod28 : STD_LOGIC_VECTOR(35 downto 0);
signal sum29,out29 : STD_LOGIC_VECTOR(23 downto 0);
signal prod29 : STD_LOGIC_VECTOR(35 downto 0);
signal sum30,out30 : STD_LOGIC_VECTOR(23 downto 0);
signal prod30 : STD_LOGIC_VECTOR(35 downto 0);
signal sum31,out31 : STD_LOGIC_VECTOR(23 downto 0);
signal prod31 : STD_LOGIC_VECTOR(35 downto 0);
signal sum32,out32 : STD_LOGIC_VECTOR(23 downto 0);
signal prod32 : STD_LOGIC_VECTOR(35 downto 0);
signal sum33,out33 : STD_LOGIC_VECTOR(23 downto 0);
signal prod33 : STD_LOGIC_VECTOR(35 downto 0);
signal sum34,out34 : STD_LOGIC_VECTOR(23 downto 0);
signal prod34 : STD_LOGIC_VECTOR(35 downto 0);
signal sum35,out35 : STD_LOGIC_VECTOR(23 downto 0);
signal prod35 : STD_LOGIC_VECTOR(35 downto 0);
signal sum36,out36 : STD_LOGIC_VECTOR(23 downto 0);
signal prod36 : STD_LOGIC_VECTOR(35 downto 0);
signal sum37,out37 : STD_LOGIC_VECTOR(23 downto 0);
signal prod37 : STD_LOGIC_VECTOR(35 downto 0);
signal sum38,out38 : STD_LOGIC_VECTOR(23 downto 0);
signal prod38 : STD_LOGIC_VECTOR(35 downto 0);
signal sum39,out39 : STD_LOGIC_VECTOR(23 downto 0);
signal prod39 : STD_LOGIC_VECTOR(35 downto 0);
signal sum40,out40 : STD_LOGIC_VECTOR(23 downto 0);
signal prod40 : STD_LOGIC_VECTOR(35 downto 0);
signal sum41,out41 : STD_LOGIC_VECTOR(23 downto 0);
signal prod41 : STD_LOGIC_VECTOR(35 downto 0);
signal sum42,out42 : STD_LOGIC_VECTOR(23 downto 0);
signal prod42 : STD_LOGIC_VECTOR(35 downto 0);
signal sum43,out43 : STD_LOGIC_VECTOR(23 downto 0);
signal prod43 : STD_LOGIC_VECTOR(35 downto 0);
signal sum44,out44 : STD_LOGIC_VECTOR(23 downto 0);
signal prod44 : STD_LOGIC_VECTOR(35 downto 0);
signal sum45,out45 : STD_LOGIC_VECTOR(23 downto 0);
signal prod45 : STD_LOGIC_VECTOR(35 downto 0);
signal sum46,out46 : STD_LOGIC_VECTOR(23 downto 0);
signal prod46 : STD_LOGIC_VECTOR(35 downto 0);
signal sum47,out47 : STD_LOGIC_VECTOR(23 downto 0);
signal prod47 : STD_LOGIC_VECTOR(35 downto 0);
signal sum48,out48 : STD_LOGIC_VECTOR(23 downto 0);
signal prod48 : STD_LOGIC_VECTOR(35 downto 0);
signal sum49,out49 : STD_LOGIC_VECTOR(23 downto 0);
signal prod49 : STD_LOGIC_VECTOR(35 downto 0);
signal sum50,out50 : STD_LOGIC_VECTOR(23 downto 0);
signal prod50 : STD_LOGIC_VECTOR(35 downto 0);
signal sum51,out51 : STD_LOGIC_VECTOR(23 downto 0);
signal prod51 : STD_LOGIC_VECTOR(35 downto 0);
signal sum52,out52 : STD_LOGIC_VECTOR(23 downto 0);
signal prod52 : STD_LOGIC_VECTOR(35 downto 0);
signal sum53,out53 : STD_LOGIC_VECTOR(23 downto 0);
signal prod53 : STD_LOGIC_VECTOR(35 downto 0);
signal sum54,out54 : STD_LOGIC_VECTOR(23 downto 0);
signal prod54 : STD_LOGIC_VECTOR(35 downto 0);
signal sum55,out55 : STD_LOGIC_VECTOR(23 downto 0);
signal prod55 : STD_LOGIC_VECTOR(35 downto 0);
signal sum56,out56 : STD_LOGIC_VECTOR(23 downto 0);
signal prod56 : STD_LOGIC_VECTOR(35 downto 0);
signal sum57,out57 : STD_LOGIC_VECTOR(23 downto 0);
signal prod57 : STD_LOGIC_VECTOR(35 downto 0);
signal sum58,out58 : STD_LOGIC_VECTOR(23 downto 0);
signal prod58 : STD_LOGIC_VECTOR(35 downto 0);
signal sum59,out59 : STD_LOGIC_VECTOR(23 downto 0);
signal prod59 : STD_LOGIC_VECTOR(35 downto 0);
signal sum60,out60 : STD_LOGIC_VECTOR(23 downto 0);
signal prod60 : STD_LOGIC_VECTOR(35 downto 0);
signal sum61,out61 : STD_LOGIC_VECTOR(23 downto 0);
signal prod61 : STD_LOGIC_VECTOR(35 downto 0);
signal sum62,out62 : STD_LOGIC_VECTOR(23 downto 0);
signal prod62 : STD_LOGIC_VECTOR(35 downto 0);
signal sum63,out63 : STD_LOGIC_VECTOR(23 downto 0);
signal prod63 : STD_LOGIC_VECTOR(35 downto 0);
signal sum64,out64 : STD_LOGIC_VECTOR(23 downto 0);
signal prod64 : STD_LOGIC_VECTOR(35 downto 0);
signal sum65,out65 : STD_LOGIC_VECTOR(23 downto 0);
signal prod65 : STD_LOGIC_VECTOR(35 downto 0);
signal sum66,out66 : STD_LOGIC_VECTOR(23 downto 0);
signal prod66 : STD_LOGIC_VECTOR(35 downto 0);
signal sum67,out67 : STD_LOGIC_VECTOR(23 downto 0);
signal prod67 : STD_LOGIC_VECTOR(35 downto 0);
signal sum68,out68 : STD_LOGIC_VECTOR(23 downto 0);
signal prod68 : STD_LOGIC_VECTOR(35 downto 0);
signal sum69,out69 : STD_LOGIC_VECTOR(23 downto 0);
signal prod69 : STD_LOGIC_VECTOR(35 downto 0);
signal sum70,out70 : STD_LOGIC_VECTOR(23 downto 0);
signal prod70 : STD_LOGIC_VECTOR(35 downto 0);
signal sum71,out71 : STD_LOGIC_VECTOR(23 downto 0);
signal prod71 : STD_LOGIC_VECTOR(35 downto 0);
signal sum72,out72 : STD_LOGIC_VECTOR(23 downto 0);
signal prod72 : STD_LOGIC_VECTOR(35 downto 0);
signal sum73,out73 : STD_LOGIC_VECTOR(23 downto 0);
signal prod73 : STD_LOGIC_VECTOR(35 downto 0);
signal sum74,out74 : STD_LOGIC_VECTOR(23 downto 0);
signal prod74 : STD_LOGIC_VECTOR(35 downto 0);
signal sum75,out75 : STD_LOGIC_VECTOR(23 downto 0);
signal prod75 : STD_LOGIC_VECTOR(35 downto 0);
signal sum76,out76 : STD_LOGIC_VECTOR(23 downto 0);
signal prod76 : STD_LOGIC_VECTOR(35 downto 0);
signal sum77,out77 : STD_LOGIC_VECTOR(23 downto 0);
signal prod77 : STD_LOGIC_VECTOR(35 downto 0);
signal sum78,out78 : STD_LOGIC_VECTOR(23 downto 0);
signal prod78 : STD_LOGIC_VECTOR(35 downto 0);
signal sum79,out79 : STD_LOGIC_VECTOR(23 downto 0);
signal prod79 : STD_LOGIC_VECTOR(35 downto 0);
signal sum80,out80 : STD_LOGIC_VECTOR(23 downto 0);
signal prod80 : STD_LOGIC_VECTOR(35 downto 0);
signal sum81,out81 : STD_LOGIC_VECTOR(23 downto 0);
signal prod81 : STD_LOGIC_VECTOR(35 downto 0);
signal sum82,out82 : STD_LOGIC_VECTOR(23 downto 0);
signal prod82 : STD_LOGIC_VECTOR(35 downto 0);
signal sum83,out83 : STD_LOGIC_VECTOR(23 downto 0);
signal prod83 : STD_LOGIC_VECTOR(35 downto 0);
signal sum84,out84 : STD_LOGIC_VECTOR(23 downto 0);
signal prod84 : STD_LOGIC_VECTOR(35 downto 0);
signal sum85,out85 : STD_LOGIC_VECTOR(23 downto 0);
signal prod85 : STD_LOGIC_VECTOR(35 downto 0);
signal sum86,out86 : STD_LOGIC_VECTOR(23 downto 0);
signal prod86 : STD_LOGIC_VECTOR(35 downto 0);
signal sum87,out87 : STD_LOGIC_VECTOR(23 downto 0);
signal prod87 : STD_LOGIC_VECTOR(35 downto 0);
signal sum88,out88 : STD_LOGIC_VECTOR(23 downto 0);
signal prod88 : STD_LOGIC_VECTOR(35 downto 0);
signal sum89,out89 : STD_LOGIC_VECTOR(23 downto 0);
signal prod89 : STD_LOGIC_VECTOR(35 downto 0);
signal sum90,out90 : STD_LOGIC_VECTOR(23 downto 0);
signal prod90 : STD_LOGIC_VECTOR(35 downto 0);
signal sum91,out91 : STD_LOGIC_VECTOR(23 downto 0);
signal prod91 : STD_LOGIC_VECTOR(35 downto 0);
signal sum92,out92 : STD_LOGIC_VECTOR(23 downto 0);
signal prod92 : STD_LOGIC_VECTOR(35 downto 0);
signal sum93,out93 : STD_LOGIC_VECTOR(23 downto 0);
signal prod93 : STD_LOGIC_VECTOR(35 downto 0);
signal sum94,out94 : STD_LOGIC_VECTOR(23 downto 0);
signal prod94 : STD_LOGIC_VECTOR(35 downto 0);
signal sum95,out95 : STD_LOGIC_VECTOR(23 downto 0);
signal prod95 : STD_LOGIC_VECTOR(35 downto 0);
signal sum96,out96 : STD_LOGIC_VECTOR(23 downto 0);
signal prod96 : STD_LOGIC_VECTOR(35 downto 0);
signal sum97,out97 : STD_LOGIC_VECTOR(23 downto 0);
signal prod97 : STD_LOGIC_VECTOR(35 downto 0);
signal sum98,out98 : STD_LOGIC_VECTOR(23 downto 0);
signal prod98 : STD_LOGIC_VECTOR(35 downto 0);
signal sum99,out99 : STD_LOGIC_VECTOR(23 downto 0);
signal prod99 : STD_LOGIC_VECTOR(35 downto 0);
signal sum100,out100 : STD_LOGIC_VECTOR(23 downto 0);
signal prod100 : STD_LOGIC_VECTOR(35 downto 0);
signal sum101,out101 : STD_LOGIC_VECTOR(23 downto 0);
signal prod101 : STD_LOGIC_VECTOR(35 downto 0);

-- Signal Declaration coeffs
      signal coeff101 :  std_logic_vector(19 downto 0);
      signal coeff100 :  std_logic_vector(19 downto 0);
      signal coeff99 :  std_logic_vector(19 downto 0);
      signal coeff98 :  std_logic_vector(19 downto 0);
      signal coeff97 :  std_logic_vector(19 downto 0);
      signal coeff96 :  std_logic_vector(19 downto 0);
      signal coeff95 :  std_logic_vector(19 downto 0);
      signal coeff94 :  std_logic_vector(19 downto 0);
      signal coeff93 :  std_logic_vector(19 downto 0);
      signal coeff92 :  std_logic_vector(19 downto 0);
      signal coeff91 :  std_logic_vector(19 downto 0);
      signal coeff90 :  std_logic_vector(19 downto 0);
      signal coeff89 :  std_logic_vector(19 downto 0);
      signal coeff88 :  std_logic_vector(19 downto 0);
      signal coeff87 :  std_logic_vector(19 downto 0);
      signal coeff86 :  std_logic_vector(19 downto 0);
      signal coeff85 :  std_logic_vector(19 downto 0);
      signal coeff84 :  std_logic_vector(19 downto 0);
      signal coeff83 :  std_logic_vector(19 downto 0);
      signal coeff82 :  std_logic_vector(19 downto 0);
      signal coeff81 :  std_logic_vector(19 downto 0);
      signal coeff80 :  std_logic_vector(19 downto 0);
      signal coeff79 :  std_logic_vector(19 downto 0);
      signal coeff78 :  std_logic_vector(19 downto 0);
      signal coeff77 :  std_logic_vector(19 downto 0);
      signal coeff76 :  std_logic_vector(19 downto 0);
      signal coeff75 :  std_logic_vector(19 downto 0);
      signal coeff74 :  std_logic_vector(19 downto 0);
      signal coeff73 :  std_logic_vector(19 downto 0);
      signal coeff72 :  std_logic_vector(19 downto 0);
      signal coeff71 :  std_logic_vector(19 downto 0);
      signal coeff70 :  std_logic_vector(19 downto 0);
      signal coeff69 :  std_logic_vector(19 downto 0);
      signal coeff68 :  std_logic_vector(19 downto 0);
      signal coeff67 :  std_logic_vector(19 downto 0);
      signal coeff66 :  std_logic_vector(19 downto 0);
      signal coeff65 :  std_logic_vector(19 downto 0);
      signal coeff64 :  std_logic_vector(19 downto 0);
      signal coeff63 :  std_logic_vector(19 downto 0);
      signal coeff62 :  std_logic_vector(19 downto 0);
      signal coeff61 :  std_logic_vector(19 downto 0);
      signal coeff60 :  std_logic_vector(19 downto 0);
      signal coeff59 :  std_logic_vector(19 downto 0);
      signal coeff58 :  std_logic_vector(19 downto 0);
      signal coeff57 :  std_logic_vector(19 downto 0);
      signal coeff56 :  std_logic_vector(19 downto 0);
      signal coeff55 :  std_logic_vector(19 downto 0);
      signal coeff54 :  std_logic_vector(19 downto 0);
      signal coeff53 :  std_logic_vector(19 downto 0);
      signal coeff52 :  std_logic_vector(19 downto 0);
      signal coeff51 :  std_logic_vector(19 downto 0);
      signal coeff50 :  std_logic_vector(19 downto 0);
      signal coeff49 :  std_logic_vector(19 downto 0);
      signal coeff48 :  std_logic_vector(19 downto 0);
      signal coeff47 :  std_logic_vector(19 downto 0);
      signal coeff46 :  std_logic_vector(19 downto 0);
      signal coeff45 :  std_logic_vector(19 downto 0);
      signal coeff44 :  std_logic_vector(19 downto 0);
      signal coeff43 :  std_logic_vector(19 downto 0);
      signal coeff42 :  std_logic_vector(19 downto 0);
      signal coeff41 :  std_logic_vector(19 downto 0);
      signal coeff40 :  std_logic_vector(19 downto 0);
      signal coeff39 :  std_logic_vector(19 downto 0);
      signal coeff38 :  std_logic_vector(19 downto 0);
      signal coeff37 :  std_logic_vector(19 downto 0);
      signal coeff36 :  std_logic_vector(19 downto 0);
      signal coeff35 :  std_logic_vector(19 downto 0);
      signal coeff34 :  std_logic_vector(19 downto 0);
      signal coeff33 :  std_logic_vector(19 downto 0);
      signal coeff32 :  std_logic_vector(19 downto 0);
      signal coeff31 :  std_logic_vector(19 downto 0);
      signal coeff30 :  std_logic_vector(19 downto 0);
      signal coeff29 :  std_logic_vector(19 downto 0);
      signal coeff28 :  std_logic_vector(19 downto 0);
      signal coeff27 :  std_logic_vector(19 downto 0);
      signal coeff26 :  std_logic_vector(19 downto 0);
      signal coeff25 :  std_logic_vector(19 downto 0);
      signal coeff24 :  std_logic_vector(19 downto 0);
      signal coeff23 :  std_logic_vector(19 downto 0);
      signal coeff22 :  std_logic_vector(19 downto 0);
      signal coeff21 :  std_logic_vector(19 downto 0);
      signal coeff20 :  std_logic_vector(19 downto 0);
      signal coeff19 :  std_logic_vector(19 downto 0);
      signal coeff18 :  std_logic_vector(19 downto 0);
      signal coeff17 :  std_logic_vector(19 downto 0);
      signal coeff16 :  std_logic_vector(19 downto 0);
      signal coeff15 :  std_logic_vector(19 downto 0);
      signal coeff14 :  std_logic_vector(19 downto 0);
      signal coeff13 :  std_logic_vector(19 downto 0);
      signal coeff12 :  std_logic_vector(19 downto 0);
      signal coeff11 :  std_logic_vector(19 downto 0);
      signal coeff10 :  std_logic_vector(19 downto 0);
      signal coeff9 :  std_logic_vector(19 downto 0);
      signal coeff8 :  std_logic_vector(19 downto 0);
      signal coeff7 :  std_logic_vector(19 downto 0);
      signal coeff6 :  std_logic_vector(19 downto 0);
      signal coeff5 :  std_logic_vector(19 downto 0);
      signal coeff4 :  std_logic_vector(19 downto 0);
      signal coeff3 :  std_logic_vector(19 downto 0);
      signal coeff2 :  std_logic_vector(19 downto 0);
      signal coeff1 :  std_logic_vector(19 downto 0);
      signal coeff0 :  std_logic_vector(19 downto 0);

begin
i_sreg_fir : sreg_fir
 Port map (
      shift => shift_coeffs,
	  din   => in_coeffs,
      clk   => clk,
      out101 => coeff101,
      out100 => coeff100,
      out99 => coeff99,
      out98 => coeff98,
      out97 => coeff97,
      out96 => coeff96,
      out95 => coeff95,
      out94 => coeff94,
      out93 => coeff93,
      out92 => coeff92,
      out91 => coeff91,
      out90 => coeff90,
      out89 => coeff89,
      out88 => coeff88,
      out87 => coeff87,
      out86 => coeff86,
      out85 => coeff85,
      out84 => coeff84,
      out83 => coeff83,
      out82 => coeff82,
      out81 => coeff81,
      out80 => coeff80,
      out79 => coeff79,
      out78 => coeff78,
      out77 => coeff77,
      out76 => coeff76,
      out75 => coeff75,
      out74 => coeff74,
      out73 => coeff73,
      out72 => coeff72,
      out71 => coeff71,
      out70 => coeff70,
      out69 => coeff69,
      out68 => coeff68,
      out67 => coeff67,
      out66 => coeff66,
      out65 => coeff65,
      out64 => coeff64,
      out63 => coeff63,
      out62 => coeff62,
      out61 => coeff61,
      out60 => coeff60,
      out59 => coeff59,
      out58 => coeff58,
      out57 => coeff57,
      out56 => coeff56,
      out55 => coeff55,
      out54 => coeff54,
      out53 => coeff53,
      out52 => coeff52,
      out51 => coeff51,
      out50 => coeff50,
      out49 => coeff49,
      out48 => coeff48,
      out47 => coeff47,
      out46 => coeff46,
      out45 => coeff45,
      out44 => coeff44,
      out43 => coeff43,
      out42 => coeff42,
      out41 => coeff41,
      out40 => coeff40,
      out39 => coeff39,
      out38 => coeff38,
      out37 => coeff37,
      out36 => coeff36,
      out35 => coeff35,
      out34 => coeff34,
      out33 => coeff33,
      out32 => coeff32,
      out31 => coeff31,
      out30 => coeff30,
      out29 => coeff29,
      out28 => coeff28,
      out27 => coeff27,
      out26 => coeff26,
      out25 => coeff25,
      out24 => coeff24,
      out23 => coeff23,
      out22 => coeff22,
      out21 => coeff21,
      out20 => coeff20,
      out19 => coeff19,
      out18 => coeff18,
      out17 => coeff17,
      out16 => coeff16,
      out15 => coeff15,
      out14 => coeff14,
      out13 => coeff13,
      out12 => coeff12,
      out11 => coeff11,
      out10 => coeff10,
      out9 => coeff9,
      out8 => coeff8,
      out7 => coeff7,
      out6 => coeff6,
      out5 => coeff5,
      out4 => coeff4,
      out3 => coeff3,
      out2 => coeff2,
      out1 => coeff1,
      out0 => coeff0
     );


tmp_in(17 downto 2) <= in_dat;
tmp_in(1 downto 0) <= "00";
prod101 <= tmp_in * coeff101(19 downto 2);
i_reg101: gen_reg24 port map (clk,nres,data_rdy,'1',prod101(34 downto 11),out101);
prod100 <= tmp_in * coeff100(19 downto 2);
sum100 <= prod100(34 downto 11) + out101;
i_reg100: gen_reg24 port map (clk,nres,data_rdy,'1',sum100,out100);
prod99 <= tmp_in * coeff99(19 downto 2);
sum99 <= prod99(34 downto 11) + out100;
i_reg99: gen_reg24 port map (clk,nres,data_rdy,'1',sum99,out99);
prod98 <= tmp_in * coeff98(19 downto 2);
sum98 <= prod98(34 downto 11) + out99;
i_reg98: gen_reg24 port map (clk,nres,data_rdy,'1',sum98,out98);
prod97 <= tmp_in * coeff97(19 downto 2);
sum97 <= prod97(34 downto 11) + out98;
i_reg97: gen_reg24 port map (clk,nres,data_rdy,'1',sum97,out97);
prod96 <= tmp_in * coeff96(19 downto 2);
sum96 <= prod96(34 downto 11) + out97;
i_reg96: gen_reg24 port map (clk,nres,data_rdy,'1',sum96,out96);
prod95 <= tmp_in * coeff95(19 downto 2);
sum95 <= prod95(34 downto 11) + out96;
i_reg95: gen_reg24 port map (clk,nres,data_rdy,'1',sum95,out95);
prod94 <= tmp_in * coeff94(19 downto 2);
sum94 <= prod94(34 downto 11) + out95;
i_reg94: gen_reg24 port map (clk,nres,data_rdy,'1',sum94,out94);
prod93 <= tmp_in * coeff93(19 downto 2);
sum93 <= prod93(34 downto 11) + out94;
i_reg93: gen_reg24 port map (clk,nres,data_rdy,'1',sum93,out93);
prod92 <= tmp_in * coeff92(19 downto 2);
sum92 <= prod92(34 downto 11) + out93;
i_reg92: gen_reg24 port map (clk,nres,data_rdy,'1',sum92,out92);
prod91 <= tmp_in * coeff91(19 downto 2);
sum91 <= prod91(34 downto 11) + out92;
i_reg91: gen_reg24 port map (clk,nres,data_rdy,'1',sum91,out91);
prod90 <= tmp_in * coeff90(19 downto 2);
sum90 <= prod90(34 downto 11) + out91;
i_reg90: gen_reg24 port map (clk,nres,data_rdy,'1',sum90,out90);
prod89 <= tmp_in * coeff89(19 downto 2);
sum89 <= prod89(34 downto 11) + out90;
i_reg89: gen_reg24 port map (clk,nres,data_rdy,'1',sum89,out89);
prod88 <= tmp_in * coeff88(19 downto 2);
sum88 <= prod88(34 downto 11) + out89;
i_reg88: gen_reg24 port map (clk,nres,data_rdy,'1',sum88,out88);
prod87 <= tmp_in * coeff87(19 downto 2);
sum87 <= prod87(34 downto 11) + out88;
i_reg87: gen_reg24 port map (clk,nres,data_rdy,'1',sum87,out87);
prod86 <= tmp_in * coeff86(19 downto 2);
sum86 <= prod86(34 downto 11) + out87;
i_reg86: gen_reg24 port map (clk,nres,data_rdy,'1',sum86,out86);
prod85 <= tmp_in * coeff85(19 downto 2);
sum85 <= prod85(34 downto 11) + out86;
i_reg85: gen_reg24 port map (clk,nres,data_rdy,'1',sum85,out85);
prod84 <= tmp_in * coeff84(19 downto 2);
sum84 <= prod84(34 downto 11) + out85;
i_reg84: gen_reg24 port map (clk,nres,data_rdy,'1',sum84,out84);
prod83 <= tmp_in * coeff83(19 downto 2);
sum83 <= prod83(34 downto 11) + out84;
i_reg83: gen_reg24 port map (clk,nres,data_rdy,'1',sum83,out83);
prod82 <= tmp_in * coeff82(19 downto 2);
sum82 <= prod82(34 downto 11) + out83;
i_reg82: gen_reg24 port map (clk,nres,data_rdy,'1',sum82,out82);
prod81 <= tmp_in * coeff81(19 downto 2);
sum81 <= prod81(34 downto 11) + out82;
i_reg81: gen_reg24 port map (clk,nres,data_rdy,'1',sum81,out81);
prod80 <= tmp_in * coeff80(19 downto 2);
sum80 <= prod80(34 downto 11) + out81;
i_reg80: gen_reg24 port map (clk,nres,data_rdy,'1',sum80,out80);
prod79 <= tmp_in * coeff79(19 downto 2);
sum79 <= prod79(34 downto 11) + out80;
i_reg79: gen_reg24 port map (clk,nres,data_rdy,'1',sum79,out79);
prod78 <= tmp_in * coeff78(19 downto 2);
sum78 <= prod78(34 downto 11) + out79;
i_reg78: gen_reg24 port map (clk,nres,data_rdy,'1',sum78,out78);
prod77 <= tmp_in * coeff77(19 downto 2);
sum77 <= prod77(34 downto 11) + out78;
i_reg77: gen_reg24 port map (clk,nres,data_rdy,'1',sum77,out77);
prod76 <= tmp_in * coeff76(19 downto 2);
sum76 <= prod76(34 downto 11) + out77;
i_reg76: gen_reg24 port map (clk,nres,data_rdy,'1',sum76,out76);
prod75 <= tmp_in * coeff75(19 downto 2);
sum75 <= prod75(34 downto 11) + out76;
i_reg75: gen_reg24 port map (clk,nres,data_rdy,'1',sum75,out75);
prod74 <= tmp_in * coeff74(19 downto 2);
sum74 <= prod74(34 downto 11) + out75;
i_reg74: gen_reg24 port map (clk,nres,data_rdy,'1',sum74,out74);
prod73 <= tmp_in * coeff73(19 downto 2);
sum73 <= prod73(34 downto 11) + out74;
i_reg73: gen_reg24 port map (clk,nres,data_rdy,'1',sum73,out73);
prod72 <= tmp_in * coeff72(19 downto 2);
sum72 <= prod72(34 downto 11) + out73;
i_reg72: gen_reg24 port map (clk,nres,data_rdy,'1',sum72,out72);
prod71 <= tmp_in * coeff71(19 downto 2);
sum71 <= prod71(34 downto 11) + out72;
i_reg71: gen_reg24 port map (clk,nres,data_rdy,'1',sum71,out71);
prod70 <= tmp_in * coeff70(19 downto 2);
sum70 <= prod70(34 downto 11) + out71;
i_reg70: gen_reg24 port map (clk,nres,data_rdy,'1',sum70,out70);
prod69 <= tmp_in * coeff69(19 downto 2);
sum69 <= prod69(34 downto 11) + out70;
i_reg69: gen_reg24 port map (clk,nres,data_rdy,'1',sum69,out69);
prod68 <= tmp_in * coeff68(19 downto 2);
sum68 <= prod68(34 downto 11) + out69;
i_reg68: gen_reg24 port map (clk,nres,data_rdy,'1',sum68,out68);
prod67 <= tmp_in * coeff67(19 downto 2);
sum67 <= prod67(34 downto 11) + out68;
i_reg67: gen_reg24 port map (clk,nres,data_rdy,'1',sum67,out67);
prod66 <= tmp_in * coeff66(19 downto 2);
sum66 <= prod66(34 downto 11) + out67;
i_reg66: gen_reg24 port map (clk,nres,data_rdy,'1',sum66,out66);
prod65 <= tmp_in * coeff65(19 downto 2);
sum65 <= prod65(34 downto 11) + out66;
i_reg65: gen_reg24 port map (clk,nres,data_rdy,'1',sum65,out65);
prod64 <= tmp_in * coeff64(19 downto 2);
sum64 <= prod64(34 downto 11) + out65;
i_reg64: gen_reg24 port map (clk,nres,data_rdy,'1',sum64,out64);
prod63 <= tmp_in * coeff63(19 downto 2);
sum63 <= prod63(34 downto 11) + out64;
i_reg63: gen_reg24 port map (clk,nres,data_rdy,'1',sum63,out63);
prod62 <= tmp_in * coeff62(19 downto 2);
sum62 <= prod62(34 downto 11) + out63;
i_reg62: gen_reg24 port map (clk,nres,data_rdy,'1',sum62,out62);
prod61 <= tmp_in * coeff61(19 downto 2);
sum61 <= prod61(34 downto 11) + out62;
i_reg61: gen_reg24 port map (clk,nres,data_rdy,'1',sum61,out61);
prod60 <= tmp_in * coeff60(19 downto 2);
sum60 <= prod60(34 downto 11) + out61;
i_reg60: gen_reg24 port map (clk,nres,data_rdy,'1',sum60,out60);
prod59 <= tmp_in * coeff59(19 downto 2);
sum59 <= prod59(34 downto 11) + out60;
i_reg59: gen_reg24 port map (clk,nres,data_rdy,'1',sum59,out59);
prod58 <= tmp_in * coeff58(19 downto 2);
sum58 <= prod58(34 downto 11) + out59;
i_reg58: gen_reg24 port map (clk,nres,data_rdy,'1',sum58,out58);
prod57 <= tmp_in * coeff57(19 downto 2);
sum57 <= prod57(34 downto 11) + out58;
i_reg57: gen_reg24 port map (clk,nres,data_rdy,'1',sum57,out57);
prod56 <= tmp_in * coeff56(19 downto 2);
sum56 <= prod56(34 downto 11) + out57;
i_reg56: gen_reg24 port map (clk,nres,data_rdy,'1',sum56,out56);
prod55 <= tmp_in * coeff55(19 downto 2);
sum55 <= prod55(34 downto 11) + out56;
i_reg55: gen_reg24 port map (clk,nres,data_rdy,'1',sum55,out55);
prod54 <= tmp_in * coeff54(19 downto 2);
sum54 <= prod54(34 downto 11) + out55;
i_reg54: gen_reg24 port map (clk,nres,data_rdy,'1',sum54,out54);
prod53 <= tmp_in * coeff53(19 downto 2);
sum53 <= prod53(34 downto 11) + out54;
i_reg53: gen_reg24 port map (clk,nres,data_rdy,'1',sum53,out53);
prod52 <= tmp_in * coeff52(19 downto 2);
sum52 <= prod52(34 downto 11) + out53;
i_reg52: gen_reg24 port map (clk,nres,data_rdy,'1',sum52,out52);
prod51 <= tmp_in * coeff51(19 downto 2);
sum51 <= prod51(34 downto 11) + out52;
i_reg51: gen_reg24 port map (clk,nres,data_rdy,'1',sum51,out51);
prod50 <= tmp_in * coeff50(19 downto 2);
sum50 <= prod50(34 downto 11) + out51;
i_reg50: gen_reg24 port map (clk,nres,data_rdy,'1',sum50,out50);
prod49 <= tmp_in * coeff49(19 downto 2);
sum49 <= prod49(34 downto 11) + out50;
i_reg49: gen_reg24 port map (clk,nres,data_rdy,'1',sum49,out49);
prod48 <= tmp_in * coeff48(19 downto 2);
sum48 <= prod48(34 downto 11) + out49;
i_reg48: gen_reg24 port map (clk,nres,data_rdy,'1',sum48,out48);
prod47 <= tmp_in * coeff47(19 downto 2);
sum47 <= prod47(34 downto 11) + out48;
i_reg47: gen_reg24 port map (clk,nres,data_rdy,'1',sum47,out47);
prod46 <= tmp_in * coeff46(19 downto 2);
sum46 <= prod46(34 downto 11) + out47;
i_reg46: gen_reg24 port map (clk,nres,data_rdy,'1',sum46,out46);
prod45 <= tmp_in * coeff45(19 downto 2);
sum45 <= prod45(34 downto 11) + out46;
i_reg45: gen_reg24 port map (clk,nres,data_rdy,'1',sum45,out45);
prod44 <= tmp_in * coeff44(19 downto 2);
sum44 <= prod44(34 downto 11) + out45;
i_reg44: gen_reg24 port map (clk,nres,data_rdy,'1',sum44,out44);
prod43 <= tmp_in * coeff43(19 downto 2);
sum43 <= prod43(34 downto 11) + out44;
i_reg43: gen_reg24 port map (clk,nres,data_rdy,'1',sum43,out43);
prod42 <= tmp_in * coeff42(19 downto 2);
sum42 <= prod42(34 downto 11) + out43;
i_reg42: gen_reg24 port map (clk,nres,data_rdy,'1',sum42,out42);
prod41 <= tmp_in * coeff41(19 downto 2);
sum41 <= prod41(34 downto 11) + out42;
i_reg41: gen_reg24 port map (clk,nres,data_rdy,'1',sum41,out41);
prod40 <= tmp_in * coeff40(19 downto 2);
sum40 <= prod40(34 downto 11) + out41;
i_reg40: gen_reg24 port map (clk,nres,data_rdy,'1',sum40,out40);
prod39 <= tmp_in * coeff39(19 downto 2);
sum39 <= prod39(34 downto 11) + out40;
i_reg39: gen_reg24 port map (clk,nres,data_rdy,'1',sum39,out39);
prod38 <= tmp_in * coeff38(19 downto 2);
sum38 <= prod38(34 downto 11) + out39;
i_reg38: gen_reg24 port map (clk,nres,data_rdy,'1',sum38,out38);
prod37 <= tmp_in * coeff37(19 downto 2);
sum37 <= prod37(34 downto 11) + out38;
i_reg37: gen_reg24 port map (clk,nres,data_rdy,'1',sum37,out37);
prod36 <= tmp_in * coeff36(19 downto 2);
sum36 <= prod36(34 downto 11) + out37;
i_reg36: gen_reg24 port map (clk,nres,data_rdy,'1',sum36,out36);
prod35 <= tmp_in * coeff35(19 downto 2);
sum35 <= prod35(34 downto 11) + out36;
i_reg35: gen_reg24 port map (clk,nres,data_rdy,'1',sum35,out35);
prod34 <= tmp_in * coeff34(19 downto 2);
sum34 <= prod34(34 downto 11) + out35;
i_reg34: gen_reg24 port map (clk,nres,data_rdy,'1',sum34,out34);
prod33 <= tmp_in * coeff33(19 downto 2);
sum33 <= prod33(34 downto 11) + out34;
i_reg33: gen_reg24 port map (clk,nres,data_rdy,'1',sum33,out33);
prod32 <= tmp_in * coeff32(19 downto 2);
sum32 <= prod32(34 downto 11) + out33;
i_reg32: gen_reg24 port map (clk,nres,data_rdy,'1',sum32,out32);
prod31 <= tmp_in * coeff31(19 downto 2);
sum31 <= prod31(34 downto 11) + out32;
i_reg31: gen_reg24 port map (clk,nres,data_rdy,'1',sum31,out31);
prod30 <= tmp_in * coeff30(19 downto 2);
sum30 <= prod30(34 downto 11) + out31;
i_reg30: gen_reg24 port map (clk,nres,data_rdy,'1',sum30,out30);
prod29 <= tmp_in * coeff29(19 downto 2);
sum29 <= prod29(34 downto 11) + out30;
i_reg29: gen_reg24 port map (clk,nres,data_rdy,'1',sum29,out29);
prod28 <= tmp_in * coeff28(19 downto 2);
sum28 <= prod28(34 downto 11) + out29;
i_reg28: gen_reg24 port map (clk,nres,data_rdy,'1',sum28,out28);
prod27 <= tmp_in * coeff27(19 downto 2);
sum27 <= prod27(34 downto 11) + out28;
i_reg27: gen_reg24 port map (clk,nres,data_rdy,'1',sum27,out27);
prod26 <= tmp_in * coeff26(19 downto 2);
sum26 <= prod26(34 downto 11) + out27;
i_reg26: gen_reg24 port map (clk,nres,data_rdy,'1',sum26,out26);
prod25 <= tmp_in * coeff25(19 downto 2);
sum25 <= prod25(34 downto 11) + out26;
i_reg25: gen_reg24 port map (clk,nres,data_rdy,'1',sum25,out25);
prod24 <= tmp_in * coeff24(19 downto 2);
sum24 <= prod24(34 downto 11) + out25;
i_reg24: gen_reg24 port map (clk,nres,data_rdy,'1',sum24,out24);
prod23 <= tmp_in * coeff23(19 downto 2);
sum23 <= prod23(34 downto 11) + out24;
i_reg23: gen_reg24 port map (clk,nres,data_rdy,'1',sum23,out23);
prod22 <= tmp_in * coeff22(19 downto 2);
sum22 <= prod22(34 downto 11) + out23;
i_reg22: gen_reg24 port map (clk,nres,data_rdy,'1',sum22,out22);
prod21 <= tmp_in * coeff21(19 downto 2);
sum21 <= prod21(34 downto 11) + out22;
i_reg21: gen_reg24 port map (clk,nres,data_rdy,'1',sum21,out21);
prod20 <= tmp_in * coeff20(19 downto 2);
sum20 <= prod20(34 downto 11) + out21;
i_reg20: gen_reg24 port map (clk,nres,data_rdy,'1',sum20,out20);
prod19 <= tmp_in * coeff19(19 downto 2);
sum19 <= prod19(34 downto 11) + out20;
i_reg19: gen_reg24 port map (clk,nres,data_rdy,'1',sum19,out19);
prod18 <= tmp_in * coeff18(19 downto 2);
sum18 <= prod18(34 downto 11) + out19;
i_reg18: gen_reg24 port map (clk,nres,data_rdy,'1',sum18,out18);
prod17 <= tmp_in * coeff17(19 downto 2);
sum17 <= prod17(34 downto 11) + out18;
i_reg17: gen_reg24 port map (clk,nres,data_rdy,'1',sum17,out17);
prod16 <= tmp_in * coeff16(19 downto 2);
sum16 <= prod16(34 downto 11) + out17;
i_reg16: gen_reg24 port map (clk,nres,data_rdy,'1',sum16,out16);
prod15 <= tmp_in * coeff15(19 downto 2);
sum15 <= prod15(34 downto 11) + out16;
i_reg15: gen_reg24 port map (clk,nres,data_rdy,'1',sum15,out15);
prod14 <= tmp_in * coeff14(19 downto 2);
sum14 <= prod14(34 downto 11) + out15;
i_reg14: gen_reg24 port map (clk,nres,data_rdy,'1',sum14,out14);
prod13 <= tmp_in * coeff13(19 downto 2);
sum13 <= prod13(34 downto 11) + out14;
i_reg13: gen_reg24 port map (clk,nres,data_rdy,'1',sum13,out13);
prod12 <= tmp_in * coeff12(19 downto 2);
sum12 <= prod12(34 downto 11) + out13;
i_reg12: gen_reg24 port map (clk,nres,data_rdy,'1',sum12,out12);
prod11 <= tmp_in * coeff11(19 downto 2);
sum11 <= prod11(34 downto 11) + out12;
i_reg11: gen_reg24 port map (clk,nres,data_rdy,'1',sum11,out11);
prod10 <= tmp_in * coeff10(19 downto 2);
sum10 <= prod10(34 downto 11) + out11;
i_reg10: gen_reg24 port map (clk,nres,data_rdy,'1',sum10,out10);
prod9 <= tmp_in * coeff9(19 downto 2);
sum9 <= prod9(34 downto 11) + out10;
i_reg9: gen_reg24 port map (clk,nres,data_rdy,'1',sum9,out9);
prod8 <= tmp_in * coeff8(19 downto 2);
sum8 <= prod8(34 downto 11) + out9;
i_reg8: gen_reg24 port map (clk,nres,data_rdy,'1',sum8,out8);
prod7 <= tmp_in * coeff7(19 downto 2);
sum7 <= prod7(34 downto 11) + out8;
i_reg7: gen_reg24 port map (clk,nres,data_rdy,'1',sum7,out7);
prod6 <= tmp_in * coeff6(19 downto 2);
sum6 <= prod6(34 downto 11) + out7;
i_reg6: gen_reg24 port map (clk,nres,data_rdy,'1',sum6,out6);
prod5 <= tmp_in * coeff5(19 downto 2);
sum5 <= prod5(34 downto 11) + out6;
i_reg5: gen_reg24 port map (clk,nres,data_rdy,'1',sum5,out5);
prod4 <= tmp_in * coeff4(19 downto 2);
sum4 <= prod4(34 downto 11) + out5;
i_reg4: gen_reg24 port map (clk,nres,data_rdy,'1',sum4,out4);
prod3 <= tmp_in * coeff3(19 downto 2);
sum3 <= prod3(34 downto 11) + out4;
i_reg3: gen_reg24 port map (clk,nres,data_rdy,'1',sum3,out3);
prod2 <= tmp_in * coeff2(19 downto 2);
sum2 <= prod2(34 downto 11) + out3;
i_reg2: gen_reg24 port map (clk,nres,data_rdy,'1',sum2,out2);
prod1 <= tmp_in * coeff1(19 downto 2);
sum1 <= prod1(34 downto 11) + out2;
i_reg1: gen_reg24 port map (clk,nres,data_rdy,'1',sum1,out1);
prod0 <= tmp_in * coeff0(19 downto 2);
sum0 <= prod0(34 downto 11) + out1;
i_reg0: gen_reg24 port map (clk,nres,data_rdy,'1',sum0,out0);
out_dat <= sum0(23 downto 8);
END arch_fir_serial_coeffs;
