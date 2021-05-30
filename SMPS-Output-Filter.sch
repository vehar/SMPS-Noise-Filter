EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 5906 6693
encoding utf-8
Sheet 1 1
Title ""
Date "2021-05-30"
Rev "v0.01"
Comp ""
Comment1 "Megas3300, VU3CER (Dhiru)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SMPS-Output-Filter-rescue:L_Core_Ferrite_Coupled-Device L1
U 1 1 607BCBC2
P 2775 3766
F 0 "L1" H 2675 3516 50  0000 C CNN
F 1 "CMC" H 2825 3516 50  0000 C CNN
F 2 "" H 2775 3766 50  0001 C CNN
F 3 "~" H 2775 3766 50  0001 C CNN
	1    2775 3766
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 3666 2575 3516
$Comp
L SMPS-Output-Filter-rescue:CP-Device CP1
U 1 1 607BFD85
P 2225 3766
F 0 "CP1" V 2400 3691 50  0000 L CNN
F 1 "2200uF" H 1975 3646 39  0000 L CNN
F 2 "" H 2263 3616 50  0001 C CNN
F 3 "~" H 2225 3766 50  0001 C CNN
	1    2225 3766
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 3516 2225 3516
$Comp
L power:+VDC #PWR01
U 1 1 607C4230
P 1975 3516
F 0 "#PWR01" H 1975 3416 50  0001 C CNN
F 1 "+VDC" V 1975 3745 50  0000 L CNN
F 2 "" H 1975 3516 50  0001 C CNN
F 3 "" H 1975 3516 50  0001 C CNN
	1    1975 3516
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2575 3866 2575 4016
$Comp
L custom:-VDC #PWR02
U 1 1 607D430C
P 1975 4016
F 0 "#PWR02" H 1975 3916 50  0001 C CNN
F 1 "-VDC" V 1975 4245 50  0000 L CNN
F 2 "" H 1975 4016 50  0001 C CNN
F 3 "" H 1975 4016 50  0001 C CNN
	1    1975 4016
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2225 3616 2225 3516
Connection ~ 2225 3516
Wire Wire Line
	2225 3516 2575 3516
Wire Wire Line
	1975 4016 2225 4016
Wire Wire Line
	2225 3916 2225 4016
Connection ~ 2225 4016
Wire Wire Line
	2225 4016 2575 4016
$Comp
L SMPS-Output-Filter-rescue:CP-Device CP2
U 1 1 607BD64D
P 3300 3766
F 0 "CP2" V 3150 3691 50  0000 L CNN
F 1 "2200uF" H 3325 3641 39  0000 L CNN
F 2 "" H 3338 3616 50  0001 C CNN
F 3 "~" H 3300 3766 50  0001 C CNN
	1    3300 3766
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3916 3300 4016
Wire Wire Line
	3300 3616 3300 3516
Wire Wire Line
	2975 3516 2975 3666
Wire Wire Line
	2975 3866 2975 4016
Wire Wire Line
	2975 4016 3300 4016
$Comp
L power:+VDC #PWR0101
U 1 1 607BF8DB
P 3600 3516
F 0 "#PWR0101" H 3600 3416 50  0001 C CNN
F 1 "+VDC" V 3600 3745 50  0000 L CNN
F 2 "" H 3600 3516 50  0001 C CNN
F 3 "" H 3600 3516 50  0001 C CNN
	1    3600 3516
	0    1    1    0   
$EndComp
$Comp
L custom:-VDC #PWR0102
U 1 1 607BF8E1
P 3600 4016
F 0 "#PWR0102" H 3600 3916 50  0001 C CNN
F 1 "-VDC" V 3600 4245 50  0000 L CNN
F 2 "" H 3600 4016 50  0001 C CNN
F 3 "" H 3600 4016 50  0001 C CNN
	1    3600 4016
	0    1    1    0   
$EndComp
Wire Wire Line
	2975 3516 3300 3516
Wire Wire Line
	3600 3516 3300 3516
Connection ~ 3300 3516
Wire Wire Line
	3300 4016 3500 4016
Connection ~ 3300 4016
$Comp
L power:GNDREF #PWR0103
U 1 1 607C958D
P 3500 4166
F 0 "#PWR0103" H 3500 3916 50  0001 C CNN
F 1 "GNDREF" H 3505 3993 50  0000 C CNN
F 2 "" H 3500 4166 50  0001 C CNN
F 3 "" H 3500 4166 50  0001 C CNN
	1    3500 4166
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4166 3500 4016
Connection ~ 3500 4016
Wire Wire Line
	3500 4016 3600 4016
Text Notes 2150 4441 2    50   ~ 0
Do NOT ground this\nnegative terminal.
Text Notes 4722 4418 2    50   ~ 0
This negative terminal\ncan be ground referenced.
Text Notes 1567 2939 0    50   ~ 0
1. For CP1 and CP2, Bevenbi 2200 uF 25V 105C Low ESR Aluminium \nElectrolytic Capacitors can be used.\n\n2. Dhiru recommends using original Mornsun SMPS power supplies\nas second choice, if using a Linear-Power-Supply is NOT an option.\n\n3. Testing the filter: Make sure that the noise spikes ("birdies") are \ngone on the 160m and 80m bands. If the switching frequency of the\nSMPS is 65 KHz (typical), then the birdies are 65kc apart on the 160m\nand 80m bands.\n\n4. For commercial CMC, look at Wurth S14100038 (Mouser) and similar\nparts.\n\n5. For DIY CMC, use CF197T4511C ferrite core from Cosmo Ferrites.\nWe need 'AL' to be in 5000 to 10000 range for CMC applications. Use\nwinding wire of suitable gauge (based on the current rating). Check \n'product catalogues' of Cosmo Ferrites, TDK EPCOS, and Mahindra CIE\nfor more options.\n\nReferences:\n\n- http://www.mahindracie.com/images/pdf/soft_ferrite_core.pdf\n\n- https://www.semic.cz/!KATEGORIE/6K/COSMO_EN.pdf
Text Notes 2198 4224 0    50   ~ 0
0.2 to 0.5 mH (each winding).\nLowest Rs possible.
$EndSCHEMATC
