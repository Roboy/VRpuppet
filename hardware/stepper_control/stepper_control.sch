EESchema Schematic File Version 4
LIBS:stepper_control-cache
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
L Driver_Motor:Pololu_Breakout_A4988 A1
U 1 1 5D1BE321
P 1450 1700
F 0 "A1" H 1500 2581 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 1500 2490 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 1725 950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 1550 1400 50  0001 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A2
U 1 1 5D1BE8B7
P 3300 1700
F 0 "A2" H 3350 2581 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 3350 2490 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 3575 950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 3400 1400 50  0001 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A3
U 1 1 5D1BEE95
P 5100 1700
F 0 "A3" H 5150 2581 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 5150 2490 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5375 950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 5200 1400 50  0001 C CNN
	1    5100 1700
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A4
U 1 1 5D1BF2B1
P 6900 1700
F 0 "A4" H 6950 2581 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 6950 2490 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 7175 950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 7000 1400 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A5
U 1 1 5D1BF618
P 8650 1700
F 0 "A5" H 8700 2581 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 8700 2490 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 8925 950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 8750 1400 50  0001 C CNN
	1    8650 1700
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A6
U 1 1 5D1BFA75
P 10400 1700
F 0 "A6" H 10450 2581 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 10450 2490 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 10675 950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 10500 1400 50  0001 C CNN
	1    10400 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5D1C86E8
P 1350 2950
F 0 "J1" H 1378 2926 50  0000 L CNN
F 1 "POWER" H 1378 2835 50  0000 L CNN
F 2 "custom_lib:Wago_2060_2_SMD" H 1350 2950 50  0001 C CNN
F 3 "~" H 1350 2950 50  0001 C CNN
	1    1350 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D1C9E2E
P 1150 2950
F 0 "#PWR0101" H 1150 2700 50  0001 C CNN
F 1 "GND" V 1155 2822 50  0000 R CNN
F 2 "" H 1150 2950 50  0001 C CNN
F 3 "" H 1150 2950 50  0001 C CNN
	1    1150 2950
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5D1CA74F
P 1150 3050
F 0 "#PWR0102" H 1150 2900 50  0001 C CNN
F 1 "+12V" V 1165 3178 50  0000 L CNN
F 2 "" H 1150 3050 50  0001 C CNN
F 3 "" H 1150 3050 50  0001 C CNN
	1    1150 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 5D1CB153
P 2250 3350
F 0 "#PWR0103" H 2250 3200 50  0001 C CNN
F 1 "+12V" H 2265 3523 50  0000 C CNN
F 2 "" H 2250 3350 50  0001 C CNN
F 3 "" H 2250 3350 50  0001 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D1CB912
P 2750 3200
F 0 "#PWR0104" H 2750 2950 50  0001 C CNN
F 1 "GND" H 2755 3027 50  0000 C CNN
F 2 "" H 2750 3200 50  0001 C CNN
F 3 "" H 2750 3200 50  0001 C CNN
	1    2750 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 3350 2750 3200
NoConn ~ 7000 4700
NoConn ~ 7000 4800
NoConn ~ 7000 4900
NoConn ~ 3350 3350
NoConn ~ 3450 3350
Text Label 2450 3350 1    50   ~ 0
5V
$Comp
L power:GND #PWR0105
U 1 1 5D1FFE2B
P 1450 2500
F 0 "#PWR0105" H 1450 2250 50  0001 C CNN
F 1 "GND" H 1455 2327 50  0000 C CNN
F 2 "" H 1450 2500 50  0001 C CNN
F 3 "" H 1450 2500 50  0001 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2500 1650 2500
Connection ~ 1450 2500
Connection ~ 1650 2500
Connection ~ 3300 2500
Wire Wire Line
	3300 2500 3500 2500
Connection ~ 3500 2500
Connection ~ 5100 2500
Wire Wire Line
	5100 2500 5300 2500
Connection ~ 5300 2500
Connection ~ 6900 2500
Wire Wire Line
	6900 2500 7100 2500
Connection ~ 8650 2500
Wire Wire Line
	8650 2500 8850 2500
Connection ~ 10400 2500
Wire Wire Line
	10400 2500 10600 2500
Wire Wire Line
	10000 2000 10000 2100
Connection ~ 10000 2500
Wire Wire Line
	10000 2500 10400 2500
Connection ~ 10000 2100
Wire Wire Line
	10000 2100 10000 2200
Connection ~ 10000 2200
Wire Wire Line
	10000 2200 10000 2500
Wire Wire Line
	8250 2000 8250 2100
Connection ~ 8250 2500
Wire Wire Line
	8250 2500 8650 2500
Connection ~ 8250 2100
Wire Wire Line
	8250 2100 8250 2200
Connection ~ 8250 2200
Wire Wire Line
	8250 2200 8250 2500
Wire Wire Line
	6500 2000 6500 2100
Wire Wire Line
	6500 2500 6900 2500
Connection ~ 6500 2100
Wire Wire Line
	6500 2100 6500 2200
Connection ~ 6500 2200
Wire Wire Line
	6500 2200 6500 2500
Wire Wire Line
	4700 2000 4700 2100
Wire Wire Line
	4700 2500 5100 2500
Connection ~ 4700 2100
Wire Wire Line
	4700 2100 4700 2200
Connection ~ 4700 2200
Wire Wire Line
	4700 2200 4700 2500
Wire Wire Line
	2900 2000 2900 2100
Wire Wire Line
	2900 2500 3300 2500
Connection ~ 2900 2100
Wire Wire Line
	2900 2100 2900 2200
Connection ~ 2900 2200
Wire Wire Line
	2900 2200 2900 2500
Wire Wire Line
	1050 2000 1050 2100
Wire Wire Line
	1050 2500 1450 2500
Connection ~ 1050 2100
Wire Wire Line
	1050 2100 1050 2200
Connection ~ 1050 2200
Wire Wire Line
	1050 2200 1050 2500
Wire Wire Line
	1050 1300 1050 1400
Wire Wire Line
	2900 1300 2900 1400
Wire Wire Line
	4700 1300 4700 1400
Wire Wire Line
	6500 1300 6500 1400
Wire Wire Line
	8250 1300 8250 1400
Wire Wire Line
	10000 1300 10000 1400
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5D22E961
P 2150 1800
F 0 "J2" H 2122 1682 50  0000 R CNN
F 1 "motor0" H 2250 2000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2150 1800 50  0001 C CNN
F 3 "~" H 2150 1800 50  0001 C CNN
	1    2150 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5D22FC68
P 4000 1800
F 0 "J3" H 3972 1682 50  0000 R CNN
F 1 "motor1" H 4100 2000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4000 1800 50  0001 C CNN
F 3 "~" H 4000 1800 50  0001 C CNN
	1    4000 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5D2304AE
P 5800 1800
F 0 "J4" H 5772 1682 50  0000 R CNN
F 1 "motor2" H 5900 2000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5800 1800 50  0001 C CNN
F 3 "~" H 5800 1800 50  0001 C CNN
	1    5800 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5D2322F1
P 7600 1800
F 0 "J5" H 7572 1682 50  0000 R CNN
F 1 "motor3" H 7700 2000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7600 1800 50  0001 C CNN
F 3 "~" H 7600 1800 50  0001 C CNN
	1    7600 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5D232B77
P 9350 1800
F 0 "J6" H 9322 1682 50  0000 R CNN
F 1 "motor4" H 9450 2000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9350 1800 50  0001 C CNN
F 3 "~" H 9350 1800 50  0001 C CNN
	1    9350 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5D233486
P 11100 1800
F 0 "J8" H 11072 1682 50  0000 R CNN
F 1 "motor5" H 11200 2000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 11100 1800 50  0001 C CNN
F 3 "~" H 11100 1800 50  0001 C CNN
	1    11100 1800
	-1   0    0    1   
$EndComp
Text Label 1050 1700 2    50   ~ 0
STEP_motor0
Text Label 1050 1800 2    50   ~ 0
DIR_motor0
Text Label 2900 1700 2    50   ~ 0
STEP_motor1
Text Label 2900 1800 2    50   ~ 0
DIR_motor1
Text Label 4700 1700 2    50   ~ 0
STEP_motor2
Text Label 4700 1800 2    50   ~ 0
DIR_motor2
Text Label 6500 1700 2    50   ~ 0
STEP_motor3
Text Label 6500 1800 2    50   ~ 0
DIR_motor3
Text Label 8250 1800 2    50   ~ 0
STEP_motor4
Text Label 8250 1700 2    50   ~ 0
DIR_motor4
Text Label 10000 1800 2    50   ~ 0
STEP_motor5
Text Label 10000 1700 2    50   ~ 0
DIR_motor5
Wire Wire Line
	8850 2500 10000 2500
Connection ~ 8850 2500
Wire Wire Line
	7100 2500 8250 2500
Connection ~ 7100 2500
Wire Wire Line
	5300 2500 6500 2500
Connection ~ 6500 2500
Wire Wire Line
	3500 2500 4700 2500
Connection ~ 4700 2500
Wire Wire Line
	1650 2500 2900 2500
Connection ~ 2900 2500
Text Label 6450 5950 3    50   ~ 0
STEP_motor0
Text Label 6550 5950 3    50   ~ 0
DIR_motor0
Text Label 6250 5950 3    50   ~ 0
STEP_motor1
Text Label 6350 5950 3    50   ~ 0
DIR_motor1
Text Label 6050 5950 3    50   ~ 0
STEP_motor2
Text Label 6150 5950 3    50   ~ 0
DIR_motor2
Text Label 5850 5950 3    50   ~ 0
STEP_motor3
Text Label 5950 5950 3    50   ~ 0
DIR_motor3
Text Label 5650 5950 3    50   ~ 0
STEP_motor4
Text Label 5750 5950 3    50   ~ 0
DIR_motor4
Text Label 5450 5950 3    50   ~ 0
STEP_motor5
Text Label 5550 5950 3    50   ~ 0
DIR_motor5
Text Label 10200 4200 2    50   ~ 0
UP_motor1
Text Label 10200 5250 2    50   ~ 0
UP_motor2
Text Label 10200 3900 2    50   ~ 0
UP_motor3
Text Label 10200 4950 2    50   ~ 0
UP_motor4
Text Label 10200 3600 2    50   ~ 0
UP_motor5
Text Label 10200 5350 2    50   ~ 0
DOWN_motor1
Text Label 10200 4100 2    50   ~ 0
HOME_motor1
Text Label 10200 4000 2    50   ~ 0
DOWN_motor2
Text Label 10200 5150 2    50   ~ 0
HOME_motor2
Text Label 10200 5050 2    50   ~ 0
DOWN_motor3
Text Label 10200 3800 2    50   ~ 0
HOME_motor3
Text Label 10200 3700 2    50   ~ 0
DOWN_motor4
Text Label 10200 4850 2    50   ~ 0
HOME_motor4
Text Label 10200 4750 2    50   ~ 0
DOWN_motor5
Text Label 10200 3500 2    50   ~ 0
HOME_motor5
Text Label 10200 5450 2    50   ~ 0
HOME_motor0
Text Label 10200 4300 2    50   ~ 0
DOWN_motor0
Text Label 5150 5950 3    50   ~ 0
UP_motor0
Text Label 4850 5950 3    50   ~ 0
UP_motor1
Text Label 4550 5950 3    50   ~ 0
UP_motor2
Text Label 4250 5950 3    50   ~ 0
UP_motor3
Text Label 3950 5950 3    50   ~ 0
UP_motor4
Text Label 3650 5950 3    50   ~ 0
UP_motor5
Text Label 4750 5950 3    50   ~ 0
DOWN_motor1
Text Label 4650 5950 3    50   ~ 0
HOME_motor1
Text Label 4450 5950 3    50   ~ 0
DOWN_motor2
Text Label 4350 5950 3    50   ~ 0
HOME_motor2
Text Label 4150 5950 3    50   ~ 0
DOWN_motor3
Text Label 4050 5950 3    50   ~ 0
HOME_motor3
Text Label 3850 5950 3    50   ~ 0
DOWN_motor4
Text Label 3750 5950 3    50   ~ 0
HOME_motor4
Text Label 3550 5950 3    50   ~ 0
DOWN_motor5
Text Label 3450 5950 3    50   ~ 0
HOME_motor5
Text Label 4950 5950 3    50   ~ 0
HOME_motor0
Text Label 5050 5950 3    50   ~ 0
DOWN_motor0
Text Label 8500 3700 2    50   ~ 0
EMERGENCY
Text Label 8500 3600 2    50   ~ 0
ONOFF
$Comp
L power:GND #PWR0106
U 1 1 5D33CB99
P 8200 4250
F 0 "#PWR0106" H 8200 4000 50  0001 C CNN
F 1 "GND" V 8205 4122 50  0000 R CNN
F 2 "" H 8200 4250 50  0001 C CNN
F 3 "" H 8200 4250 50  0001 C CNN
	1    8200 4250
	0    -1   -1   0   
$EndComp
Text Label 8200 4350 0    50   ~ 0
5V
Text Label 8500 3300 2    50   ~ 0
NEOPIXEL
Text Label 3350 5950 3    50   ~ 0
EMERGENCY
Text Label 3250 5950 3    50   ~ 0
ONOFF
Text Label 3150 5950 3    50   ~ 0
NEOPIXEL
Connection ~ 2750 3350
Wire Wire Line
	2850 3350 2750 3350
Connection ~ 2850 3350
Wire Wire Line
	2950 3350 2850 3350
Connection ~ 2950 3350
Wire Wire Line
	3050 3350 2950 3350
Wire Wire Line
	3150 3350 3050 3350
Connection ~ 3050 3350
Wire Wire Line
	2450 3350 2550 3350
Wire Wire Line
	2350 3350 2450 3350
Connection ~ 2450 3350
$Comp
L stepper_control-rescue:Arduino_Mega2560_Shield-arduino XA1
U 1 1 5D1C0625
P 4400 4650
F 0 "XA1" V 4347 2322 60  0000 R CNN
F 1 "Arduino_Mega2560_Shield" V 4453 2322 60  0000 R CNN
F 2 "Arduino:Arduino_Mega2560_Shield" H 5100 7400 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 5100 7400 60  0001 C CNN
	1    4400 4650
	0    1    1    0   
$EndComp
Text Label 7000 4400 0    50   ~ 0
MISO
Text Label 7000 4500 0    50   ~ 0
MOSI
Text Label 7000 4600 0    50   ~ 0
SCK
Text Label 5850 3350 1    50   ~ 0
SS
Text Label 10200 5550 2    50   ~ 0
UP_motor0
$Comp
L Connector:Conn_01x09_Male J10
U 1 1 5D24F0E9
P 10400 5150
F 0 "J10" H 10372 5082 50  0000 R CNN
F 1 "Conn_01x09_Male" H 10372 5173 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 10400 5150 50  0001 C CNN
F 3 "~" H 10400 5150 50  0001 C CNN
	1    10400 5150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x09_Male J9
U 1 1 5D2523EE
P 10400 3900
F 0 "J9" H 10372 3832 50  0000 R CNN
F 1 "Conn_01x09_Male" H 10372 3923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 10400 3900 50  0001 C CNN
F 3 "~" H 10400 3900 50  0001 C CNN
	1    10400 3900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5D273D4C
P 8000 4250
F 0 "J7" H 8108 4431 50  0000 C CNN
F 1 "Conn_01x02_Male" H 8108 4340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8000 4250 50  0001 C CNN
F 3 "~" H 8000 4250 50  0001 C CNN
	1    8000 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5D27F22C
P 8700 3700
F 0 "J12" H 8672 3582 50  0000 R CNN
F 1 "Conn_01x02_Male" H 8672 3673 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8700 3700 50  0001 C CNN
F 3 "~" H 8700 3700 50  0001 C CNN
	1    8700 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J11
U 1 1 5D27FF02
P 8700 3300
F 0 "J11" H 8672 3232 50  0000 R CNN
F 1 "Conn_01x01_Male" H 8672 3323 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8700 3300 50  0001 C CNN
F 3 "~" H 8700 3300 50  0001 C CNN
	1    8700 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D28B2B1
P 1450 1000
F 0 "#PWR0107" H 1450 750 50  0001 C CNN
F 1 "GND" H 1455 827 50  0000 C CNN
F 2 "" H 1450 1000 50  0001 C CNN
F 3 "" H 1450 1000 50  0001 C CNN
	1    1450 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5D28C1DC
P 3300 1000
F 0 "#PWR0108" H 3300 750 50  0001 C CNN
F 1 "GND" H 3305 827 50  0000 C CNN
F 2 "" H 3300 1000 50  0001 C CNN
F 3 "" H 3300 1000 50  0001 C CNN
	1    3300 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5D28CB1F
P 5100 1000
F 0 "#PWR0109" H 5100 750 50  0001 C CNN
F 1 "GND" H 5105 827 50  0000 C CNN
F 2 "" H 5100 1000 50  0001 C CNN
F 3 "" H 5100 1000 50  0001 C CNN
	1    5100 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5D28D643
P 6900 1000
F 0 "#PWR0110" H 6900 750 50  0001 C CNN
F 1 "GND" H 6905 827 50  0000 C CNN
F 2 "" H 6900 1000 50  0001 C CNN
F 3 "" H 6900 1000 50  0001 C CNN
	1    6900 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5D28DACD
P 8650 1000
F 0 "#PWR0111" H 8650 750 50  0001 C CNN
F 1 "GND" H 8655 827 50  0000 C CNN
F 2 "" H 8650 1000 50  0001 C CNN
F 3 "" H 8650 1000 50  0001 C CNN
	1    8650 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D28E61B
P 10400 1000
F 0 "#PWR0112" H 10400 750 50  0001 C CNN
F 1 "GND" H 10405 827 50  0000 C CNN
F 2 "" H 10400 1000 50  0001 C CNN
F 3 "" H 10400 1000 50  0001 C CNN
	1    10400 1000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0113
U 1 1 5D291EF6
P 1650 1000
F 0 "#PWR0113" H 1650 850 50  0001 C CNN
F 1 "+12V" H 1665 1173 50  0000 C CNN
F 2 "" H 1650 1000 50  0001 C CNN
F 3 "" H 1650 1000 50  0001 C CNN
	1    1650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0114
U 1 1 5D2939C3
P 3500 1000
F 0 "#PWR0114" H 3500 850 50  0001 C CNN
F 1 "+12V" H 3515 1173 50  0000 C CNN
F 2 "" H 3500 1000 50  0001 C CNN
F 3 "" H 3500 1000 50  0001 C CNN
	1    3500 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0115
U 1 1 5D293F56
P 5300 1000
F 0 "#PWR0115" H 5300 850 50  0001 C CNN
F 1 "+12V" H 5315 1173 50  0000 C CNN
F 2 "" H 5300 1000 50  0001 C CNN
F 3 "" H 5300 1000 50  0001 C CNN
	1    5300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0116
U 1 1 5D296497
P 7100 1000
F 0 "#PWR0116" H 7100 850 50  0001 C CNN
F 1 "+12V" H 7115 1173 50  0000 C CNN
F 2 "" H 7100 1000 50  0001 C CNN
F 3 "" H 7100 1000 50  0001 C CNN
	1    7100 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 5D298408
P 8850 1000
F 0 "#PWR0117" H 8850 850 50  0001 C CNN
F 1 "+12V" H 8865 1173 50  0000 C CNN
F 2 "" H 8850 1000 50  0001 C CNN
F 3 "" H 8850 1000 50  0001 C CNN
	1    8850 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0118
U 1 1 5D298A01
P 10600 1000
F 0 "#PWR0118" H 10600 850 50  0001 C CNN
F 1 "+12V" H 10615 1173 50  0000 C CNN
F 2 "" H 10600 1000 50  0001 C CNN
F 3 "" H 10600 1000 50  0001 C CNN
	1    10600 1000
	1    0    0    -1  
$EndComp
Text Label 8100 4950 2    50   ~ 0
MISO
Text Label 8100 4850 2    50   ~ 0
MOSI
Text Label 8100 4750 2    50   ~ 0
SCK
$Comp
L power:GND #PWR0119
U 1 1 5D3651CA
P 8100 4550
F 0 "#PWR0119" H 8100 4300 50  0001 C CNN
F 1 "GND" H 8105 4377 50  0000 C CNN
F 2 "" H 8100 4550 50  0001 C CNN
F 3 "" H 8100 4550 50  0001 C CNN
	1    8100 4550
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x05_Male J13
U 1 1 5D369E56
P 8300 4750
F 0 "J13" H 8272 4682 50  0000 R CNN
F 1 "SPI" H 8272 4773 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8300 4750 50  0001 C CNN
F 3 "~" H 8300 4750 50  0001 C CNN
	1    8300 4750
	-1   0    0    1   
$EndComp
Text Label 8100 4650 2    50   ~ 0
SS
$EndSCHEMATC
