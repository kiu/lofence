EESchema Schematic File Version 4
LIBS:lofence-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 5C674C0A
P 1950 3000
F 0 "R1" V 1743 3000 50  0000 C CNN
F 1 "0R" V 1834 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1880 3000 50  0001 C CNN
F 3 "~" H 1950 3000 50  0001 C CNN
	1    1950 3000
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 5C674D86
P 2950 950
F 0 "L1" V 3140 950 50  0000 C CNN
F 1 "10uH" V 3049 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2950 950 50  0001 C CNN
F 3 "~" H 2950 950 50  0001 C CNN
	1    2950 950 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5C6750D9
P 8600 850
F 0 "J5" H 8680 892 50  0000 L CNN
F 1 "Fence+" H 8680 801 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 8600 850 50  0001 C CNN
F 3 "~" H 8600 850 50  0001 C CNN
	1    8600 850 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5C675208
P 10700 850
F 0 "J7" H 10780 892 50  0000 L CNN
F 1 "Fence-" H 10780 801 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 10700 850 50  0001 C CNN
F 3 "~" H 10700 850 50  0001 C CNN
	1    10700 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U4
U 1 1 5C675676
P 9350 2250
F 0 "U4" H 9350 2600 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 9350 2500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9350 2250 50  0001 C CNN
F 3 "~" H 9350 2250 50  0001 C CNN
	1    9350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U4
U 2 1 5C675703
P 9350 4350
F 0 "U4" H 9500 4000 50  0000 R CNN
F 1 "Opamp_Dual_Generic" H 9750 4100 50  0000 R CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9350 4350 50  0001 C CNN
F 3 "~" H 9350 4350 50  0001 C CNN
	2    9350 4350
	1    0    0    1   
$EndComp
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U2
U 1 1 5C675CE6
P 2200 1050
F 0 "U2" H 2200 1417 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 2200 1326 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 2200 650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 1950 1300 50  0001 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5C675EC2
P 700 1250
F 0 "BT1" H 818 1346 50  0000 L CNN
F 1 "Battery_Cell" H 818 1255 50  0000 L CNN
F 2 "kiu-footprint:18650HolderTHT" V 700 1310 50  0001 C CNN
F 3 "~" V 700 1310 50  0001 C CNN
	1    700  1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C67FAF8
P 1400 1200
F 0 "C2" H 1515 1246 50  0000 L CNN
F 1 "1.0uF" H 1515 1155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1438 1050 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C67FBC6
P 2700 1200
F 0 "C3" H 2815 1246 50  0000 L CNN
F 1 "1.0uF" H 2815 1155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2738 1050 50  0001 C CNN
F 3 "~" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C67FF11
P 4950 2550
F 0 "R2" H 5020 2596 50  0000 L CNN
F 1 "4k7" H 5020 2505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4880 2550 50  0001 C CNN
F 3 "~" H 4950 2550 50  0001 C CNN
	1    4950 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5C67FFF9
P 4950 3050
F 0 "C11" H 5065 3096 50  0000 L CNN
F 1 "100nF" H 5065 3005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4988 2900 50  0001 C CNN
F 3 "~" H 4950 3050 50  0001 C CNN
	1    4950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5C6802DB
P 10750 3000
F 0 "C16" H 10865 3046 50  0000 L CNN
F 1 "100nF" H 10865 2955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10788 2850 50  0001 C CNN
F 3 "~" H 10750 3000 50  0001 C CNN
	1    10750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C6805CB
P 3200 1550
F 0 "#PWR010" H 3200 1300 50  0001 C CNN
F 1 "GND" H 3205 1377 50  0000 C CNN
F 2 "" H 3200 1550 50  0001 C CNN
F 3 "" H 3200 1550 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VADC #PWR020
U 1 1 5C68070F
P 4550 750
F 0 "#PWR020" H 4700 700 50  0001 C CNN
F 1 "+3.3VADC" H 4570 893 50  0000 C CNN
F 2 "" H 4550 750 50  0001 C CNN
F 3 "" H 4550 750 50  0001 C CNN
	1    4550 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5C6808CF
P 3200 1200
F 0 "C5" H 3318 1246 50  0000 L CNN
F 1 "10uF" H 3318 1155 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 3238 1050 50  0001 C CNN
F 3 "~" H 3200 1200 50  0001 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5C684D8F
P 1400 3100
F 0 "J1" H 1450 3417 50  0000 C CNN
F 1 "ISP" H 1450 3326 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 1400 3100 50  0001 C CNN
F 3 "~" H 1400 3100 50  0001 C CNN
	1    1400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1150 1700 1150
Wire Wire Line
	1700 1150 1700 950 
Connection ~ 1700 950 
Wire Wire Line
	1700 950  1800 950 
$Comp
L power:GND #PWR021
U 1 1 5C694A0C
P 4550 1550
F 0 "#PWR021" H 4550 1300 50  0001 C CNN
F 1 "GND" H 4555 1377 50  0000 C CNN
F 2 "" H 4550 1550 50  0001 C CNN
F 3 "" H 4550 1550 50  0001 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5C69593D
P 3200 800
F 0 "#PWR09" H 3200 650 50  0001 C CNN
F 1 "+3.3V" H 3215 973 50  0000 C CNN
F 2 "" H 3200 800 50  0001 C CNN
F 3 "" H 3200 800 50  0001 C CNN
	1    3200 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5C695BCE
P 4950 2300
F 0 "#PWR022" H 4950 2150 50  0001 C CNN
F 1 "+3.3V" H 4965 2473 50  0000 C CNN
F 2 "" H 4950 2300 50  0001 C CNN
F 3 "" H 4950 2300 50  0001 C CNN
	1    4950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5C695D99
P 4950 3300
F 0 "#PWR023" H 4950 3050 50  0001 C CNN
F 1 "GND" H 4955 3127 50  0000 C CNN
F 2 "" H 4950 3300 50  0001 C CNN
F 3 "" H 4950 3300 50  0001 C CNN
	1    4950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3300 4950 3200
Wire Wire Line
	4950 2400 4950 2300
$Comp
L Device:R R9
U 1 1 5C69D10C
P 9200 2750
F 0 "R9" V 8993 2750 50  0000 C CNN
F 1 "100k" V 9084 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9130 2750 50  0001 C CNN
F 3 "~" H 9200 2750 50  0001 C CNN
	1    9200 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5C69D34E
P 10450 3000
F 0 "R14" H 10380 2954 50  0000 R CNN
F 1 "1M" H 10380 3045 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10380 3000 50  0001 C CNN
F 3 "~" H 10450 3000 50  0001 C CNN
	1    10450 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 2350 8950 2350
Wire Wire Line
	8950 2350 8950 2750
Wire Wire Line
	8950 2750 9050 2750
Wire Wire Line
	10450 2750 10450 2850
Wire Wire Line
	9350 2750 10450 2750
Wire Wire Line
	10350 2250 10450 2250
Wire Wire Line
	10450 2250 10450 2750
Connection ~ 10450 2750
Wire Wire Line
	10750 2850 10750 2750
Wire Wire Line
	10750 2750 10450 2750
Wire Wire Line
	10750 3150 10750 3250
Wire Wire Line
	10450 3250 10450 3150
$Comp
L power:GND #PWR039
U 1 1 5C6A30C5
P 10450 3250
F 0 "#PWR039" H 10450 3000 50  0001 C CNN
F 1 "GND" H 10455 3077 50  0000 C CNN
F 2 "" H 10450 3250 50  0001 C CNN
F 3 "" H 10450 3250 50  0001 C CNN
	1    10450 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5C6A3170
P 10750 3250
F 0 "#PWR041" H 10750 3000 50  0001 C CNN
F 1 "GND" H 10755 3077 50  0000 C CNN
F 2 "" H 10750 3250 50  0001 C CNN
F 3 "" H 10750 3250 50  0001 C CNN
	1    10750 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C6A321B
P 8700 2150
F 0 "R5" V 8493 2150 50  0000 C CNN
F 1 "100k" V 8584 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8630 2150 50  0001 C CNN
F 3 "~" H 8700 2150 50  0001 C CNN
	1    8700 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C6A4F9B
P 8700 4250
F 0 "R6" V 8493 4250 50  0000 C CNN
F 1 "100k" V 8584 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8630 4250 50  0001 C CNN
F 3 "~" H 8700 4250 50  0001 C CNN
	1    8700 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5C6A5017
P 9200 3900
F 0 "R10" V 8993 3900 50  0000 C CNN
F 1 "100k" V 9084 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9130 3900 50  0001 C CNN
F 3 "~" H 9200 3900 50  0001 C CNN
	1    9200 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 3900 8950 3900
Wire Wire Line
	8950 3900 8950 4250
Wire Wire Line
	8950 4250 9050 4250
Wire Wire Line
	8950 4250 8850 4250
Connection ~ 8950 4250
$Comp
L Device:R R7
U 1 1 5C6A90AD
P 8950 4700
F 0 "R7" H 8880 4654 50  0000 R CNN
F 1 "100k" H 8880 4745 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8880 4700 50  0001 C CNN
F 3 "~" H 8950 4700 50  0001 C CNN
	1    8950 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 4450 8950 4450
Wire Wire Line
	8950 4450 8950 4550
$Comp
L power:GND #PWR035
U 1 1 5C6AA40C
P 8950 4950
F 0 "#PWR035" H 8950 4700 50  0001 C CNN
F 1 "GND" H 8955 4777 50  0000 C CNN
F 2 "" H 8950 4950 50  0001 C CNN
F 3 "" H 8950 4950 50  0001 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4950 8950 4850
$Comp
L Device:R R15
U 1 1 5C6AB9AF
P 10450 4700
F 0 "R15" H 10380 4654 50  0000 R CNN
F 1 "1M" H 10380 4745 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10380 4700 50  0001 C CNN
F 3 "~" H 10450 4700 50  0001 C CNN
	1    10450 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C17
U 1 1 5C6ACD94
P 10750 4700
F 0 "C17" H 10865 4746 50  0000 L CNN
F 1 "100nF" H 10865 4655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10788 4550 50  0001 C CNN
F 3 "~" H 10750 4700 50  0001 C CNN
	1    10750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3900 10450 4350
Wire Wire Line
	10350 4350 10450 4350
Connection ~ 10450 4350
Wire Wire Line
	10450 4350 10450 4550
Wire Wire Line
	10750 4550 10750 4350
Wire Wire Line
	10750 4350 10450 4350
$Comp
L power:GND #PWR040
U 1 1 5C6B0D9E
P 10450 4950
F 0 "#PWR040" H 10450 4700 50  0001 C CNN
F 1 "GND" H 10455 4777 50  0000 C CNN
F 2 "" H 10450 4950 50  0001 C CNN
F 3 "" H 10450 4950 50  0001 C CNN
	1    10450 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5C6B0DF5
P 10750 4950
F 0 "#PWR042" H 10750 4700 50  0001 C CNN
F 1 "GND" H 10755 4777 50  0000 C CNN
F 2 "" H 10750 4950 50  0001 C CNN
F 3 "" H 10750 4950 50  0001 C CNN
	1    10750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4850 10750 4950
Wire Wire Line
	10450 4850 10450 4950
$Comp
L Device:R R8
U 1 1 5C6BAFC5
P 9050 850
F 0 "R8" V 8843 850 50  0000 C CNN
F 1 "10M 6KV" V 8934 850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 8980 850 50  0001 C CNN
F 3 "~" H 9050 850 50  0001 C CNN
	1    9050 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5C6BB07B
P 9450 850
F 0 "R11" V 9243 850 50  0000 C CNN
F 1 "10M 6KV" V 9334 850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 9380 850 50  0001 C CNN
F 3 "~" H 9450 850 50  0001 C CNN
	1    9450 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5C6BB223
P 9850 850
F 0 "R12" V 9643 850 50  0000 C CNN
F 1 "1M 700V" V 9734 850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9780 850 50  0001 C CNN
F 3 "~" H 9850 850 50  0001 C CNN
	1    9850 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5C6BB291
P 10250 850
F 0 "R13" V 10043 850 50  0000 C CNN
F 1 "3k9" V 10134 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10180 850 50  0001 C CNN
F 3 "~" H 10250 850 50  0001 C CNN
	1    10250 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 850  8900 850 
Wire Wire Line
	9200 850  9300 850 
Wire Wire Line
	9600 850  9700 850 
Wire Wire Line
	10000 850  10050 850 
Wire Wire Line
	10400 850  10450 850 
Text GLabel 10050 1050 3    50   Input ~ 0
PROBE
Wire Wire Line
	10050 850  10050 1050
Connection ~ 10050 850 
Wire Wire Line
	10050 850  10100 850 
$Comp
L power:GND #PWR038
U 1 1 5C6CC97F
P 10450 1450
F 0 "#PWR038" H 10450 1200 50  0001 C CNN
F 1 "GND" H 10455 1277 50  0000 C CNN
F 2 "" H 10450 1450 50  0001 C CNN
F 3 "" H 10450 1450 50  0001 C CNN
	1    10450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1050 10450 850 
Connection ~ 10450 850 
Wire Wire Line
	10450 850  10500 850 
$Comp
L Device:C C15
U 1 1 5C6CF34E
P 10450 1200
F 0 "C15" H 10565 1246 50  0000 L CNN
F 1 "0nF" H 10565 1155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10488 1050 50  0001 C CNN
F 3 "~" H 10450 1200 50  0001 C CNN
	1    10450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1350 10450 1450
Wire Wire Line
	700  950  700  1050
Wire Wire Line
	700  950  1400 950 
Wire Wire Line
	1400 950  1400 1050
Connection ~ 1400 950 
Wire Wire Line
	1400 950  1700 950 
Wire Wire Line
	700  1350 700  1450
Wire Wire Line
	700  1450 1400 1450
Wire Wire Line
	2200 1450 2200 1350
Wire Wire Line
	1400 1350 1400 1450
Connection ~ 1400 1450
Wire Wire Line
	1400 1450 2200 1450
Connection ~ 2200 1450
Wire Notes Line
	550  550  550  1800
Text Notes 600  650  0    50   ~ 0
Power
Text Notes 8150 650  0    50   ~ 0
Probe
Wire Notes Line
	11150 1700 11150 550 
Wire Wire Line
	9050 2150 8850 2150
Text GLabel 8450 2150 0    50   Input ~ 0
PROBE
Text GLabel 8450 4250 0    50   Input ~ 0
PROBE
Wire Wire Line
	8550 2150 8450 2150
Wire Wire Line
	8550 4250 8450 4250
Wire Wire Line
	10450 3900 9350 3900
Text GLabel 10850 4350 2    50   Input ~ 0
ADC-
Text GLabel 10850 2750 2    50   Input ~ 0
ADC+
Wire Wire Line
	10850 2750 10750 2750
Connection ~ 10750 2750
Wire Wire Line
	10850 4350 10750 4350
Connection ~ 10750 4350
Wire Notes Line
	11150 3600 11150 5200
Text Notes 8150 3700 0    50   ~ 0
Amp-
Text Notes 8150 1900 0    50   ~ 0
AMP+
Wire Wire Line
	4950 2700 4950 2800
Text GLabel 4850 2800 0    50   Input ~ 0
MCU_RESET
Wire Wire Line
	4850 2800 4950 2800
Connection ~ 4950 2800
Wire Wire Line
	4950 2800 4950 2900
Wire Notes Line
	5350 2050 5350 3550
Text Notes 4350 2150 0    50   ~ 0
MCU Reset
$Comp
L Device:C C9
U 1 1 5C784E04
P 4400 1300
F 0 "C9" H 4286 1254 50  0000 R CNN
F 1 "100nF" H 4286 1345 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 1150 50  0001 C CNN
F 3 "~" H 4400 1300 50  0001 C CNN
	1    4400 1300
	1    0    0    1   
$EndComp
Text GLabel 1800 3100 2    50   Input ~ 0
MCU_MOSI
Text GLabel 1100 3000 0    50   Input ~ 0
MCU_MISO
Text GLabel 1100 3100 0    50   Input ~ 0
MCU_SCK
Text GLabel 1100 3200 0    50   Input ~ 0
MCU_RESET
Wire Wire Line
	1800 3100 1700 3100
Wire Wire Line
	1200 3000 1100 3000
Wire Wire Line
	1200 3100 1100 3100
Wire Wire Line
	1200 3200 1100 3200
$Comp
L power:GND #PWR06
U 1 1 5C837D4C
P 1800 3300
F 0 "#PWR06" H 1800 3050 50  0001 C CNN
F 1 "GND" H 1805 3127 50  0000 C CNN
F 2 "" H 1800 3300 50  0001 C CNN
F 3 "" H 1800 3300 50  0001 C CNN
	1    1800 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5C837F91
P 2200 2900
F 0 "#PWR08" H 2200 2750 50  0001 C CNN
F 1 "+3.3V" H 2215 3073 50  0000 C CNN
F 2 "" H 2200 2900 50  0001 C CNN
F 3 "" H 2200 2900 50  0001 C CNN
	1    2200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3300 1800 3200
Wire Wire Line
	1800 3200 1700 3200
Wire Wire Line
	1700 3000 1800 3000
Wire Wire Line
	2100 3000 2200 3000
Wire Wire Line
	2200 3000 2200 2900
Wire Notes Line
	2350 2650 2350 3550
Text Notes 600  2750 0    50   ~ 0
Conn ISP
Text GLabel 6400 6800 2    50   Input ~ 0
RN_TX
Text GLabel 6400 6700 2    50   Input ~ 0
RN_RX
Text GLabel 4400 5800 0    50   Input ~ 0
RN_RESET
Text GLabel 5700 700  0    50   Input ~ 0
ADC_POWER
Wire Wire Line
	4300 1050 4400 1050
Wire Wire Line
	4400 1050 4400 1150
Connection ~ 4400 1050
Wire Notes Line
	11150 3500 11150 1800
Text Notes 3750 1100 1    50   ~ 0
Power Analog
Wire Notes Line
	5150 550  6200 550 
Wire Notes Line
	6200 550  6200 1800
Wire Notes Line
	6200 1800 5150 1800
Wire Notes Line
	5150 1800 5150 550 
Text Notes 5200 650  0    50   ~ 0
Power OpAmp
$Comp
L Device:Opamp_Dual_Generic U4
U 3 1 5C9F4439
P 6000 1150
F 0 "U4" V 6100 1100 50  0000 L CNN
F 1 "Opamp_Dual_Generic" V 6000 750 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6000 1150 50  0001 C CNN
F 3 "~" H 6000 1150 50  0001 C CNN
	3    6000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5CA2C962
P 5800 1550
F 0 "#PWR028" H 5800 1300 50  0001 C CNN
F 1 "GND" H 5805 1377 50  0000 C CNN
F 2 "" H 5800 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1450 4400 1500
Wire Notes Line
	550  2650 550  3550
Wire Notes Line
	550  3550 2350 3550
Wire Notes Line
	550  2650 2350 2650
Wire Notes Line
	4300 2050 4300 3550
Wire Notes Line
	4300 2050 5350 2050
Wire Notes Line
	4300 3550 5350 3550
Wire Notes Line
	8100 1800 8100 3500
Wire Notes Line
	8100 3500 11150 3500
Wire Notes Line
	8100 1800 11150 1800
Wire Notes Line
	8100 3600 8100 5200
Wire Notes Line
	8100 5200 11150 5200
Wire Notes Line
	8100 3600 11150 3600
$Comp
L Device:R R3
U 1 1 5CAB6D35
P 5600 2550
F 0 "R3" H 5530 2504 50  0000 R CNN
F 1 "232R" H 5530 2595 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5530 2550 50  0001 C CNN
F 3 "~" H 5600 2550 50  0001 C CNN
	1    5600 2550
	-1   0    0    1   
$EndComp
Text GLabel 5700 2300 2    50   Input ~ 0
BAT_VCC
$Comp
L Device:R R4
U 1 1 5CABDC62
P 5600 3050
F 0 "R4" H 5530 3004 50  0000 R CNN
F 1 "232R" H 5530 3095 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5530 3050 50  0001 C CNN
F 3 "~" H 5600 3050 50  0001 C CNN
	1    5600 3050
	-1   0    0    1   
$EndComp
Text GLabel 5700 3300 2    50   Input ~ 0
BAT_GND
Text GLabel 5700 2800 2    50   Input ~ 0
BAT_ADC
Wire Wire Line
	5600 2400 5600 2300
Wire Wire Line
	5600 3300 5600 3200
Wire Wire Line
	5600 2700 5600 2800
Wire Wire Line
	5600 2800 5700 2800
Connection ~ 5600 2800
Wire Wire Line
	5600 2800 5600 2900
Text GLabel 800  800  2    50   Input ~ 0
BAT_VCC
Connection ~ 700  950 
Text Notes 5500 2150 0    50   ~ 0
Battery Monitor
$Comp
L rn2483:RN2483 U3
U 1 1 5CB2105A
P 5400 6000
F 0 "U3" H 5400 4520 60  0000 C CNN
F 1 "RN2483" H 5400 4414 60  0000 C CNN
F 2 "kiu-footprint:RN2483" H 5500 5300 60  0001 C CNN
F 3 "" H 5500 5300 60  0000 C CNN
	1    5400 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5CB21314
P 4400 5400
F 0 "#PWR016" H 4400 5150 50  0001 C CNN
F 1 "GND" V 4405 5272 50  0000 R CNN
F 2 "" H 4400 5400 50  0001 C CNN
F 3 "" H 4400 5400 50  0001 C CNN
	1    4400 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5CB213F6
P 4400 5900
F 0 "#PWR017" H 4400 5650 50  0001 C CNN
F 1 "GND" V 4405 5772 50  0000 R CNN
F 2 "" H 4400 5900 50  0001 C CNN
F 3 "" H 4400 5900 50  0001 C CNN
	1    4400 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5CB21457
P 4400 6700
F 0 "#PWR018" H 4400 6450 50  0001 C CNN
F 1 "GND" V 4405 6572 50  0000 R CNN
F 2 "" H 4400 6700 50  0001 C CNN
F 3 "" H 4400 6700 50  0001 C CNN
	1    4400 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5CB214B8
P 4400 7300
F 0 "#PWR019" H 4400 7050 50  0001 C CNN
F 1 "GND" V 4405 7172 50  0000 R CNN
F 2 "" H 4400 7300 50  0001 C CNN
F 3 "" H 4400 7300 50  0001 C CNN
	1    4400 7300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5CB21519
P 6400 7300
F 0 "#PWR034" H 6400 7050 50  0001 C CNN
F 1 "GND" V 6405 7172 50  0000 R CNN
F 2 "" H 6400 7300 50  0001 C CNN
F 3 "" H 6400 7300 50  0001 C CNN
	1    6400 7300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5CB215D0
P 6400 6600
F 0 "#PWR033" H 6400 6350 50  0001 C CNN
F 1 "GND" V 6405 6472 50  0000 R CNN
F 2 "" H 6400 6600 50  0001 C CNN
F 3 "" H 6400 6600 50  0001 C CNN
	1    6400 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5CB21631
P 6400 6300
F 0 "#PWR032" H 6400 6050 50  0001 C CNN
F 1 "GND" V 6405 6172 50  0000 R CNN
F 2 "" H 6400 6300 50  0001 C CNN
F 3 "" H 6400 6300 50  0001 C CNN
	1    6400 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5CB21692
P 6400 5400
F 0 "#PWR031" H 6400 5150 50  0001 C CNN
F 1 "GND" V 6405 5272 50  0000 R CNN
F 2 "" H 6400 5400 50  0001 C CNN
F 3 "" H 6400 5400 50  0001 C CNN
	1    6400 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5CB216F3
P 5850 4900
F 0 "#PWR029" H 5850 4650 50  0001 C CNN
F 1 "GND" H 5855 4727 50  0000 C CNN
F 2 "" H 5850 4900 50  0001 C CNN
F 3 "" H 5850 4900 50  0001 C CNN
	1    5850 4900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5CB217D5
P 5700 4900
F 0 "#PWR027" H 5700 4650 50  0001 C CNN
F 1 "GND" H 5705 4727 50  0000 C CNN
F 2 "" H 5700 4900 50  0001 C CNN
F 3 "" H 5700 4900 50  0001 C CNN
	1    5700 4900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5CB21836
P 5450 4850
F 0 "#PWR026" H 5450 4600 50  0001 C CNN
F 1 "GND" H 5455 4677 50  0000 C CNN
F 2 "" H 5450 4850 50  0001 C CNN
F 3 "" H 5450 4850 50  0001 C CNN
	1    5450 4850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5CB21897
P 5100 4900
F 0 "#PWR025" H 5100 4650 50  0001 C CNN
F 1 "GND" H 5105 4727 50  0000 C CNN
F 2 "" H 5100 4900 50  0001 C CNN
F 3 "" H 5100 4900 50  0001 C CNN
	1    5100 4900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5CB218F8
P 4950 4900
F 0 "#PWR024" H 4950 4650 50  0001 C CNN
F 1 "GND" H 4955 4727 50  0000 C CNN
F 2 "" H 4950 4900 50  0001 C CNN
F 3 "" H 4950 4900 50  0001 C CNN
	1    4950 4900
	-1   0    0    1   
$EndComp
NoConn ~ 4500 5500
NoConn ~ 4500 5600
NoConn ~ 4500 5700
NoConn ~ 4500 6100
NoConn ~ 4500 6200
NoConn ~ 4500 6300
NoConn ~ 4500 6400
NoConn ~ 4500 6500
NoConn ~ 4500 6600
NoConn ~ 4500 6800
NoConn ~ 4500 6900
NoConn ~ 4500 7000
NoConn ~ 4500 7100
NoConn ~ 4500 7200
NoConn ~ 6300 7200
NoConn ~ 6300 7100
NoConn ~ 6300 7000
NoConn ~ 6300 6900
NoConn ~ 6300 6500
NoConn ~ 6300 6400
NoConn ~ 6300 6100
NoConn ~ 6300 6000
NoConn ~ 6300 5900
NoConn ~ 6300 5800
NoConn ~ 6300 5700
NoConn ~ 6300 5600
NoConn ~ 6300 5500
Text GLabel 4400 6000 0    50   Input ~ 0
RN_POWER
Text GLabel 6400 6200 2    50   Input ~ 0
RN_POWER
Wire Wire Line
	4500 5400 4400 5400
Wire Wire Line
	4500 5800 4400 5800
Wire Wire Line
	4500 5900 4400 5900
Wire Wire Line
	4500 6000 4400 6000
Wire Wire Line
	4500 6700 4400 6700
Wire Wire Line
	4500 7300 4400 7300
Wire Wire Line
	4950 4900 4950 5000
Wire Wire Line
	5100 5000 5100 4900
Wire Wire Line
	5400 5000 5400 4900
Wire Wire Line
	5700 5000 5700 4900
Wire Wire Line
	5850 5000 5850 4900
Wire Wire Line
	6300 5400 6400 5400
Wire Wire Line
	6300 6200 6400 6200
Wire Wire Line
	6300 6300 6400 6300
Wire Wire Line
	6300 6600 6400 6600
Wire Wire Line
	6300 7300 6400 7300
Wire Wire Line
	6400 6700 6300 6700
Wire Wire Line
	6400 6800 6300 6800
Wire Notes Line
	6900 7700 6900 4400
Wire Notes Line
	3900 4400 3900 7700
Text Notes 3950 4550 0    50   ~ 0
LoRa
Wire Wire Line
	5700 2300 5600 2300
Wire Wire Line
	5700 3300 5600 3300
Wire Notes Line
	3900 4400 6900 4400
Wire Notes Line
	6900 7700 3900 7700
Text GLabel 3650 3050 2    50   Input ~ 0
RN_RX
Text GLabel 3650 3150 2    50   Input ~ 0
RN_TX
$Comp
L power:GND #PWR03
U 1 1 5CDADB33
P 1200 2350
F 0 "#PWR03" H 1200 2100 50  0001 C CNN
F 1 "GND" V 1205 2222 50  0000 R CNN
F 2 "" H 1200 2350 50  0001 C CNN
F 3 "" H 1200 2350 50  0001 C CNN
	1    1200 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 3050 3550 3050
Wire Wire Line
	3650 3150 3550 3150
Text GLabel 2950 3150 0    50   Input ~ 0
MCU_RX
Text GLabel 2950 3050 0    50   Input ~ 0
MCU_TX
Wire Wire Line
	2950 3050 3050 3050
Wire Wire Line
	2950 3150 3050 3150
$Comp
L power:+3.3V #PWR02
U 1 1 5CDD5F0C
P 1200 2250
F 0 "#PWR02" H 1200 2100 50  0001 C CNN
F 1 "+3.3V" V 1215 2378 50  0000 L CNN
F 2 "" H 1200 2250 50  0001 C CNN
F 3 "" H 1200 2250 50  0001 C CNN
	1    1200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 2250 1200 2250
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5CE0ACE0
P 3250 3050
F 0 "J3" H 3300 3367 50  0000 C CNN
F 1 "DEBUG RN2483" H 3300 3276 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3250 3050 50  0001 C CNN
F 3 "~" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5CE3451C
P 1500 2250
F 0 "J2" H 1580 2242 50  0000 L CNN
F 1 "POWER" H 1580 2151 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1500 2250 50  0001 C CNN
F 3 "~" H 1500 2250 50  0001 C CNN
	1    1500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2350 1300 2350
Wire Notes Line
	2350 2550 2350 2050
Wire Notes Line
	2350 2050 550  2050
Wire Notes Line
	550  2050 550  2550
Wire Notes Line
	550  2550 2350 2550
Text Notes 600  2150 0    50   ~ 0
Conn Power
Wire Notes Line
	5450 2050 5450 3550
Text Notes 2500 2750 0    50   ~ 0
Conn Debug
Wire Notes Line
	2450 3550 4200 3550
$Comp
L power:GND #PWR037
U 1 1 5CFF2608
P 10250 6200
F 0 "#PWR037" H 10250 5950 50  0001 C CNN
F 1 "GND" H 10255 6027 50  0000 C CNN
F 2 "" H 10250 6200 50  0001 C CNN
F 3 "" H 10250 6200 50  0001 C CNN
	1    10250 6200
	1    0    0    -1  
$EndComp
Text Notes 9650 5550 0    50   ~ 0
Conn Serial
Wire Wire Line
	800  800  700  800 
Wire Wire Line
	700  800  700  950 
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U1
U 1 1 5D0AD01B
P 1700 5700
F 0 "U1" H 1700 4114 50  0000 C CNN
F 1 "ATmega328PB-AU" H 1700 4023 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 1700 5700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 1700 5700 50  0001 C CNN
	1    1700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VADC #PWR07
U 1 1 5D0BAF60
P 1900 4050
F 0 "#PWR07" H 2050 4000 50  0001 C CNN
F 1 "+3.3VADC" H 1920 4193 50  0000 C CNN
F 2 "" H 1900 4050 50  0001 C CNN
F 3 "" H 1900 4050 50  0001 C CNN
	1    1900 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5D0BAF66
P 1600 4050
F 0 "#PWR04" H 1600 3900 50  0001 C CNN
F 1 "+3.3V" H 1615 4223 50  0000 C CNN
F 2 "" H 1600 4050 50  0001 C CNN
F 3 "" H 1600 4050 50  0001 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D0BAF6C
P 1700 7450
F 0 "#PWR05" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7450 1700 7200
Text GLabel 2500 6000 2    50   Input ~ 0
MCU_RESET
Text GLabel 2500 6300 2    50   Input ~ 0
MCU_TX
Wire Wire Line
	1900 4050 1900 4100
Wire Wire Line
	1900 4100 1800 4100
Wire Wire Line
	1800 4100 1800 4200
Wire Wire Line
	1600 4050 1600 4100
Wire Wire Line
	1600 4100 1700 4100
Wire Wire Line
	1700 4100 1700 4200
Text GLabel 2500 5400 2    50   Input ~ 0
ADC+
Text GLabel 2500 5600 2    50   Input ~ 0
ADC-
Text GLabel 3000 4900 2    50   Input ~ 0
MCU_MISO
Text GLabel 3000 4700 2    50   Input ~ 0
MCU_MOSI
Text GLabel 2500 5000 2    50   Input ~ 0
MCU_SCK
Text GLabel 2500 4500 2    50   Input ~ 0
RN_POWER
Text GLabel 2500 5500 2    50   Input ~ 0
ADC_POWER
Text GLabel 2500 6200 2    50   Input ~ 0
MCU_RX
$Comp
L Device:Crystal Y1
U 1 1 5D0BAFA7
P 3350 5600
F 0 "Y1" V 3304 5731 50  0000 L CNN
F 1 "32768 Hz" V 3395 5731 50  0000 L CNN
F 2 "Crystals:Crystal_AT310_d3.0mm_l10.0mm_Vertical" H 3350 5600 50  0001 C CNN
F 3 "~" H 3350 5600 50  0001 C CNN
	1    3350 5600
	1    0    0    -1  
$EndComp
Text GLabel 2500 4600 2    50   Input ~ 0
RN_RESET
Text Notes 600  3750 0    50   ~ 0
MCU
$Comp
L Device:C C1
U 1 1 5D0BAFB6
P 950 4750
F 0 "C1" H 750 4800 50  0000 L CNN
F 1 "100nF" H 600 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 988 4600 50  0001 C CNN
F 3 "~" H 950 4750 50  0001 C CNN
	1    950  4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D0BAFBD
P 950 5000
F 0 "#PWR01" H 950 4750 50  0001 C CNN
F 1 "GND" H 955 4827 50  0000 C CNN
F 2 "" H 950 5000 50  0001 C CNN
F 3 "" H 950 5000 50  0001 C CNN
	1    950  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5000 950  4900
Wire Wire Line
	950  4500 950  4600
Text GLabel 2500 5900 2    50   Input ~ 0
BAT_GND
Text GLabel 2500 5800 2    50   Input ~ 0
BAT_ADC
Wire Notes Line
	3800 7700 550  7700
Wire Wire Line
	1100 4500 950  4500
$Comp
L kiu:BAV70LT D1
U 1 1 5D0E34C2
P 10200 2250
F 0 "D1" H 10200 2515 50  0000 C CNN
F 1 "BAV70LT" H 10200 2424 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10200 2050 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/308/BAV70LT1-D-102760.pdf" H 10200 2350 50  0001 C CNN
	1    10200 2250
	1    0    0    -1  
$EndComp
$Comp
L kiu:BAV70LT D2
U 1 1 5D0E3A81
P 10200 4350
F 0 "D2" H 10200 4615 50  0000 C CNN
F 1 "BAV70LT" H 10200 4524 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10200 4150 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/308/BAV70LT1-D-102760.pdf" H 10200 4450 50  0001 C CNN
	1    10200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4300 9950 4300
Wire Wire Line
	9950 4300 9950 4350
Wire Wire Line
	9650 4350 9950 4350
Wire Wire Line
	10050 4400 9950 4400
Wire Wire Line
	9950 4400 9950 4350
Connection ~ 9950 4350
Wire Wire Line
	10050 2200 9950 2200
Wire Wire Line
	9950 2200 9950 2250
Wire Wire Line
	9650 2250 9950 2250
Wire Wire Line
	10050 2300 9950 2300
Wire Wire Line
	9950 2300 9950 2250
Connection ~ 9950 2250
Text Notes 450  250  0    50   ~ 0
TODO\n- Crystal Load\n
$Comp
L Device:Antenna AE2
U 1 1 5D1374EC
P 5550 4550
F 0 "AE2" H 5630 4541 50  0000 L CNN
F 1 "Antenna" H 5630 4450 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 5550 4550 50  0001 C CNN
F 3 "~" H 5550 4550 50  0001 C CNN
	1    5550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4750 5550 5000
Text GLabel 6400 4500 2    50   Input ~ 0
RN_POWER
$Comp
L Device:C C13
U 1 1 5D169E40
P 6300 4800
F 0 "C13" H 6186 4754 50  0000 R CNN
F 1 "100nF" H 6186 4845 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6338 4650 50  0001 C CNN
F 3 "~" H 6300 4800 50  0001 C CNN
	1    6300 4800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5D169EE0
P 6300 5050
F 0 "#PWR030" H 6300 4800 50  0001 C CNN
F 1 "GND" H 6305 4877 50  0000 C CNN
F 2 "" H 6300 5050 50  0001 C CNN
F 3 "" H 6300 5050 50  0001 C CNN
	1    6300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1050 2700 950 
Wire Wire Line
	2700 950  2600 950 
Wire Wire Line
	2700 1350 2700 1450
Connection ~ 2700 1450
Wire Wire Line
	2700 1450 2200 1450
Wire Wire Line
	2700 950  2800 950 
Connection ~ 2700 950 
Wire Wire Line
	3100 950  3200 950 
Wire Wire Line
	3200 950  3200 1050
Wire Wire Line
	3200 950  3200 800 
Connection ~ 3200 950 
Wire Wire Line
	3200 1450 3200 1350
Wire Wire Line
	2700 1450 3200 1450
Wire Wire Line
	3200 1450 3200 1550
Connection ~ 3200 1450
Wire Notes Line
	3550 550  3550 1800
Wire Notes Line
	550  550  3550 550 
Wire Notes Line
	550  1800 3550 1800
$Comp
L Device:CP C10
U 1 1 5D26F84F
P 4700 1300
F 0 "C10" H 4818 1346 50  0000 L CNN
F 1 "10uF" H 4818 1255 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 4738 1150 50  0001 C CNN
F 3 "~" H 4700 1300 50  0001 C CNN
	1    4700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5D26FCE0
P 3900 800
F 0 "#PWR015" H 3900 650 50  0001 C CNN
F 1 "+3.3V" H 3915 973 50  0000 C CNN
F 2 "" H 3900 800 50  0001 C CNN
F 3 "" H 3900 800 50  0001 C CNN
	1    3900 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1050 3900 1050
Wire Wire Line
	3900 1050 3900 800 
Wire Notes Line
	3650 550  3650 1800
$Comp
L Device:Ferrite_Bead L2
U 1 1 5D28FBA7
P 4150 1050
F 0 "L2" V 3876 1050 50  0000 C CNN
F 1 "Ferrite_Bead" V 3967 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4080 1050 50  0001 C CNN
F 3 "~" H 4150 1050 50  0001 C CNN
	1    4150 1050
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5D2E4189
P 5700 1150
F 0 "C12" H 5586 1104 50  0000 R CNN
F 1 "100nF" H 5586 1195 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5738 1000 50  0001 C CNN
F 3 "~" H 5700 1150 50  0001 C CNN
	1    5700 1150
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 850  5900 800 
Wire Wire Line
	5900 1500 5800 1500
Wire Wire Line
	5900 1500 5900 1450
Wire Wire Line
	5700 800  5800 800 
Wire Wire Line
	5800 700  5800 800 
Connection ~ 5800 800 
Wire Wire Line
	5800 800  5900 800 
Wire Wire Line
	5800 1550 5800 1500
Connection ~ 5800 1500
Wire Wire Line
	5800 1500 5700 1500
Wire Wire Line
	5800 700  5700 700 
Wire Wire Line
	5700 1300 5700 1500
Wire Wire Line
	5700 1000 5700 800 
Wire Notes Line
	8100 550  8100 1700
Wire Notes Line
	8100 550  11150 550 
Wire Notes Line
	8100 1700 11150 1700
$Comp
L power:+3.3V #PWR011
U 1 1 5D611BB6
P 3400 3900
F 0 "#PWR011" H 3400 3750 50  0001 C CNN
F 1 "+3.3V" H 3415 4073 50  0000 C CNN
F 2 "" H 3400 3900 50  0001 C CNN
F 3 "" H 3400 3900 50  0001 C CNN
	1    3400 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D611BBC
P 3400 4400
F 0 "#PWR012" H 3400 4150 50  0001 C CNN
F 1 "GND" H 3405 4227 50  0000 C CNN
F 2 "" H 3400 4400 50  0001 C CNN
F 3 "" H 3400 4400 50  0001 C CNN
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D611BC4
P 3400 4150
F 0 "C4" H 3286 4104 50  0000 R CNN
F 1 "100nF" H 3286 4195 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3438 4000 50  0001 C CNN
F 3 "~" H 3400 4150 50  0001 C CNN
	1    3400 4150
	1    0    0    1   
$EndComp
Wire Wire Line
	6300 4500 6400 4500
Wire Wire Line
	4550 750  4550 1050
Wire Wire Line
	4550 1050 4400 1050
Wire Wire Line
	4550 1550 4550 1500
Connection ~ 4550 1500
Wire Wire Line
	4550 1500 4400 1500
Wire Wire Line
	4550 1050 4700 1050
Wire Wire Line
	4700 1050 4700 1150
Connection ~ 4550 1050
Wire Wire Line
	4700 1450 4700 1500
Wire Wire Line
	4550 1500 4700 1500
Wire Notes Line
	5050 1800 5050 550 
Wire Notes Line
	5050 550  3650 550 
Wire Notes Line
	3650 1800 5050 1800
Wire Notes Line
	6200 2050 6200 3550
Wire Notes Line
	5450 3550 6200 3550
Wire Notes Line
	5450 2050 6200 2050
Wire Wire Line
	2500 6200 2300 6200
Wire Wire Line
	2500 6300 2300 6300
Wire Wire Line
	2500 6000 2300 6000
Wire Wire Line
	2300 5000 2500 5000
Text GLabel 3000 5000 2    50   Input ~ 0
MCU_DBG_RX
Text GLabel 3000 4800 2    50   Input ~ 0
MCU_DBG_TX
Wire Wire Line
	2300 4900 2950 4900
Wire Wire Line
	3000 5000 2950 5000
Wire Wire Line
	2950 5000 2950 4900
Connection ~ 2950 4900
Wire Wire Line
	2950 4900 3000 4900
Wire Wire Line
	2300 4800 2950 4800
Wire Wire Line
	3000 4700 2950 4700
Wire Wire Line
	2950 4700 2950 4800
Connection ~ 2950 4800
Wire Wire Line
	2950 4800 3000 4800
Wire Wire Line
	2500 5400 2300 5400
Wire Wire Line
	2500 5800 2300 5800
Wire Wire Line
	2500 5900 2300 5900
Wire Wire Line
	2500 4500 2300 4500
Wire Wire Line
	2500 4600 2300 4600
NoConn ~ 2300 4700
NoConn ~ 1100 6200
NoConn ~ 1100 6300
NoConn ~ 1100 6400
NoConn ~ 1100 6500
Wire Notes Line
	3800 3650 550  3650
Wire Notes Line
	550  3650 550  7700
Wire Notes Line
	3800 3650 3800 7700
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5CA6C8C3
P 10550 5900
F 0 "J6" H 10630 5892 50  0000 L CNN
F 1 "DEBUG RXTX" H 10630 5801 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 10550 5900 50  0001 C CNN
F 3 "~" H 10550 5900 50  0001 C CNN
	1    10550 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR036
U 1 1 5CA6D0F0
P 10250 5700
F 0 "#PWR036" H 10250 5550 50  0001 C CNN
F 1 "+3.3V" H 10265 5873 50  0000 C CNN
F 2 "" H 10250 5700 50  0001 C CNN
F 3 "" H 10250 5700 50  0001 C CNN
	1    10250 5700
	1    0    0    -1  
$EndComp
Wire Notes Line
	11150 5450 11150 6450
Wire Wire Line
	10350 6100 10250 6100
Wire Wire Line
	10250 6100 10250 6200
Wire Wire Line
	10350 5800 10250 5800
Wire Wire Line
	10250 5800 10250 5700
Text GLabel 10250 6000 0    50   Input ~ 0
MCU_DBG_TX
Text GLabel 10250 5900 0    50   Input ~ 0
MCU_DBG_RX
Wire Wire Line
	10350 5900 10250 5900
Wire Wire Line
	10350 6000 10250 6000
Wire Notes Line
	9600 6450 9600 5450
Wire Notes Line
	9600 5450 11150 5450
Wire Notes Line
	9600 6450 11150 6450
$Comp
L Device:C C6
U 1 1 5CB1CCC4
P 3250 5850
F 0 "C6" H 3136 5804 50  0000 R CNN
F 1 "0pF" H 3136 5895 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3288 5700 50  0001 C CNN
F 3 "~" H 3250 5850 50  0001 C CNN
	1    3250 5850
	1    0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5CB1CD68
P 3450 5850
F 0 "C8" H 3336 5804 50  0000 R CNN
F 1 "0pF" H 3336 5895 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3488 5700 50  0001 C CNN
F 3 "~" H 3450 5850 50  0001 C CNN
	1    3450 5850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5CB4D9FC
P 3450 6100
F 0 "#PWR013" H 3450 5850 50  0001 C CNN
F 1 "GND" H 3455 5927 50  0000 C CNN
F 2 "" H 3450 6100 50  0001 C CNN
F 3 "" H 3450 6100 50  0001 C CNN
	1    3450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6100 3450 6050
Wire Wire Line
	3250 6000 3250 6050
Wire Wire Line
	3250 6050 3450 6050
Connection ~ 3450 6050
Wire Wire Line
	3450 6050 3450 6000
Wire Wire Line
	3250 5700 3200 5700
Wire Wire Line
	3200 5700 3200 5600
Wire Wire Line
	3450 5700 3500 5700
Wire Wire Line
	3500 5700 3500 5600
Wire Wire Line
	3200 5200 3200 5600
Connection ~ 3200 5600
Wire Wire Line
	3500 5100 3500 5600
Wire Wire Line
	2300 5100 3500 5100
Connection ~ 3500 5600
Wire Wire Line
	2300 5200 3200 5200
Wire Wire Line
	3400 3900 3400 4000
Wire Wire Line
	3400 4300 3400 4400
Wire Wire Line
	6300 4500 6300 4650
Wire Wire Line
	6300 4950 6300 5050
Wire Notes Line
	2450 2600 4200 2600
Wire Notes Line
	2450 2600 2450 3550
Wire Notes Line
	4200 3550 4200 2600
NoConn ~ 5250 5000
Wire Wire Line
	2500 5600 2300 5600
Wire Wire Line
	2500 5500 2300 5500
NoConn ~ 2300 5700
$Comp
L Connector:TestPoint TP1
U 1 1 5CC8BCC8
P 5350 4850
F 0 "TP1" H 5408 4970 50  0000 L CNN
F 1 "TestPoint" H 5408 4879 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 5550 4850 50  0001 C CNN
F 3 "~" H 5550 4850 50  0001 C CNN
	1    5350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4850 5450 4900
Wire Wire Line
	5450 4900 5400 4900
Wire Wire Line
	5350 4850 5350 4900
Wire Wire Line
	5350 4900 5400 4900
Connection ~ 5400 4900
$EndSCHEMATC
