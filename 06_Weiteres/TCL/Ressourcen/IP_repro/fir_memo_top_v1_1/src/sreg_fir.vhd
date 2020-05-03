--FIR-Filter-Koeffizienten lp
--Filter-Ordnung: 101 Normierte Grenzfrequenz: 0.01
--Fensterfunktion: Hamming
--Designer: Dipl.Ing(TU)). D.Kohlert
--
--Koeffizientendarstellung: 20 Bit Zweierkomplement
--
 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 use IEEE.STD_LOGIC_SIGNED.ALL;

 entity sreg_fir is
 Port ( din  : in std_logic_vector(19 downto 0);
         shift : in std_logic;
         clk   : in std_logic;
         out101 : out  std_logic_vector(19 downto 0);
         out100 : out  std_logic_vector(19 downto 0);
         out99 : out  std_logic_vector(19 downto 0);
         out98 : out  std_logic_vector(19 downto 0);
         out97 : out  std_logic_vector(19 downto 0);
         out96 : out  std_logic_vector(19 downto 0);
         out95 : out  std_logic_vector(19 downto 0);
         out94 : out  std_logic_vector(19 downto 0);
         out93 : out  std_logic_vector(19 downto 0);
         out92 : out  std_logic_vector(19 downto 0);
         out91 : out  std_logic_vector(19 downto 0);
         out90 : out  std_logic_vector(19 downto 0);
         out89 : out  std_logic_vector(19 downto 0);
         out88 : out  std_logic_vector(19 downto 0);
         out87 : out  std_logic_vector(19 downto 0);
         out86 : out  std_logic_vector(19 downto 0);
         out85 : out  std_logic_vector(19 downto 0);
         out84 : out  std_logic_vector(19 downto 0);
         out83 : out  std_logic_vector(19 downto 0);
         out82 : out  std_logic_vector(19 downto 0);
         out81 : out  std_logic_vector(19 downto 0);
         out80 : out  std_logic_vector(19 downto 0);
         out79 : out  std_logic_vector(19 downto 0);
         out78 : out  std_logic_vector(19 downto 0);
         out77 : out  std_logic_vector(19 downto 0);
         out76 : out  std_logic_vector(19 downto 0);
         out75 : out  std_logic_vector(19 downto 0);
         out74 : out  std_logic_vector(19 downto 0);
         out73 : out  std_logic_vector(19 downto 0);
         out72 : out  std_logic_vector(19 downto 0);
         out71 : out  std_logic_vector(19 downto 0);
         out70 : out  std_logic_vector(19 downto 0);
         out69 : out  std_logic_vector(19 downto 0);
         out68 : out  std_logic_vector(19 downto 0);
         out67 : out  std_logic_vector(19 downto 0);
         out66 : out  std_logic_vector(19 downto 0);
         out65 : out  std_logic_vector(19 downto 0);
         out64 : out  std_logic_vector(19 downto 0);
         out63 : out  std_logic_vector(19 downto 0);
         out62 : out  std_logic_vector(19 downto 0);
         out61 : out  std_logic_vector(19 downto 0);
         out60 : out  std_logic_vector(19 downto 0);
         out59 : out  std_logic_vector(19 downto 0);
         out58 : out  std_logic_vector(19 downto 0);
         out57 : out  std_logic_vector(19 downto 0);
         out56 : out  std_logic_vector(19 downto 0);
         out55 : out  std_logic_vector(19 downto 0);
         out54 : out  std_logic_vector(19 downto 0);
         out53 : out  std_logic_vector(19 downto 0);
         out52 : out  std_logic_vector(19 downto 0);
         out51 : out  std_logic_vector(19 downto 0);
         out50 : out  std_logic_vector(19 downto 0);
         out49 : out  std_logic_vector(19 downto 0);
         out48 : out  std_logic_vector(19 downto 0);
         out47 : out  std_logic_vector(19 downto 0);
         out46 : out  std_logic_vector(19 downto 0);
         out45 : out  std_logic_vector(19 downto 0);
         out44 : out  std_logic_vector(19 downto 0);
         out43 : out  std_logic_vector(19 downto 0);
         out42 : out  std_logic_vector(19 downto 0);
         out41 : out  std_logic_vector(19 downto 0);
         out40 : out  std_logic_vector(19 downto 0);
         out39 : out  std_logic_vector(19 downto 0);
         out38 : out  std_logic_vector(19 downto 0);
         out37 : out  std_logic_vector(19 downto 0);
         out36 : out  std_logic_vector(19 downto 0);
         out35 : out  std_logic_vector(19 downto 0);
         out34 : out  std_logic_vector(19 downto 0);
         out33 : out  std_logic_vector(19 downto 0);
         out32 : out  std_logic_vector(19 downto 0);
         out31 : out  std_logic_vector(19 downto 0);
         out30 : out  std_logic_vector(19 downto 0);
         out29 : out  std_logic_vector(19 downto 0);
         out28 : out  std_logic_vector(19 downto 0);
         out27 : out  std_logic_vector(19 downto 0);
         out26 : out  std_logic_vector(19 downto 0);
         out25 : out  std_logic_vector(19 downto 0);
         out24 : out  std_logic_vector(19 downto 0);
         out23 : out  std_logic_vector(19 downto 0);
         out22 : out  std_logic_vector(19 downto 0);
         out21 : out  std_logic_vector(19 downto 0);
         out20 : out  std_logic_vector(19 downto 0);
         out19 : out  std_logic_vector(19 downto 0);
         out18 : out  std_logic_vector(19 downto 0);
         out17 : out  std_logic_vector(19 downto 0);
         out16 : out  std_logic_vector(19 downto 0);
         out15 : out  std_logic_vector(19 downto 0);
         out14 : out  std_logic_vector(19 downto 0);
         out13 : out  std_logic_vector(19 downto 0);
         out12 : out  std_logic_vector(19 downto 0);
         out11 : out  std_logic_vector(19 downto 0);
         out10 : out  std_logic_vector(19 downto 0);
         out9 : out  std_logic_vector(19 downto 0);
         out8 : out  std_logic_vector(19 downto 0);
         out7 : out  std_logic_vector(19 downto 0);
         out6 : out  std_logic_vector(19 downto 0);
         out5 : out  std_logic_vector(19 downto 0);
         out4 : out  std_logic_vector(19 downto 0);
         out3 : out  std_logic_vector(19 downto 0);
         out2 : out  std_logic_vector(19 downto 0);
         out1 : out  std_logic_vector(19 downto 0);
         out0 : out std_logic_vector(19 downto 0));
 end sreg_fir;

 architecture arch_sreg_fir of sreg_fir is
 type sreg_fir_type is array (101 downto 0) of std_logic_vector (19 downto 0);
 signal sreg_fir : sreg_fir_type:= (
   "11111111111100010101",  --101     -0.000449
   "11111111111100011011",  --100     -0.000437
   "11111111111100011111",  -- 99     -0.000431
   "11111111111100100000",  -- 98     -0.000428
   "11111111111100100001",  -- 97     -0.000426
   "11111111111100100011",  -- 96     -0.000422
   "11111111111100100111",  -- 95     -0.000414
   "11111111111100110000",  -- 94     -0.000397
   "11111111111101000000",  -- 93     -0.000368
   "11111111111101011000",  -- 92     -0.000322
   "11111111111101111011",  -- 91     -0.000255
   "11111111111110101100",  -- 90     -0.000162
   "11111111111111101100",  -- 89     -0.000039
   "00000000000000111110",  -- 88      0.000119
   "00000000000010100110",  -- 87      0.000317
   "00000000000100100100",  -- 86      0.000558
   "00000000000110111100",  -- 85      0.000848
   "00000000001001101111",  -- 84      0.001190
   "00000000001100111111",  -- 83      0.001586
   "00000000010000101110",  -- 82      0.002041
   "00000000010100111011",  -- 81      0.002555
   "00000000011001101001",  -- 80      0.003132
   "00000000011110111000",  -- 79      0.003770
   "00000000100100100111",  -- 78      0.004471
   "00000000101010110111",  -- 77      0.005232
   "00000000110001100101",  -- 76      0.006054
   "00000000111000110010",  -- 75      0.006932
   "00000001000000011011",  -- 74      0.007864
   "00000001001000011101",  -- 73      0.008845
   "00000001010000110111",  -- 72      0.009871
   "00000001011001100100",  -- 71      0.010934
   "00000001100010100010",  -- 70      0.012029
   "00000001101011101101",  -- 69      0.013147
   "00000001110101000000",  -- 68      0.014282
   "00000001111110010111",  -- 67      0.015425
   "00000010000111101101",  -- 66      0.016566
   "00000010010000111110",  -- 65      0.017697
   "00000010011010000100",  -- 64      0.018808
   "00000010100010111011",  -- 63      0.019889
   "00000010101011011110",  -- 62      0.020932
   "00000010110011100111",  -- 61      0.021926
   "00000010111011010010",  -- 60      0.022863
   "00000011000010011011",  -- 59      0.023734
   "00000011001000111101",  -- 58      0.024531
   "00000011001110110100",  -- 57      0.025246
   "00000011010011111100",  -- 56      0.025872
   "00000011011000010011",  -- 55      0.026404
   "00000011011011110101",  -- 54      0.026836
   "00000011011110100001",  -- 53      0.027164
   "00000011100000010100",  -- 52      0.027384
   "00000011100001001110",  -- 51      0.027494
   "00000011100001001110",  -- 50      0.027494
   "00000011100000010100",  -- 49      0.027384
   "00000011011110100001",  -- 48      0.027164
   "00000011011011110101",  -- 47      0.026836
   "00000011011000010011",  -- 46      0.026404
   "00000011010011111100",  -- 45      0.025872
   "00000011001110110100",  -- 44      0.025246
   "00000011001000111101",  -- 43      0.024531
   "00000011000010011011",  -- 42      0.023734
   "00000010111011010010",  -- 41      0.022863
   "00000010110011100111",  -- 40      0.021926
   "00000010101011011110",  -- 39      0.020932
   "00000010100010111011",  -- 38      0.019889
   "00000010011010000100",  -- 37      0.018808
   "00000010010000111110",  -- 36      0.017697
   "00000010000111101101",  -- 35      0.016566
   "00000001111110010111",  -- 34      0.015425
   "00000001110101000000",  -- 33      0.014282
   "00000001101011101101",  -- 32      0.013147
   "00000001100010100010",  -- 31      0.012029
   "00000001011001100100",  -- 30      0.010934
   "00000001010000110111",  -- 29      0.009871
   "00000001001000011101",  -- 28      0.008845
   "00000001000000011011",  -- 27      0.007864
   "00000000111000110010",  -- 26      0.006932
   "00000000110001100101",  -- 25      0.006054
   "00000000101010110111",  -- 24      0.005232
   "00000000100100100111",  -- 23      0.004471
   "00000000011110111000",  -- 22      0.003770
   "00000000011001101001",  -- 21      0.003132
   "00000000010100111011",  -- 20      0.002555
   "00000000010000101110",  -- 19      0.002041
   "00000000001100111111",  -- 18      0.001586
   "00000000001001101111",  -- 17      0.001190
   "00000000000110111100",  -- 16      0.000848
   "00000000000100100100",  -- 15      0.000558
   "00000000000010100110",  -- 14      0.000317
   "00000000000000111110",  -- 13      0.000119
   "11111111111111101100",  -- 12     -0.000039
   "11111111111110101100",  -- 11     -0.000162
   "11111111111101111011",  -- 10     -0.000255
   "11111111111101011000",  --  9     -0.000322
   "11111111111101000000",  --  8     -0.000368
   "11111111111100110000",  --  7     -0.000397
   "11111111111100100111",  --  6     -0.000414
   "11111111111100100011",  --  5     -0.000422
   "11111111111100100001",  --  4     -0.000426
   "11111111111100100000",  --  3     -0.000428
   "11111111111100011111",  --  2     -0.000431
   "11111111111100011011",  --  1     -0.000437
   "11111111111100010101"   --  0     -0.000449
); 
 signal read_a : std_logic_vector(7 downto 0); 
 
 begin 
 process (clk) 
 begin 
   if (clk'event and clk = '1') then 
     if (shift = '1') then 
       sreg_fir  <= din & sreg_fir(101 downto 1) ; 
     end if; 
   end if; 
 end process ; 
         out101 <= sreg_fir(101) ; 
         out100 <= sreg_fir(100) ; 
         out99 <= sreg_fir(99) ; 
         out98 <= sreg_fir(98) ; 
         out97 <= sreg_fir(97) ; 
         out96 <= sreg_fir(96) ; 
         out95 <= sreg_fir(95) ; 
         out94 <= sreg_fir(94) ; 
         out93 <= sreg_fir(93) ; 
         out92 <= sreg_fir(92) ; 
         out91 <= sreg_fir(91) ; 
         out90 <= sreg_fir(90) ; 
         out89 <= sreg_fir(89) ; 
         out88 <= sreg_fir(88) ; 
         out87 <= sreg_fir(87) ; 
         out86 <= sreg_fir(86) ; 
         out85 <= sreg_fir(85) ; 
         out84 <= sreg_fir(84) ; 
         out83 <= sreg_fir(83) ; 
         out82 <= sreg_fir(82) ; 
         out81 <= sreg_fir(81) ; 
         out80 <= sreg_fir(80) ; 
         out79 <= sreg_fir(79) ; 
         out78 <= sreg_fir(78) ; 
         out77 <= sreg_fir(77) ; 
         out76 <= sreg_fir(76) ; 
         out75 <= sreg_fir(75) ; 
         out74 <= sreg_fir(74) ; 
         out73 <= sreg_fir(73) ; 
         out72 <= sreg_fir(72) ; 
         out71 <= sreg_fir(71) ; 
         out70 <= sreg_fir(70) ; 
         out69 <= sreg_fir(69) ; 
         out68 <= sreg_fir(68) ; 
         out67 <= sreg_fir(67) ; 
         out66 <= sreg_fir(66) ; 
         out65 <= sreg_fir(65) ; 
         out64 <= sreg_fir(64) ; 
         out63 <= sreg_fir(63) ; 
         out62 <= sreg_fir(62) ; 
         out61 <= sreg_fir(61) ; 
         out60 <= sreg_fir(60) ; 
         out59 <= sreg_fir(59) ; 
         out58 <= sreg_fir(58) ; 
         out57 <= sreg_fir(57) ; 
         out56 <= sreg_fir(56) ; 
         out55 <= sreg_fir(55) ; 
         out54 <= sreg_fir(54) ; 
         out53 <= sreg_fir(53) ; 
         out52 <= sreg_fir(52) ; 
         out51 <= sreg_fir(51) ; 
         out50 <= sreg_fir(50) ; 
         out49 <= sreg_fir(49) ; 
         out48 <= sreg_fir(48) ; 
         out47 <= sreg_fir(47) ; 
         out46 <= sreg_fir(46) ; 
         out45 <= sreg_fir(45) ; 
         out44 <= sreg_fir(44) ; 
         out43 <= sreg_fir(43) ; 
         out42 <= sreg_fir(42) ; 
         out41 <= sreg_fir(41) ; 
         out40 <= sreg_fir(40) ; 
         out39 <= sreg_fir(39) ; 
         out38 <= sreg_fir(38) ; 
         out37 <= sreg_fir(37) ; 
         out36 <= sreg_fir(36) ; 
         out35 <= sreg_fir(35) ; 
         out34 <= sreg_fir(34) ; 
         out33 <= sreg_fir(33) ; 
         out32 <= sreg_fir(32) ; 
         out31 <= sreg_fir(31) ; 
         out30 <= sreg_fir(30) ; 
         out29 <= sreg_fir(29) ; 
         out28 <= sreg_fir(28) ; 
         out27 <= sreg_fir(27) ; 
         out26 <= sreg_fir(26) ; 
         out25 <= sreg_fir(25) ; 
         out24 <= sreg_fir(24) ; 
         out23 <= sreg_fir(23) ; 
         out22 <= sreg_fir(22) ; 
         out21 <= sreg_fir(21) ; 
         out20 <= sreg_fir(20) ; 
         out19 <= sreg_fir(19) ; 
         out18 <= sreg_fir(18) ; 
         out17 <= sreg_fir(17) ; 
         out16 <= sreg_fir(16) ; 
         out15 <= sreg_fir(15) ; 
         out14 <= sreg_fir(14) ; 
         out13 <= sreg_fir(13) ; 
         out12 <= sreg_fir(12) ; 
         out11 <= sreg_fir(11) ; 
         out10 <= sreg_fir(10) ; 
         out9 <= sreg_fir(9) ; 
         out8 <= sreg_fir(8) ; 
         out7 <= sreg_fir(7) ; 
         out6 <= sreg_fir(6) ; 
         out5 <= sreg_fir(5) ; 
         out4 <= sreg_fir(4) ; 
         out3 <= sreg_fir(3) ; 
         out2 <= sreg_fir(2) ; 
         out1 <= sreg_fir(1) ; 
         out0 <= sreg_fir(0) ; 
 end arch_sreg_fir; 
