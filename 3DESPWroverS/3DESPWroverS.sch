EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 61C437A3
P 1600 1300
F 0 "J1" H 1650 1617 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1650 1526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1600 1300 50  0001 C CNN
F 3 "~" H 1600 1300 50  0001 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61C441C5
P 2250 1650
F 0 "#PWR02" H 2250 1400 50  0001 C CNN
F 1 "GND" H 2255 1477 50  0000 C CNN
F 2 "" H 2250 1650 50  0001 C CNN
F 3 "" H 2250 1650 50  0001 C CNN
	1    2250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 61C44468
P 1050 950
F 0 "#PWR01" H 1050 800 50  0001 C CNN
F 1 "VCC" H 1065 1123 50  0000 C CNN
F 2 "" H 1050 950 50  0001 C CNN
F 3 "" H 1050 950 50  0001 C CNN
	1    1050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1300 2100 1300
Wire Wire Line
	1400 1300 1150 1300
Wire Wire Line
	1050 950  1050 1200
Wire Wire Line
	1050 1400 1400 1400
Wire Wire Line
	1400 1200 1050 1200
Connection ~ 1050 1200
Wire Wire Line
	1050 1200 1050 1400
Wire Wire Line
	2250 1200 2250 1400
Wire Wire Line
	1900 1200 2250 1200
Wire Wire Line
	1900 1400 2250 1400
Connection ~ 2250 1400
Wire Wire Line
	2250 1400 2250 1650
Text Label 1150 1300 0    50   ~ 0
D1
Text Label 2100 1300 0    50   ~ 0
D2
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 61C4570A
P 4700 1050
F 0 "J4" H 4780 1092 50  0000 L CNN
F 1 "Conn_01x01" H 4780 1001 50  0000 L CNN
F 2 "Custom:CubeSidePad" H 4700 1050 50  0001 C CNN
F 3 "~" H 4700 1050 50  0001 C CNN
	1    4700 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 61C48CBE
P 4700 1300
F 0 "J5" H 4780 1342 50  0000 L CNN
F 1 "Conn_01x01" H 4780 1251 50  0000 L CNN
F 2 "Custom:CubeSidePad" H 4700 1300 50  0001 C CNN
F 3 "~" H 4700 1300 50  0001 C CNN
	1    4700 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 61C48EB9
P 4700 1550
F 0 "J6" H 4780 1592 50  0000 L CNN
F 1 "Conn_01x01" H 4780 1501 50  0000 L CNN
F 2 "Custom:CubeSidePad" H 4700 1550 50  0001 C CNN
F 3 "~" H 4700 1550 50  0001 C CNN
	1    4700 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 61C490F9
P 6000 1050
F 0 "J7" H 6080 1092 50  0000 L CNN
F 1 "Conn_01x01" H 6080 1001 50  0000 L CNN
F 2 "Custom:CubeSidePad" H 6000 1050 50  0001 C CNN
F 3 "~" H 6000 1050 50  0001 C CNN
	1    6000 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 61C4967D
P 6000 1300
F 0 "J8" H 6080 1342 50  0000 L CNN
F 1 "Conn_01x01" H 6080 1251 50  0000 L CNN
F 2 "Custom:CubeSidePad" H 6000 1300 50  0001 C CNN
F 3 "~" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 61C498AD
P 6000 1550
F 0 "J9" H 6080 1592 50  0000 L CNN
F 1 "Conn_01x01" H 6080 1501 50  0000 L CNN
F 2 "Custom:CubeSidePad" H 6000 1550 50  0001 C CNN
F 3 "~" H 6000 1550 50  0001 C CNN
	1    6000 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 61C49B21
P 3500 1050
F 0 "J2" H 3580 1092 50  0000 L CNN
F 1 "Conn_01x01" H 3580 1001 50  0000 L CNN
F 2 "Custom:CubeCenterPad" H 3500 1050 50  0001 C CNN
F 3 "~" H 3500 1050 50  0001 C CNN
	1    3500 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 61C4A314
P 3500 1300
F 0 "J3" H 3580 1342 50  0000 L CNN
F 1 "Conn_01x01" H 3580 1251 50  0000 L CNN
F 2 "Custom:CubeCenterPad" H 3500 1300 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
	1    3500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1050 3050 1050
Wire Wire Line
	3300 1300 3050 1300
$Comp
L power:VCC #PWR03
U 1 1 61C4A9A9
P 4250 900
F 0 "#PWR03" H 4250 750 50  0001 C CNN
F 1 "VCC" H 4265 1073 50  0000 C CNN
F 2 "" H 4250 900 50  0001 C CNN
F 3 "" H 4250 900 50  0001 C CNN
	1    4250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 900  4250 1050
Wire Wire Line
	4250 1550 4500 1550
Wire Wire Line
	4500 1300 4250 1300
Connection ~ 4250 1300
Wire Wire Line
	4250 1300 4250 1550
Wire Wire Line
	4500 1050 4250 1050
Connection ~ 4250 1050
Wire Wire Line
	4250 1050 4250 1300
$Comp
L power:GND #PWR04
U 1 1 61C4B443
P 5550 1700
F 0 "#PWR04" H 5550 1450 50  0001 C CNN
F 1 "GND" H 5555 1527 50  0000 C CNN
F 2 "" H 5550 1700 50  0001 C CNN
F 3 "" H 5550 1700 50  0001 C CNN
	1    5550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1050 5550 1050
Wire Wire Line
	5550 1050 5550 1300
Wire Wire Line
	5800 1300 5550 1300
Connection ~ 5550 1300
Wire Wire Line
	5550 1300 5550 1550
Wire Wire Line
	5800 1550 5550 1550
Connection ~ 5550 1550
Wire Wire Line
	5550 1550 5550 1700
Text Label 3050 1050 0    50   ~ 0
D1
Text Label 3050 1300 0    50   ~ 0
D2
$EndSCHEMATC
