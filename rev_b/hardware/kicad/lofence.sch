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
L Connector_Generic:Conn_01x01 J1
U 1 1 5C6750D9
P 8650 850
F 0 "J1" H 8650 1000 50  0000 L CNN
F 1 "Fence+" H 8450 1100 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Big" H 8650 850 50  0001 C CNN
F 3 "~" H 8650 850 50  0001 C CNN
	1    8650 850 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5C675208
P 10750 850
F 0 "J2" H 10700 700 50  0000 L CNN
F 1 "Fence-" H 10700 600 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Big" H 10750 850 50  0001 C CNN
F 3 "~" H 10750 850 50  0001 C CNN
	1    10750 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U1
U 2 1 5C675676
P 9500 2000
F 0 "U1" H 9500 2350 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 9500 2250 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9500 2000 50  0001 C CNN
F 3 "~" H 9500 2000 50  0001 C CNN
	2    9500 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U1
U 3 1 5C675703
P 6700 2300
F 0 "U1" V 6650 2650 50  0000 R CNN
F 1 "Opamp_Dual_Generic" V 6750 2650 50  0000 R CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6700 2300 50  0001 C CNN
F 3 "~" H 6700 2300 50  0001 C CNN
	3    6700 2300
	0    -1   1    0   
$EndComp
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U2
U 1 1 5C675CE6
P 3300 1050
F 0 "U2" H 3300 1417 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 3300 1326 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 3300 650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 3050 1300 50  0001 C CNN
	1    3300 1050
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
P 2500 1200
F 0 "C2" H 2615 1246 50  0000 L CNN
F 1 "1.0uF" H 2615 1155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2538 1050 50  0001 C CNN
F 3 "~" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C67FBC6
P 3800 1200
F 0 "C3" H 3915 1246 50  0000 L CNN
F 1 "1.0uF" H 3915 1155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3838 1050 50  0001 C CNN
F 3 "~" H 3800 1200 50  0001 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C67FF11
P 4400 2400
F 0 "R9" H 4470 2446 50  0000 L CNN
F 1 "4k7" H 4470 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4330 2400 50  0001 C CNN
F 3 "~" H 4400 2400 50  0001 C CNN
	1    4400 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C67FFF9
P 4400 2900
F 0 "C6" H 4515 2946 50  0000 L CNN
F 1 "100nF" H 4515 2855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 2750 50  0001 C CNN
F 3 "~" H 4400 2900 50  0001 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C6802DB
P 10700 2750
F 0 "C5" H 10815 2796 50  0000 L CNN
F 1 "100nF" H 10815 2705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10738 2600 50  0001 C CNN
F 3 "~" H 10700 2750 50  0001 C CNN
	1    10700 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C6805CB
P 4300 1550
F 0 "#PWR06" H 4300 1300 50  0001 C CNN
F 1 "GND" H 4305 1377 50  0000 C CNN
F 2 "" H 4300 1550 50  0001 C CNN
F 3 "" H 4300 1550 50  0001 C CNN
	1    4300 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5C6808CF
P 4300 1200
F 0 "C4" H 4418 1246 50  0000 L CNN
F 1 "10uF" H 4418 1155 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 4338 1050 50  0001 C CNN
F 3 "~" H 4300 1200 50  0001 C CNN
	1    4300 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5C684D8F
P 6500 3700
F 0 "J3" H 6550 4017 50  0000 C CNN
F 1 "ISP" H 6550 3926 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 6500 3700 50  0001 C CNN
F 3 "~" H 6500 3700 50  0001 C CNN
	1    6500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1150 2800 1150
Wire Wire Line
	2800 1150 2800 950 
Connection ~ 2800 950 
Wire Wire Line
	2800 950  2900 950 
$Comp
L power:+3.3V #PWR01
U 1 1 5C69593D
P 4300 800
F 0 "#PWR01" H 4300 650 50  0001 C CNN
F 1 "+3.3V" H 4315 973 50  0000 C CNN
F 2 "" H 4300 800 50  0001 C CNN
F 3 "" H 4300 800 50  0001 C CNN
	1    4300 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5C695BCE
P 4400 2150
F 0 "#PWR07" H 4400 2000 50  0001 C CNN
F 1 "+3.3V" H 4415 2323 50  0000 C CNN
F 2 "" H 4400 2150 50  0001 C CNN
F 3 "" H 4400 2150 50  0001 C CNN
	1    4400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5C695D99
P 4400 3150
F 0 "#PWR013" H 4400 2900 50  0001 C CNN
F 1 "GND" H 4405 2977 50  0000 C CNN
F 2 "" H 4400 3150 50  0001 C CNN
F 3 "" H 4400 3150 50  0001 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3150 4400 3050
Wire Wire Line
	4400 2250 4400 2150
$Comp
L Device:R R10
U 1 1 5C69D10C
P 9350 2500
F 0 "R10" V 9143 2500 50  0000 C CNN
F 1 "100k" V 9234 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9280 2500 50  0001 C CNN
F 3 "~" H 9350 2500 50  0001 C CNN
	1    9350 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5C69D34E
P 10400 2750
F 0 "R12" H 10330 2704 50  0000 R CNN
F 1 "1M" H 10330 2795 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10330 2750 50  0001 C CNN
F 3 "~" H 10400 2750 50  0001 C CNN
	1    10400 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 2100 9100 2100
Wire Wire Line
	9100 2100 9100 2500
Wire Wire Line
	9100 2500 9200 2500
Wire Wire Line
	10400 2500 10400 2600
Wire Wire Line
	10300 2000 10400 2000
Wire Wire Line
	10400 2000 10400 2500
Connection ~ 10400 2500
Wire Wire Line
	10700 2600 10700 2500
Wire Wire Line
	10700 2500 10400 2500
Wire Wire Line
	10700 2900 10700 3000
Wire Wire Line
	10400 3000 10400 2900
$Comp
L power:GND #PWR011
U 1 1 5C6A30C5
P 10400 3000
F 0 "#PWR011" H 10400 2750 50  0001 C CNN
F 1 "GND" H 10405 2827 50  0000 C CNN
F 2 "" H 10400 3000 50  0001 C CNN
F 3 "" H 10400 3000 50  0001 C CNN
	1    10400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5C6A3170
P 10700 3000
F 0 "#PWR012" H 10700 2750 50  0001 C CNN
F 1 "GND" H 10705 2827 50  0000 C CNN
F 2 "" H 10700 3000 50  0001 C CNN
F 3 "" H 10700 3000 50  0001 C CNN
	1    10700 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C6A321B
P 8850 1900
F 0 "R7" V 8643 1900 50  0000 C CNN
F 1 "100k" V 8734 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8780 1900 50  0001 C CNN
F 3 "~" H 8850 1900 50  0001 C CNN
	1    8850 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5C6A4F9B
P 8850 4000
F 0 "R17" V 8643 4000 50  0000 C CNN
F 1 "100k" V 8734 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8780 4000 50  0001 C CNN
F 3 "~" H 8850 4000 50  0001 C CNN
	1    8850 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5C6A5017
P 9350 3650
F 0 "R16" V 9143 3650 50  0000 C CNN
F 1 "100k" V 9234 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9280 3650 50  0001 C CNN
F 3 "~" H 9350 3650 50  0001 C CNN
	1    9350 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3650 9100 3650
Wire Wire Line
	9100 3650 9100 4000
Wire Wire Line
	9100 4000 9200 4000
Wire Wire Line
	9100 4000 9000 4000
Connection ~ 9100 4000
$Comp
L Device:R R18
U 1 1 5C6A90AD
P 9100 4450
F 0 "R18" H 9030 4404 50  0000 R CNN
F 1 "100k" H 9030 4495 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9030 4450 50  0001 C CNN
F 3 "~" H 9100 4450 50  0001 C CNN
	1    9100 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 4200 9100 4200
Wire Wire Line
	9100 4200 9100 4300
$Comp
L power:GND #PWR020
U 1 1 5C6AA40C
P 9100 4700
F 0 "#PWR020" H 9100 4450 50  0001 C CNN
F 1 "GND" H 9105 4527 50  0000 C CNN
F 2 "" H 9100 4700 50  0001 C CNN
F 3 "" H 9100 4700 50  0001 C CNN
	1    9100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4700 9100 4600
$Comp
L Device:R R19
U 1 1 5C6AB9AF
P 10400 4450
F 0 "R19" H 10330 4404 50  0000 R CNN
F 1 "1M" H 10330 4495 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10330 4450 50  0001 C CNN
F 3 "~" H 10400 4450 50  0001 C CNN
	1    10400 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5C6ACD94
P 10700 4450
F 0 "C7" H 10815 4496 50  0000 L CNN
F 1 "100nF" H 10815 4405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10738 4300 50  0001 C CNN
F 3 "~" H 10700 4450 50  0001 C CNN
	1    10700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3650 10400 4100
Wire Wire Line
	10300 4100 10400 4100
Connection ~ 10400 4100
Wire Wire Line
	10400 4100 10400 4300
Wire Wire Line
	10700 4300 10700 4100
Wire Wire Line
	10700 4100 10400 4100
$Comp
L power:GND #PWR021
U 1 1 5C6B0D9E
P 10400 4700
F 0 "#PWR021" H 10400 4450 50  0001 C CNN
F 1 "GND" H 10405 4527 50  0000 C CNN
F 2 "" H 10400 4700 50  0001 C CNN
F 3 "" H 10400 4700 50  0001 C CNN
	1    10400 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5C6B0DF5
P 10700 4700
F 0 "#PWR022" H 10700 4450 50  0001 C CNN
F 1 "GND" H 10705 4527 50  0000 C CNN
F 2 "" H 10700 4700 50  0001 C CNN
F 3 "" H 10700 4700 50  0001 C CNN
	1    10700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4600 10700 4700
Wire Wire Line
	10400 4600 10400 4700
$Comp
L Device:R R1
U 1 1 5C6BAFC5
P 9100 850
F 0 "R1" V 8893 850 50  0000 C CNN
F 1 "10M 6KV" V 8984 850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 9030 850 50  0001 C CNN
F 3 "~" H 9100 850 50  0001 C CNN
	1    9100 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C6BB07B
P 9500 850
F 0 "R2" V 9293 850 50  0000 C CNN
F 1 "10M 6KV" V 9384 850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 9430 850 50  0001 C CNN
F 3 "~" H 9500 850 50  0001 C CNN
	1    9500 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C6BB223
P 9900 850
F 0 "R3" V 9693 850 50  0000 C CNN
F 1 "1M 700V" V 9784 850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9830 850 50  0001 C CNN
F 3 "~" H 9900 850 50  0001 C CNN
	1    9900 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C6BB291
P 10300 850
F 0 "R4" V 10093 850 50  0000 C CNN
F 1 "5k8" V 10184 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10230 850 50  0001 C CNN
F 3 "~" H 10300 850 50  0001 C CNN
	1    10300 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 850  8950 850 
Wire Wire Line
	9250 850  9350 850 
Wire Wire Line
	9650 850  9750 850 
Wire Wire Line
	10050 850  10100 850 
Text GLabel 10100 1050 3    50   Input ~ 0
PROBE
Wire Wire Line
	10100 850  10100 1050
Connection ~ 10100 850 
Wire Wire Line
	10100 850  10150 850 
Wire Wire Line
	2500 950  2500 1050
Wire Wire Line
	2500 950  2800 950 
Wire Wire Line
	700  1350 700  1450
Wire Wire Line
	3300 1450 3300 1350
Wire Wire Line
	2500 1350 2500 1450
Wire Wire Line
	2500 1450 3300 1450
Connection ~ 3300 1450
Wire Notes Line
	550  550  550  1800
Text Notes 600  650  0    50   ~ 0
Power In
Text Notes 8300 650  0    50   ~ 0
Probe
Wire Wire Line
	9200 1900 9000 1900
Text GLabel 8600 1900 0    50   Input ~ 0
PROBE
Text GLabel 8600 4000 0    50   Input ~ 0
PROBE
Wire Wire Line
	8700 1900 8600 1900
Wire Wire Line
	8700 4000 8600 4000
Wire Wire Line
	10400 3650 9500 3650
Text GLabel 10800 4100 2    50   Input ~ 0
ADC-
Text GLabel 10800 2500 2    50   Input ~ 0
ADC+
Wire Wire Line
	10800 2500 10700 2500
Connection ~ 10700 2500
Wire Wire Line
	10800 4100 10700 4100
Connection ~ 10700 4100
Text Notes 8300 3450 0    50   ~ 0
Amp-
Text Notes 8300 1650 0    50   ~ 0
AMP+
Wire Wire Line
	4400 2550 4400 2650
Text GLabel 4250 2650 0    50   Input ~ 0
MCU_RESET
Connection ~ 4400 2650
Wire Wire Line
	4400 2650 4400 2750
Text Notes 3700 2000 0    50   ~ 0
MCU Reset
Text GLabel 6900 3700 2    50   Input ~ 0
MCU_MOSI
Text GLabel 6200 3600 0    50   Input ~ 0
MCU_MISO
Text GLabel 6200 3700 0    50   Input ~ 0
MCU_SCK
Text GLabel 6200 3800 0    50   Input ~ 0
MCU_RESET
Wire Wire Line
	6900 3700 6800 3700
Wire Wire Line
	6300 3600 6200 3600
Wire Wire Line
	6300 3700 6200 3700
Wire Wire Line
	6300 3800 6200 3800
$Comp
L power:GND #PWR05
U 1 1 5C837D4C
P 6900 3900
F 0 "#PWR05" H 6900 3650 50  0001 C CNN
F 1 "GND" H 6905 3727 50  0000 C CNN
F 2 "" H 6900 3900 50  0001 C CNN
F 3 "" H 6900 3900 50  0001 C CNN
	1    6900 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 5C837F91
P 6900 3500
F 0 "#PWR02" H 6900 3350 50  0001 C CNN
F 1 "+3.3V" H 6915 3673 50  0000 C CNN
F 2 "" H 6900 3500 50  0001 C CNN
F 3 "" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3900 6900 3800
Wire Wire Line
	6900 3800 6800 3800
Wire Wire Line
	6800 3600 6900 3600
Text Notes 5700 3350 0    50   ~ 0
Conn ISP
Text GLabel 6400 6800 2    50   Input ~ 0
RN_TX
Text GLabel 6400 6700 2    50   Input ~ 0
RN_RX
Text GLabel 4400 5800 0    50   Input ~ 0
RN_RESET
Text GLabel 6200 2200 0    50   Input ~ 0
ADC_POWER
Text Notes 5700 2000 0    50   ~ 0
Power OpAmp
$Comp
L Device:Opamp_Dual_Generic U1
U 1 1 5C9F4439
P 9500 4100
F 0 "U1" H 9500 4250 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 9500 4350 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9500 4100 50  0001 C CNN
F 3 "~" H 9500 4100 50  0001 C CNN
	1    9500 4100
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CA2C962
P 7350 2250
F 0 "#PWR03" H 7350 2000 50  0001 C CNN
F 1 "GND" H 7355 2077 50  0000 C CNN
F 2 "" H 7350 2250 50  0001 C CNN
F 3 "" H 7350 2250 50  0001 C CNN
	1    7350 2250
	1    0    0    -1  
$EndComp
Wire Notes Line
	5650 3250 5650 4150
Wire Notes Line
	8250 1550 8250 3250
Wire Notes Line
	8250 3350 8250 4950
$Comp
L Device:R R5
U 1 1 5CAB6D35
P 6350 2900
F 0 "R5" H 6280 2854 50  0000 R CNN
F 1 "232R" H 6280 2945 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6280 2900 50  0001 C CNN
F 3 "~" H 6350 2900 50  0001 C CNN
	1    6350 2900
	0    1    1    0   
$EndComp
Text GLabel 6100 2900 0    50   Input ~ 0
BAT_VCC
$Comp
L Device:R R6
U 1 1 5CABDC62
P 6850 2900
F 0 "R6" H 6780 2854 50  0000 R CNN
F 1 "232R" H 6780 2945 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6780 2900 50  0001 C CNN
F 3 "~" H 6850 2900 50  0001 C CNN
	1    6850 2900
	0    1    1    0   
$EndComp
Text GLabel 7100 2900 2    50   Input ~ 0
BAT_GND
Text GLabel 6750 3050 2    50   Input ~ 0
BAT_ADC
Wire Wire Line
	6200 2900 6100 2900
Wire Wire Line
	7100 2900 7000 2900
Wire Wire Line
	6500 2900 6600 2900
Connection ~ 6600 2900
Wire Wire Line
	6600 2900 6700 2900
Text GLabel 2550 800  2    50   Input ~ 0
VCC_LDO
Text Notes 5700 2700 0    50   ~ 0
Battery Monitor
$Comp
L rn2483:RN2483 U4
U 1 1 5CB2105A
P 5400 6000
F 0 "U4" H 5400 4520 60  0000 C CNN
F 1 "RN2483" H 5400 4414 60  0000 C CNN
F 2 "kiu-footprint:RN2483_serial" H 5500 5300 60  0001 C CNN
F 3 "" H 5500 5300 60  0000 C CNN
	1    5400 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5CB21314
P 4400 5400
F 0 "#PWR029" H 4400 5150 50  0001 C CNN
F 1 "GND" V 4405 5272 50  0000 R CNN
F 2 "" H 4400 5400 50  0001 C CNN
F 3 "" H 4400 5400 50  0001 C CNN
	1    4400 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5CB213F6
P 4400 5900
F 0 "#PWR031" H 4400 5650 50  0001 C CNN
F 1 "GND" V 4405 5772 50  0000 R CNN
F 2 "" H 4400 5900 50  0001 C CNN
F 3 "" H 4400 5900 50  0001 C CNN
	1    4400 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5CB21457
P 4400 6700
F 0 "#PWR038" H 4400 6450 50  0001 C CNN
F 1 "GND" V 4405 6572 50  0000 R CNN
F 2 "" H 4400 6700 50  0001 C CNN
F 3 "" H 4400 6700 50  0001 C CNN
	1    4400 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5CB214B8
P 4400 7300
F 0 "#PWR039" H 4400 7050 50  0001 C CNN
F 1 "GND" V 4405 7172 50  0000 R CNN
F 2 "" H 4400 7300 50  0001 C CNN
F 3 "" H 4400 7300 50  0001 C CNN
	1    4400 7300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5CB21519
P 6400 7300
F 0 "#PWR040" H 6400 7050 50  0001 C CNN
F 1 "GND" V 6405 7172 50  0000 R CNN
F 2 "" H 6400 7300 50  0001 C CNN
F 3 "" H 6400 7300 50  0001 C CNN
	1    6400 7300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5CB215D0
P 6400 6600
F 0 "#PWR037" H 6400 6350 50  0001 C CNN
F 1 "GND" V 6405 6472 50  0000 R CNN
F 2 "" H 6400 6600 50  0001 C CNN
F 3 "" H 6400 6600 50  0001 C CNN
	1    6400 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5CB21631
P 6400 6300
F 0 "#PWR034" H 6400 6050 50  0001 C CNN
F 1 "GND" V 6405 6172 50  0000 R CNN
F 2 "" H 6400 6300 50  0001 C CNN
F 3 "" H 6400 6300 50  0001 C CNN
	1    6400 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5CB21692
P 6400 5400
F 0 "#PWR030" H 6400 5150 50  0001 C CNN
F 1 "GND" V 6405 5272 50  0000 R CNN
F 2 "" H 6400 5400 50  0001 C CNN
F 3 "" H 6400 5400 50  0001 C CNN
	1    6400 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5CB216F3
P 5850 4900
F 0 "#PWR027" H 5850 4650 50  0001 C CNN
F 1 "GND" H 5855 4727 50  0000 C CNN
F 2 "" H 5850 4900 50  0001 C CNN
F 3 "" H 5850 4900 50  0001 C CNN
	1    5850 4900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5CB217D5
P 5700 4900
F 0 "#PWR026" H 5700 4650 50  0001 C CNN
F 1 "GND" H 5705 4727 50  0000 C CNN
F 2 "" H 5700 4900 50  0001 C CNN
F 3 "" H 5700 4900 50  0001 C CNN
	1    5700 4900
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
Wire Wire Line
	4500 5400 4400 5400
Wire Wire Line
	4500 5800 4400 5800
Wire Wire Line
	4500 5900 4400 5900
Wire Wire Line
	4500 6700 4400 6700
Wire Wire Line
	4500 7300 4400 7300
Wire Wire Line
	4950 4900 4950 5000
Wire Wire Line
	5100 5000 5100 4900
Wire Wire Line
	5700 5000 5700 4900
Wire Wire Line
	5850 5000 5850 4900
Wire Wire Line
	6300 5400 6400 5400
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
Text GLabel 2950 2350 0    50   Input ~ 0
RN_RX
Text GLabel 2950 2450 0    50   Input ~ 0
RN_TX
Wire Wire Line
	2950 2450 3050 2450
Text Notes 2600 2000 0    50   ~ 0
Conn Debug RN
Text Notes 2600 3000 0    50   ~ 0
Conn Debug MCU
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U3
U 1 1 5D0AD01B
P 1700 5850
F 0 "U3" H 1250 4400 50  0000 C CNN
F 1 "ATmega328PB-AU" H 2100 4400 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 1700 5850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 1700 5850 50  0001 C CNN
	1    1700 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 5D0BAF66
P 1700 4250
F 0 "#PWR018" H 1700 4100 50  0001 C CNN
F 1 "+3.3V" H 1715 4423 50  0000 C CNN
F 2 "" H 1700 4250 50  0001 C CNN
F 3 "" H 1700 4250 50  0001 C CNN
	1    1700 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5D0BAF6C
P 1700 7450
F 0 "#PWR041" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	1    0    0    -1  
$EndComp
Text GLabel 2500 6150 2    50   Input ~ 0
MCU_RESET
Text GLabel 2500 5550 2    50   Input ~ 0
ADC+
Text GLabel 2500 5750 2    50   Input ~ 0
ADC-
Text GLabel 3000 5050 2    50   Input ~ 0
MCU_MISO
Text GLabel 3000 4850 2    50   Input ~ 0
MCU_MOSI
Text GLabel 2500 5150 2    50   Input ~ 0
MCU_SCK
$Comp
L Device:Crystal Y1
U 1 1 5D0BAFA7
P 3350 5450
F 0 "Y1" V 3304 5581 50  0000 L CNN
F 1 "32768 Hz" V 3395 5581 50  0000 L CNN
F 2 "Crystals:Crystal_Round_d3.0mm_Vertical" H 3350 5450 50  0001 C CNN
F 3 "~" H 3350 5450 50  0001 C CNN
	1    3350 5450
	-1   0    0    1   
$EndComp
Text GLabel 2500 4650 2    50   Input ~ 0
RN_RESET
Text Notes 600  4100 0    50   ~ 0
MCU
$Comp
L Device:C C9
U 1 1 5D0BAFB6
P 950 4900
F 0 "C9" H 750 4950 50  0000 L CNN
F 1 "100nF" H 600 4850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 988 4750 50  0001 C CNN
F 3 "~" H 950 4900 50  0001 C CNN
	1    950  4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5D0BAFBD
P 950 5150
F 0 "#PWR028" H 950 4900 50  0001 C CNN
F 1 "GND" H 955 4977 50  0000 C CNN
F 2 "" H 950 5150 50  0001 C CNN
F 3 "" H 950 5150 50  0001 C CNN
	1    950  5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5150 950  5050
Wire Wire Line
	950  4650 950  4750
Text GLabel 2500 6050 2    50   Input ~ 0
BAT_GND
Text GLabel 2500 5950 2    50   Input ~ 0
BAT_ADC
Wire Notes Line
	3800 7700 550  7700
Wire Wire Line
	1100 4650 950  4650
$Comp
L kiu:BAV70LT D2
U 1 1 5D0E34C2
P 10150 2000
F 0 "D2" H 10150 2265 50  0000 C CNN
F 1 "BAV70LT" H 10150 2174 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10150 1800 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/308/BAV70LT1-D-102760.pdf" H 10150 2100 50  0001 C CNN
	1    10150 2000
	1    0    0    -1  
$EndComp
$Comp
L kiu:BAV70LT D8
U 1 1 5D0E3A81
P 10150 4100
F 0 "D8" H 10150 4365 50  0000 C CNN
F 1 "BAV70LT" H 10150 4274 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10150 3900 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/308/BAV70LT1-D-102760.pdf" H 10150 4200 50  0001 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D169E40
P 6650 4850
F 0 "C8" H 6536 4804 50  0000 R CNN
F 1 "100nF" H 6536 4895 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6688 4700 50  0001 C CNN
F 3 "~" H 6650 4850 50  0001 C CNN
	1    6650 4850
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5D169EE0
P 6650 5100
F 0 "#PWR023" H 6650 4850 50  0001 C CNN
F 1 "GND" H 6655 4927 50  0000 C CNN
F 2 "" H 6650 5100 50  0001 C CNN
F 3 "" H 6650 5100 50  0001 C CNN
	1    6650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1050 3800 950 
Wire Wire Line
	3800 950  3700 950 
Wire Wire Line
	3800 1350 3800 1450
Connection ~ 3800 1450
Wire Wire Line
	3800 1450 3300 1450
Wire Wire Line
	4300 1450 4300 1350
Wire Wire Line
	3800 1450 4300 1450
Wire Wire Line
	4300 1450 4300 1550
Connection ~ 4300 1450
$Comp
L Device:C C1
U 1 1 5D2E4189
P 6700 2050
F 0 "C1" V 6650 2300 50  0000 R CNN
F 1 "100nF" V 6650 1950 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6738 1900 50  0001 C CNN
F 3 "~" H 6700 2050 50  0001 C CNN
	1    6700 2050
	0    -1   1    0   
$EndComp
$Comp
L power:+3.3V #PWR035
U 1 1 5D611BB6
P 3150 6550
F 0 "#PWR035" H 3150 6400 50  0001 C CNN
F 1 "+3.3V" H 3165 6723 50  0000 C CNN
F 2 "" H 3150 6550 50  0001 C CNN
F 3 "" H 3150 6550 50  0001 C CNN
	1    3150 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5D611BBC
P 3150 7450
F 0 "#PWR042" H 3150 7200 50  0001 C CNN
F 1 "GND" H 3155 7277 50  0000 C CNN
F 2 "" H 3150 7450 50  0001 C CNN
F 3 "" H 3150 7450 50  0001 C CNN
	1    3150 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5D611BC4
P 3150 7200
F 0 "C10" H 3036 7154 50  0000 R CNN
F 1 "100nF" H 3036 7245 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3188 7050 50  0001 C CNN
F 3 "~" H 3150 7200 50  0001 C CNN
	1    3150 7200
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 6350 2300 6350
Wire Wire Line
	2500 6450 2300 6450
Wire Wire Line
	2500 6150 2300 6150
Wire Wire Line
	2300 5150 2500 5150
Text GLabel 3000 5150 2    50   Input ~ 0
MCU_RX
Text GLabel 3000 4950 2    50   Input ~ 0
MCU_TX
Wire Wire Line
	2300 5050 2950 5050
Wire Wire Line
	3000 5150 2950 5150
Wire Wire Line
	2950 5150 2950 5050
Connection ~ 2950 5050
Wire Wire Line
	2950 5050 3000 5050
Wire Wire Line
	2300 4950 2950 4950
Wire Wire Line
	3000 4850 2950 4850
Wire Wire Line
	2950 4850 2950 4950
Connection ~ 2950 4950
Wire Wire Line
	2950 4950 3000 4950
Wire Wire Line
	2500 5550 2300 5550
Wire Wire Line
	2500 5950 2300 5950
Wire Wire Line
	2500 6050 2300 6050
NoConn ~ 2300 4850
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5CA6C8C3
P 3250 3350
F 0 "J6" V 3350 3250 50  0000 L CNN
F 1 "DEBUG MCU" V 3450 3100 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3250 3350 50  0001 C CNN
F 3 "~" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5CA6D0F0
P 2950 3250
F 0 "#PWR015" H 2950 3100 50  0001 C CNN
F 1 "+3.3V" H 2965 3423 50  0000 C CNN
F 2 "" H 2950 3250 50  0001 C CNN
F 3 "" H 2950 3250 50  0001 C CNN
	1    2950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3550 2950 3550
Wire Wire Line
	3050 3250 2950 3250
Text GLabel 2950 3450 0    50   Input ~ 0
MCU_TX
Text GLabel 2950 3350 0    50   Input ~ 0
MCU_RX
Wire Wire Line
	3050 3350 2950 3350
Wire Wire Line
	3050 3450 2950 3450
Wire Wire Line
	3200 5350 3200 5450
Wire Wire Line
	3500 5250 3500 5450
Wire Wire Line
	2300 5250 3500 5250
Wire Wire Line
	2300 5350 3200 5350
NoConn ~ 2300 5850
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5D0B56A6
P 2200 2600
F 0 "J5" H 2280 2642 50  0000 L CNN
F 1 "DEBUG LED" H 2280 2551 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2200 2600 50  0001 C CNN
F 3 "~" H 2200 2600 50  0001 C CNN
	1    2200 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 3650 1800 3650
Wire Wire Line
	1900 3650 1900 3300
Wire Wire Line
	1900 3300 1800 3300
Wire Wire Line
	1900 3300 1900 2950
Wire Wire Line
	1900 2950 1800 2950
Connection ~ 1900 3300
Wire Wire Line
	1900 2950 1900 2600
Wire Wire Line
	1900 2600 1800 2600
Connection ~ 1900 2950
Wire Wire Line
	1900 2250 1800 2250
Connection ~ 1900 2600
$Comp
L Device:R R8
U 1 1 5D1950C8
P 1250 2250
F 0 "R8" V 1043 2250 50  0000 C CNN
F 1 "R" V 1134 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 2250 50  0001 C CNN
F 3 "~" H 1250 2250 50  0001 C CNN
	1    1250 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5D1951D0
P 1250 2600
F 0 "R11" V 1043 2600 50  0000 C CNN
F 1 "R" V 1134 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 2600 50  0001 C CNN
F 3 "~" H 1250 2600 50  0001 C CNN
	1    1250 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5D195ED4
P 1250 2950
F 0 "R13" V 1043 2950 50  0000 C CNN
F 1 "R" V 1134 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 2950 50  0001 C CNN
F 3 "~" H 1250 2950 50  0001 C CNN
	1    1250 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5D195F68
P 1250 3300
F 0 "R14" V 1043 3300 50  0000 C CNN
F 1 "R" V 1134 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 3300 50  0001 C CNN
F 3 "~" H 1250 3300 50  0001 C CNN
	1    1250 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5D196D56
P 1250 3650
F 0 "R15" V 1043 3650 50  0000 C CNN
F 1 "R" V 1134 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 3650 50  0001 C CNN
F 3 "~" H 1250 3650 50  0001 C CNN
	1    1250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 3650 1400 3650
Wire Wire Line
	1500 3300 1400 3300
Wire Wire Line
	1400 2950 1500 2950
Wire Wire Line
	1500 2600 1400 2600
Wire Wire Line
	1500 2250 1400 2250
$Comp
L power:GND #PWR016
U 1 1 5D1E1336
P 2200 3500
F 0 "#PWR016" H 2200 3250 50  0001 C CNN
F 1 "GND" H 2205 3327 50  0000 C CNN
F 2 "" H 2200 3500 50  0001 C CNN
F 3 "" H 2200 3500 50  0001 C CNN
	1    2200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 850  10500 850 
Wire Wire Line
	4300 800  4300 950 
Wire Wire Line
	3800 950  4300 950 
Connection ~ 3800 950 
Connection ~ 4300 950 
Wire Wire Line
	4300 950  4300 1050
$Comp
L Device:D_Schottky D1
U 1 1 5D235C02
P 1000 950
F 0 "D1" H 1000 734 50  0000 C CNN
F 1 "D_Schottky" H 1000 825 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 1000 950 50  0001 C CNN
F 3 "~" H 1000 950 50  0001 C CNN
	1    1000 950 
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J7
U 1 1 5D237786
P 5550 4500
F 0 "J7" V 5526 4601 50  0000 L CNN
F 1 "868" V 5435 4601 50  0000 L CNN
F 2 "kiu-footprint:U.FL" H 5550 4500 50  0001 C CNN
F 3 " ~" H 5550 4500 50  0001 C CNN
	1    5550 4500
	0    1    -1   0   
$EndComp
Text GLabel 2500 6450 2    50   Input ~ 0
RN_RX
Text GLabel 2500 6350 2    50   Input ~ 0
RN_TX
Wire Wire Line
	2950 2350 3050 2350
$Comp
L power:GND #PWR010
U 1 1 5D295270
P 2950 2550
F 0 "#PWR010" H 2950 2300 50  0001 C CNN
F 1 "GND" H 2955 2377 50  0000 C CNN
F 2 "" H 2950 2550 50  0001 C CNN
F 3 "" H 2950 2550 50  0001 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
Connection ~ 2500 950 
Wire Wire Line
	2500 5650 2300 5650
NoConn ~ 2300 7050
NoConn ~ 2300 6950
NoConn ~ 2300 6850
NoConn ~ 2300 6750
NoConn ~ 2300 6650
NoConn ~ 2300 6550
Wire Wire Line
	5550 5000 5550 4700
NoConn ~ 5250 5000
Wire Wire Line
	2500 950  2500 800 
Wire Wire Line
	2500 800  2550 800 
Text GLabel 1000 2600 0    50   Input ~ 0
LED_CLK
Text GLabel 1000 2950 0    50   Input ~ 0
LED_IDLE
Text GLabel 1000 3300 0    50   Input ~ 0
LED_MSR
Text GLabel 1000 3650 0    50   Input ~ 0
LED_TX
Wire Wire Line
	1000 2250 1100 2250
Wire Wire Line
	1000 2600 1100 2600
Wire Wire Line
	1000 2950 1100 2950
Wire Wire Line
	1000 3300 1100 3300
Wire Wire Line
	1000 3650 1100 3650
$Comp
L power:+3.3V #PWR08
U 1 1 5D4BBD61
P 1000 2250
F 0 "#PWR08" H 1000 2100 50  0001 C CNN
F 1 "+3.3V" H 1015 2423 50  0000 C CNN
F 2 "" H 1000 2250 50  0001 C CNN
F 3 "" H 1000 2250 50  0001 C CNN
	1    1000 2250
	0    -1   -1   0   
$EndComp
Text GLabel 1000 6350 0    50   Input ~ 0
LED_CLK
Text GLabel 1000 6450 0    50   Input ~ 0
LED_IDLE
Text GLabel 1000 6550 0    50   Input ~ 0
LED_MSR
Text GLabel 1000 6650 0    50   Input ~ 0
LED_TX
Wire Wire Line
	1100 6350 1000 6350
Wire Wire Line
	1100 6450 1000 6450
Wire Wire Line
	1100 6550 1000 6550
Wire Wire Line
	1100 6650 1000 6650
Wire Notes Line
	2550 2800 2550 1900
$Comp
L power:GND #PWR017
U 1 1 5CFF2608
P 2950 3550
F 0 "#PWR017" H 2950 3300 50  0001 C CNN
F 1 "GND" H 2955 3377 50  0000 C CNN
F 2 "" H 2950 3550 50  0001 C CNN
F 3 "" H 2950 3550 50  0001 C CNN
	1    2950 3550
	1    0    0    -1  
$EndComp
Wire Notes Line
	2550 3800 2550 2900
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5D65A68C
P 3250 2350
F 0 "J4" V 3350 2250 50  0000 L CNN
F 1 "DEBUG RN" V 3450 2100 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3250 2350 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5D65A726
P 2950 2250
F 0 "#PWR09" H 2950 2100 50  0001 C CNN
F 1 "+3.3V" H 2965 2423 50  0000 C CNN
F 2 "" H 2950 2250 50  0001 C CNN
F 3 "" H 2950 2250 50  0001 C CNN
	1    2950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2250 2950 2250
Wire Wire Line
	3050 2550 2950 2550
Wire Wire Line
	6600 3050 6600 2900
Wire Wire Line
	6600 3050 6750 3050
Wire Notes Line
	7550 2600 5650 2600
Wire Notes Line
	3550 2800 3550 1900
Wire Notes Line
	2550 2800 3550 2800
Wire Notes Line
	3550 1900 2550 1900
$Comp
L Device:C C11
U 1 1 5D81EA43
P 3400 7200
F 0 "C11" H 3150 7150 50  0000 L CNN
F 1 "100nF" H 3050 7250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3438 7050 50  0001 C CNN
F 3 "~" H 3400 7200 50  0001 C CNN
	1    3400 7200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R20
U 1 1 5D81ECFF
P 3400 6800
F 0 "R20" H 3500 6850 50  0000 L CNN
F 1 "47R" H 3470 6755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3330 6800 50  0001 C CNN
F 3 "~" H 3400 6800 50  0001 C CNN
	1    3400 6800
	1    0    0    -1  
$EndComp
Text GLabel 1900 4250 2    50   Input ~ 0
AVCC
$Comp
L power:+3.3V #PWR036
U 1 1 5D8ACB69
P 3400 6550
F 0 "#PWR036" H 3400 6400 50  0001 C CNN
F 1 "+3.3V" H 3415 6723 50  0000 C CNN
F 2 "" H 3400 6550 50  0001 C CNN
F 3 "" H 3400 6550 50  0001 C CNN
	1    3400 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5D8CC4C8
P 3400 7450
F 0 "#PWR043" H 3400 7200 50  0001 C CNN
F 1 "GND" H 3405 7277 50  0000 C CNN
F 2 "" H 3400 7450 50  0001 C CNN
F 3 "" H 3400 7450 50  0001 C CNN
	1    3400 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 7450 3400 7350
Wire Wire Line
	3400 7050 3400 7000
Wire Wire Line
	3400 6650 3400 6550
Text GLabel 3500 7000 2    50   Input ~ 0
AVCC
Wire Wire Line
	3500 7000 3400 7000
Connection ~ 3400 7000
Wire Wire Line
	3400 7000 3400 6950
Wire Wire Line
	1800 4250 1900 4250
Wire Wire Line
	1800 4250 1800 4350
Wire Wire Line
	1700 4350 1700 4250
Wire Notes Line
	7550 3250 7550 4150
Wire Notes Line
	5650 3250 7550 3250
Wire Wire Line
	1700 7350 1700 7450
Wire Notes Line
	550  4000 3800 4000
Wire Notes Line
	3800 4000 3800 7700
Wire Notes Line
	550  4000 550  7700
Wire Notes Line
	2450 1900 550  1900
Wire Wire Line
	1900 2250 1900 2600
Text Notes 600  2000 0    50   ~ 0
LED Debug
$Comp
L Device:LED D7
U 1 1 5D0B55B9
P 1650 3650
F 0 "D7" H 1642 3395 50  0000 C CNN
F 1 "LED" H 1642 3486 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1650 3650 50  0001 C CNN
F 3 "~" H 1650 3650 50  0001 C CNN
	1    1650 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 5D0B552B
P 1650 3300
F 0 "D6" H 1642 3045 50  0000 C CNN
F 1 "LED" H 1642 3136 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1650 3300 50  0001 C CNN
F 3 "~" H 1650 3300 50  0001 C CNN
	1    1650 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D0B546B
P 1650 2950
F 0 "D5" H 1642 2695 50  0000 C CNN
F 1 "LED" H 1642 2786 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1650 2950 50  0001 C CNN
F 3 "~" H 1650 2950 50  0001 C CNN
	1    1650 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5D0B53E7
P 1650 2600
F 0 "D4" H 1642 2345 50  0000 C CNN
F 1 "LED" H 1642 2436 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1650 2600 50  0001 C CNN
F 3 "~" H 1650 2600 50  0001 C CNN
	1    1650 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D0B5293
P 1650 2250
F 0 "D3" H 1642 1995 50  0000 C CNN
F 1 "LED" H 1642 2086 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1650 2250 50  0001 C CNN
F 3 "~" H 1650 2250 50  0001 C CNN
	1    1650 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 2950 2100 2800
Wire Wire Line
	1900 2950 2100 2950
Wire Wire Line
	2200 3500 2200 2800
Wire Wire Line
	10000 1950 9900 1950
Wire Wire Line
	9900 1950 9900 2000
Wire Wire Line
	9900 2000 9800 2000
Wire Wire Line
	10000 2050 9900 2050
Wire Wire Line
	9900 2050 9900 2000
Connection ~ 9900 2000
Wire Wire Line
	9500 2500 10400 2500
Wire Wire Line
	10000 4050 9900 4050
Wire Wire Line
	9900 4050 9900 4100
Wire Wire Line
	9900 4100 9800 4100
Wire Wire Line
	10000 4150 9900 4150
Wire Wire Line
	9900 4150 9900 4100
Connection ~ 9900 4100
Wire Notes Line
	11150 3250 11150 1550
Wire Notes Line
	11150 3250 8250 3250
Wire Notes Line
	8250 1550 11150 1550
Wire Notes Line
	11150 4950 8250 4950
Wire Notes Line
	8250 3350 11150 3350
Wire Notes Line
	11150 3350 11150 4950
Wire Notes Line
	11150 1450 8250 1450
Wire Notes Line
	8250 1450 8250 550 
Wire Notes Line
	11150 1450 11150 550 
Wire Notes Line
	11150 550  8250 550 
Wire Notes Line
	3550 3800 3550 2900
Wire Notes Line
	3550 2900 2550 2900
Wire Notes Line
	3550 3800 2550 3800
Wire Notes Line
	2450 3800 550  3800
Wire Notes Line
	550  1900 550  3800
Wire Notes Line
	2450 1900 2450 3800
Wire Notes Line
	7550 3150 5650 3150
Wire Notes Line
	5650 3150 5650 2600
Wire Notes Line
	7550 3150 7550 2600
Wire Notes Line
	5650 1900 5650 2500
Wire Notes Line
	5650 2500 7550 2500
Wire Notes Line
	7550 2500 7550 1900
Wire Notes Line
	7550 1900 5650 1900
Wire Wire Line
	6200 2200 6300 2200
Wire Wire Line
	6300 2200 6300 2050
Wire Wire Line
	6300 2050 6550 2050
Connection ~ 6300 2200
Wire Wire Line
	6300 2200 6400 2200
Wire Wire Line
	7000 2200 7350 2200
Wire Wire Line
	7350 2200 7350 2250
Wire Wire Line
	6850 2050 7350 2050
Wire Wire Line
	7350 2050 7350 2200
Connection ~ 7350 2200
Text GLabel 2500 5650 2    50   Input ~ 0
ADC_POWER
Wire Wire Line
	2500 5750 2300 5750
$Comp
L power:GND #PWR014
U 1 1 5DF932E4
P 5350 3150
F 0 "#PWR014" H 5350 2900 50  0001 C CNN
F 1 "GND" H 5355 2977 50  0000 C CNN
F 2 "" H 5350 3150 50  0001 C CNN
F 3 "" H 5350 3150 50  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
Wire Notes Line
	3650 1900 5550 1900
Wire Notes Line
	5550 1900 5550 3450
Wire Notes Line
	5550 3450 3650 3450
Wire Notes Line
	3650 1900 3650 3450
Wire Wire Line
	4400 2650 4750 2650
$Comp
L power:+3.3V #PWR019
U 1 1 5DFEAC40
P 6650 4600
F 0 "#PWR019" H 6650 4450 50  0001 C CNN
F 1 "+3.3V" H 6665 4773 50  0000 C CNN
F 2 "" H 6650 4600 50  0001 C CNN
F 3 "" H 6650 4600 50  0001 C CNN
	1    6650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4650 2300 4650
NoConn ~ 2300 4750
Wire Wire Line
	6650 5100 6650 5000
Wire Wire Line
	6650 4700 6650 4600
$Comp
L power:+3.3V #PWR032
U 1 1 5E02FB37
P 4200 6000
F 0 "#PWR032" H 4200 5850 50  0001 C CNN
F 1 "+3.3V" H 4215 6173 50  0000 C CNN
F 2 "" H 4200 6000 50  0001 C CNN
F 3 "" H 4200 6000 50  0001 C CNN
	1    4200 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 6000 4500 6000
$Comp
L power:+3.3V #PWR033
U 1 1 5E03D93B
P 6600 6200
F 0 "#PWR033" H 6600 6050 50  0001 C CNN
F 1 "+3.3V" H 6615 6373 50  0000 C CNN
F 2 "" H 6600 6200 50  0001 C CNN
F 3 "" H 6600 6200 50  0001 C CNN
	1    6600 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 6200 6600 6200
Wire Notes Line
	6850 7700 3900 7700
NoConn ~ 2300 2800
$Comp
L Switch:SW_Push SW1
U 1 1 5E0AE2A7
P 4950 2650
F 0 "SW1" H 4950 2935 50  0000 C CNN
F 1 "RESET" H 4950 2844 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3SL-1002P" H 4950 2850 50  0001 C CNN
F 3 "" H 4950 2850 50  0001 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2650 5350 2650
Wire Wire Line
	5350 2650 5350 3150
Wire Wire Line
	4250 2650 4400 2650
$Comp
L Mechanical:MountingHole MH1
U 1 1 5E0DA76C
P 10450 5300
F 0 "MH1" H 10550 5346 50  0000 L CNN
F 1 "MountingHole" H 10550 5255 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 10450 5300 50  0001 C CNN
F 3 "~" H 10450 5300 50  0001 C CNN
	1    10450 5300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 5E0DA8DE
P 10450 5500
F 0 "MH2" H 10550 5546 50  0000 L CNN
F 1 "MountingHole" H 10550 5455 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 10450 5500 50  0001 C CNN
F 3 "~" H 10450 5500 50  0001 C CNN
	1    10450 5500
	1    0    0    -1  
$EndComp
Text Notes 10350 5150 0    50   ~ 0
Mechanics
$Comp
L power:GND #PWR04
U 1 1 5D0C2BE9
P 10500 1050
F 0 "#PWR04" H 10500 800 50  0001 C CNN
F 1 "GND" H 10505 877 50  0000 C CNN
F 2 "" H 10500 1050 50  0001 C CNN
F 3 "" H 10500 1050 50  0001 C CNN
	1    10500 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1050 10500 850 
Connection ~ 10500 850 
Wire Wire Line
	10500 850  10550 850 
$Comp
L Mechanical:MountingHole MH4
U 1 1 5D0DB882
P 10450 5900
F 0 "MH4" H 10550 5946 50  0000 L CNN
F 1 "MountingHole" H 10550 5855 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 10450 5900 50  0001 C CNN
F 3 "~" H 10450 5900 50  0001 C CNN
	1    10450 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH6
U 1 1 5D0DBB73
P 10450 6300
F 0 "MH6" H 10550 6346 50  0000 L CNN
F 1 "MountingHole" H 10550 6255 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 10450 6300 50  0001 C CNN
F 3 "~" H 10450 6300 50  0001 C CNN
	1    10450 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 5D0DBC01
P 10450 5700
F 0 "MH3" H 10550 5746 50  0000 L CNN
F 1 "MountingHole" H 10550 5655 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 10450 5700 50  0001 C CNN
F 3 "~" H 10450 5700 50  0001 C CNN
	1    10450 5700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH5
U 1 1 5D0DBCA9
P 10450 6100
F 0 "MH5" H 10550 6146 50  0000 L CNN
F 1 "MountingHole" H 10550 6055 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 10450 6100 50  0001 C CNN
F 3 "~" H 10450 6100 50  0001 C CNN
	1    10450 6100
	1    0    0    -1  
$EndComp
Wire Notes Line
	10300 5050 10300 6450
Wire Notes Line
	10300 6450 11150 6450
Wire Notes Line
	11150 6450 11150 5050
Wire Notes Line
	11150 5050 10300 5050
Wire Wire Line
	3150 7050 3150 6550
Wire Wire Line
	3150 7450 3150 7350
Wire Wire Line
	6900 3600 6900 3500
$Comp
L power:GND #PWR0101
U 1 1 5D0EFB1B
P 5250 4500
F 0 "#PWR0101" H 5250 4250 50  0001 C CNN
F 1 "GND" H 5255 4327 50  0000 C CNN
F 2 "" H 5250 4500 50  0001 C CNN
F 3 "" H 5250 4500 50  0001 C CNN
	1    5250 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D0EFC57
P 5400 4900
F 0 "#PWR0102" H 5400 4650 50  0001 C CNN
F 1 "GND" H 5405 4727 50  0000 C CNN
F 2 "" H 5400 4900 50  0001 C CNN
F 3 "" H 5400 4900 50  0001 C CNN
	1    5400 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 5000 5400 4900
Wire Wire Line
	5350 4500 5250 4500
$Comp
L Device:CP C14
U 1 1 5D1B34A0
P 5550 1250
F 0 "C14" H 5668 1296 50  0000 L CNN
F 1 "10uF" H 5668 1205 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5588 1100 50  0001 C CNN
F 3 "~" H 5550 1250 50  0001 C CNN
	1    5550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 5D1B3578
P 4950 1250
F 0 "C13" H 5068 1296 50  0000 L CNN
F 1 "10uF" H 5068 1205 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4988 1100 50  0001 C CNN
F 3 "~" H 4950 1250 50  0001 C CNN
	1    4950 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5D1B364A
P 7550 1150
F 0 "C12" V 7500 1400 50  0000 R CNN
F 1 "1uF" V 7500 1050 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7588 1000 50  0001 C CNN
F 3 "~" H 7550 1150 50  0001 C CNN
	1    7550 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5D1B3714
P 5750 900
F 0 "R21" H 5680 854 50  0000 R CNN
F 1 "100k" H 5680 945 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5680 900 50  0001 C CNN
F 3 "~" H 5750 900 50  0001 C CNN
	1    5750 900 
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5D1B3C4B
P 1950 950
F 0 "J8" H 2030 992 50  0000 L CNN
F 1 "PWR" H 2030 901 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1950 950 50  0001 C CNN
F 3 "~" H 1950 950 50  0001 C CNN
	1    1950 950 
	1    0    0    -1  
$EndComp
$Comp
L mcp125x:MCP125x U5
U 1 1 5D1C0835
P 6600 1050
F 0 "U5" H 6600 750 50  0000 C CNN
F 1 "MCP125x" H 6600 1334 50  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 6600 1050 50  0001 C CNN
F 3 "" H 6600 1050 50  0001 C CNN
	1    6600 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1100 7400 1100
Wire Wire Line
	7400 1100 7400 1000
Wire Wire Line
	7400 1000 7550 1000
Wire Wire Line
	7200 1200 7400 1200
Wire Wire Line
	7400 1200 7400 1300
Wire Wire Line
	7400 1300 7550 1300
$Comp
L power:GND #PWR048
U 1 1 5D1DBC2D
P 5900 1500
F 0 "#PWR048" H 5900 1250 50  0001 C CNN
F 1 "GND" H 5905 1327 50  0000 C CNN
F 2 "" H 5900 1500 50  0001 C CNN
F 3 "" H 5900 1500 50  0001 C CNN
	1    5900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1200 5900 1200
$Comp
L power:GND #PWR047
U 1 1 5D1E9B12
P 5550 1500
F 0 "#PWR047" H 5550 1250 50  0001 C CNN
F 1 "GND" H 5555 1327 50  0000 C CNN
F 2 "" H 5550 1500 50  0001 C CNN
F 3 "" H 5550 1500 50  0001 C CNN
	1    5550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1400 5550 1500
Wire Wire Line
	5900 1200 5900 1500
Wire Wire Line
	6000 1100 5950 1100
$Comp
L power:GND #PWR046
U 1 1 5D24CB0E
P 4950 1500
F 0 "#PWR046" H 4950 1250 50  0001 C CNN
F 1 "GND" H 4955 1327 50  0000 C CNN
F 2 "" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 900  5900 900 
Wire Wire Line
	5600 900  5600 1000
Connection ~ 5600 1000
Wire Wire Line
	5600 1000 6000 1000
Connection ~ 5950 1100
Wire Wire Line
	5950 1100 5550 1100
Wire Wire Line
	7200 900  7300 900 
Wire Wire Line
	7300 900  7300 700 
Wire Wire Line
	7200 1000 7300 1000
Wire Wire Line
	7300 1000 7300 900 
Connection ~ 7300 900 
$Comp
L power:+3.3V #PWR044
U 1 1 5D2B5EA6
P 4950 900
F 0 "#PWR044" H 4950 750 50  0001 C CNN
F 1 "+3.3V" H 4965 1073 50  0000 C CNN
F 2 "" H 4950 900 50  0001 C CNN
F 3 "" H 4950 900 50  0001 C CNN
	1    4950 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1400 4950 1500
Wire Wire Line
	4950 1000 4950 1100
Wire Wire Line
	4950 1000 5600 1000
Wire Wire Line
	4950 1000 4950 900 
Connection ~ 4950 1000
Wire Wire Line
	5450 1100 5550 1100
Connection ~ 5550 1100
Wire Wire Line
	5950 700  7300 700 
Wire Wire Line
	5950 700  5950 1100
Text GLabel 1650 850  0    50   Input ~ 0
VCC_BBC
Text GLabel 1650 1050 0    50   Input ~ 0
VCC_LDO
Text GLabel 5450 1100 0    50   Input ~ 0
VCC_BBC
Wire Wire Line
	1650 850  1750 850 
Wire Wire Line
	1650 1050 1750 1050
Text GLabel 1650 1200 2    50   Input ~ 0
BAT_VCC
$Comp
L power:GND #PWR045
U 1 1 5D367421
P 700 1450
F 0 "#PWR045" H 700 1200 50  0001 C CNN
F 1 "GND" H 705 1277 50  0000 C CNN
F 2 "" H 700 1450 50  0001 C CNN
F 3 "" H 700 1450 50  0001 C CNN
	1    700  1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 950  1200 950 
Wire Wire Line
	850  950  700  950 
Wire Wire Line
	700  950  700  1050
Wire Wire Line
	1200 1200 1200 950 
Connection ~ 1200 950 
Wire Wire Line
	1200 950  1750 950 
Wire Notes Line
	2250 550  2250 1800
Wire Notes Line
	550  550  2250 550 
Wire Notes Line
	550  1800 2250 1800
Wire Wire Line
	1200 1200 1650 1200
Wire Notes Line
	2350 550  2350 1800
Wire Notes Line
	2350 1800 4650 1800
Wire Notes Line
	4650 1800 4650 550 
Wire Notes Line
	4650 550  2350 550 
Wire Notes Line
	4750 550  4750 1800
Wire Notes Line
	7750 1800 7750 550 
Wire Notes Line
	7750 1800 4750 1800
Wire Notes Line
	4750 550  7750 550 
Wire Notes Line
	7550 4150 5650 4150
Wire Notes Line
	6850 4250 3900 4250
Wire Notes Line
	6850 4250 6850 7700
Wire Notes Line
	3900 7700 3900 4250
Text Notes 3950 4350 0    50   ~ 0
LoRa
Text Notes 2400 650  0    50   ~ 0
Power LDO
Text Notes 4800 650  0    50   ~ 0
Power BBC
$EndSCHEMATC
