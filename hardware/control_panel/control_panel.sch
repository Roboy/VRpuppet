EESchema Schematic File Version 4
LIBS:control_panel-cache
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
L Connector:Conn_01x02_Female J1
U 1 1 5D1B487D
P 1950 1150
F 0 "J1" H 1978 1126 50  0000 L CNN
F 1 "up_motor0" H 1978 1035 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1950 1150 50  0001 C CNN
F 3 "~" H 1950 1150 50  0001 C CNN
	1    1950 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5D1B497F
P 1950 1475
F 0 "J2" H 1977 1451 50  0000 L CNN
F 1 "down_motor0" H 1977 1360 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1950 1475 50  0001 C CNN
F 3 "~" H 1950 1475 50  0001 C CNN
	1    1950 1475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5D1B4A09
P 1950 1800
F 0 "J3" H 1977 1776 50  0000 L CNN
F 1 "home_motor0" H 1977 1685 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 1950 1800 50  0001 C CNN
F 3 "~" H 1950 1800 50  0001 C CNN
	1    1950 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D1B4B7D
P 1600 1150
F 0 "#PWR0101" H 1600 900 50  0001 C CNN
F 1 "GND" V 1605 1022 50  0000 R CNN
F 2 "" H 1600 1150 50  0001 C CNN
F 3 "" H 1600 1150 50  0001 C CNN
	1    1600 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1150 1650 1150
Wire Wire Line
	1650 1150 1650 1475
Wire Wire Line
	1650 1475 1750 1475
Connection ~ 1650 1150
Wire Wire Line
	1650 1150 1750 1150
Wire Wire Line
	1650 1475 1650 1800
Wire Wire Line
	1650 1800 1750 1800
Connection ~ 1650 1475
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5D1B4D1A
P 3225 1150
F 0 "J5" H 3253 1126 50  0000 L CNN
F 1 "up_motor1" H 3253 1035 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 3225 1150 50  0001 C CNN
F 3 "~" H 3225 1150 50  0001 C CNN
	1    3225 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5D1B4D21
P 3225 1475
F 0 "J6" H 3252 1451 50  0000 L CNN
F 1 "down_motor1" H 3252 1360 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 3225 1475 50  0001 C CNN
F 3 "~" H 3225 1475 50  0001 C CNN
	1    3225 1475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5D1B4D28
P 3225 1800
F 0 "J7" H 3252 1776 50  0000 L CNN
F 1 "home_motor1" H 3252 1685 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 3225 1800 50  0001 C CNN
F 3 "~" H 3225 1800 50  0001 C CNN
	1    3225 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D1B4D2F
P 2875 1150
F 0 "#PWR0102" H 2875 900 50  0001 C CNN
F 1 "GND" V 2880 1022 50  0000 R CNN
F 2 "" H 2875 1150 50  0001 C CNN
F 3 "" H 2875 1150 50  0001 C CNN
	1    2875 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	2875 1150 2925 1150
Wire Wire Line
	2925 1150 2925 1475
Wire Wire Line
	2925 1475 3025 1475
Connection ~ 2925 1150
Wire Wire Line
	2925 1150 3025 1150
Wire Wire Line
	2925 1475 2925 1800
Wire Wire Line
	2925 1800 3025 1800
Connection ~ 2925 1475
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 5D1B4FDD
P 4525 1150
F 0 "J8" H 4553 1126 50  0000 L CNN
F 1 "up_motor2" H 4553 1035 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 4525 1150 50  0001 C CNN
F 3 "~" H 4525 1150 50  0001 C CNN
	1    4525 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 5D1B4FE4
P 4525 1475
F 0 "J9" H 4552 1451 50  0000 L CNN
F 1 "down_motor2" H 4552 1360 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 4525 1475 50  0001 C CNN
F 3 "~" H 4525 1475 50  0001 C CNN
	1    4525 1475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J10
U 1 1 5D1B4FEB
P 4525 1800
F 0 "J10" H 4552 1776 50  0000 L CNN
F 1 "home_motor2" H 4552 1685 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 4525 1800 50  0001 C CNN
F 3 "~" H 4525 1800 50  0001 C CNN
	1    4525 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D1B4FF2
P 4175 1150
F 0 "#PWR0103" H 4175 900 50  0001 C CNN
F 1 "GND" V 4180 1022 50  0000 R CNN
F 2 "" H 4175 1150 50  0001 C CNN
F 3 "" H 4175 1150 50  0001 C CNN
	1    4175 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4175 1150 4225 1150
Wire Wire Line
	4225 1150 4225 1475
Wire Wire Line
	4225 1475 4325 1475
Connection ~ 4225 1150
Wire Wire Line
	4225 1150 4325 1150
Wire Wire Line
	4225 1475 4225 1800
Wire Wire Line
	4225 1800 4325 1800
Connection ~ 4225 1475
$Comp
L Connector:Conn_01x02_Female J11
U 1 1 5D1B522E
P 5750 1150
F 0 "J11" H 5778 1126 50  0000 L CNN
F 1 "up_motor3" H 5778 1035 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 5750 1150 50  0001 C CNN
F 3 "~" H 5750 1150 50  0001 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J12
U 1 1 5D1B5235
P 5750 1475
F 0 "J12" H 5777 1451 50  0000 L CNN
F 1 "down_motor3" H 5777 1360 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 5750 1475 50  0001 C CNN
F 3 "~" H 5750 1475 50  0001 C CNN
	1    5750 1475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J13
U 1 1 5D1B523C
P 5750 1800
F 0 "J13" H 5777 1776 50  0000 L CNN
F 1 "home_motor3" H 5777 1685 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 5750 1800 50  0001 C CNN
F 3 "~" H 5750 1800 50  0001 C CNN
	1    5750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D1B5243
P 5400 1150
F 0 "#PWR0104" H 5400 900 50  0001 C CNN
F 1 "GND" V 5405 1022 50  0000 R CNN
F 2 "" H 5400 1150 50  0001 C CNN
F 3 "" H 5400 1150 50  0001 C CNN
	1    5400 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 1150 5450 1150
Wire Wire Line
	5450 1150 5450 1475
Wire Wire Line
	5450 1475 5550 1475
Connection ~ 5450 1150
Wire Wire Line
	5450 1150 5550 1150
Wire Wire Line
	5450 1475 5450 1800
Wire Wire Line
	5450 1800 5550 1800
Connection ~ 5450 1475
$Comp
L Connector:Conn_01x02_Female J14
U 1 1 5D1B5533
P 7000 1150
F 0 "J14" H 7028 1126 50  0000 L CNN
F 1 "up_motor4" H 7028 1035 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 7000 1150 50  0001 C CNN
F 3 "~" H 7000 1150 50  0001 C CNN
	1    7000 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J15
U 1 1 5D1B553A
P 7000 1475
F 0 "J15" H 7027 1451 50  0000 L CNN
F 1 "down_motor4" H 7027 1360 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 7000 1475 50  0001 C CNN
F 3 "~" H 7000 1475 50  0001 C CNN
	1    7000 1475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J16
U 1 1 5D1B5541
P 7000 1800
F 0 "J16" H 7027 1776 50  0000 L CNN
F 1 "home_motor4" H 7027 1685 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 7000 1800 50  0001 C CNN
F 3 "~" H 7000 1800 50  0001 C CNN
	1    7000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D1B5548
P 6650 1150
F 0 "#PWR0105" H 6650 900 50  0001 C CNN
F 1 "GND" V 6655 1022 50  0000 R CNN
F 2 "" H 6650 1150 50  0001 C CNN
F 3 "" H 6650 1150 50  0001 C CNN
	1    6650 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 1150 6700 1150
Wire Wire Line
	6700 1150 6700 1475
Wire Wire Line
	6700 1475 6800 1475
Connection ~ 6700 1150
Wire Wire Line
	6700 1150 6800 1150
Wire Wire Line
	6700 1475 6700 1800
Wire Wire Line
	6700 1800 6800 1800
Connection ~ 6700 1475
$Comp
L Connector:Conn_01x02_Female J17
U 1 1 5D1B5A09
P 8350 1150
F 0 "J17" H 8378 1126 50  0000 L CNN
F 1 "up_motor5" H 8378 1035 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 8350 1150 50  0001 C CNN
F 3 "~" H 8350 1150 50  0001 C CNN
	1    8350 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J18
U 1 1 5D1B5A10
P 8350 1475
F 0 "J18" H 8377 1451 50  0000 L CNN
F 1 "down_motor5" H 8377 1360 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 8350 1475 50  0001 C CNN
F 3 "~" H 8350 1475 50  0001 C CNN
	1    8350 1475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J19
U 1 1 5D1B5A17
P 8350 1800
F 0 "J19" H 8377 1776 50  0000 L CNN
F 1 "home_motor5" H 8377 1685 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 8350 1800 50  0001 C CNN
F 3 "~" H 8350 1800 50  0001 C CNN
	1    8350 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D1B5A1E
P 8000 1150
F 0 "#PWR0106" H 8000 900 50  0001 C CNN
F 1 "GND" V 8005 1022 50  0000 R CNN
F 2 "" H 8000 1150 50  0001 C CNN
F 3 "" H 8000 1150 50  0001 C CNN
	1    8000 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 1150 8050 1150
Wire Wire Line
	8050 1150 8050 1475
Wire Wire Line
	8050 1475 8150 1475
Connection ~ 8050 1150
Wire Wire Line
	8050 1150 8150 1150
Wire Wire Line
	8050 1475 8050 1800
Wire Wire Line
	8050 1800 8150 1800
Connection ~ 8050 1475
$Comp
L Connector:Conn_01x02_Female J20
U 1 1 5D1B62E2
P 9900 1150
F 0 "J20" H 9927 1126 50  0000 L CNN
F 1 "EMERGENCY" H 9927 1035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9900 1150 50  0001 C CNN
F 3 "~" H 9900 1150 50  0001 C CNN
	1    9900 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J21
U 1 1 5D1B6E9D
P 9900 1475
F 0 "J21" H 9928 1451 50  0000 L CNN
F 1 "ON/OFF" H 9928 1360 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9900 1475 50  0001 C CNN
F 3 "~" H 9900 1475 50  0001 C CNN
	1    9900 1475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D1B6FD9
P 9550 1150
F 0 "#PWR0107" H 9550 900 50  0001 C CNN
F 1 "GND" V 9555 1022 50  0000 R CNN
F 2 "" H 9550 1150 50  0001 C CNN
F 3 "" H 9550 1150 50  0001 C CNN
	1    9550 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 1150 9600 1150
Wire Wire Line
	9600 1150 9600 1475
Wire Wire Line
	9600 1475 9700 1475
Connection ~ 9600 1150
Wire Wire Line
	9600 1150 9700 1150
Text Label 1750 1250 2    50   ~ 0
up_motor0
Text Label 3025 1250 2    50   ~ 0
up_motor1
Text Label 4325 1250 2    50   ~ 0
up_motor2
Text Label 5550 1250 2    50   ~ 0
up_motor3
Text Label 6800 1250 2    50   ~ 0
up_motor4
Text Label 8150 1250 2    50   ~ 0
up_motor5
Text Label 1750 1575 2    50   ~ 0
down_motor0
Text Label 3025 1575 2    50   ~ 0
down_motor1
Text Label 4325 1575 2    50   ~ 0
down_motor2
Text Label 5550 1575 2    50   ~ 0
down_motor3
Text Label 6800 1575 2    50   ~ 0
down_motor4
Text Label 8150 1575 2    50   ~ 0
down_motor5
Text Label 1750 1900 2    50   ~ 0
home_motor0
Text Label 3025 1900 2    50   ~ 0
home_motor1
Text Label 4325 1900 2    50   ~ 0
home_motor2
Text Label 5550 1900 2    50   ~ 0
home_motor3
Text Label 6800 1900 2    50   ~ 0
home_motor4
Text Label 8150 1900 2    50   ~ 0
home_motor5
Text Label 2050 4075 3    50   ~ 0
up_motor0
Text Label 2350 4075 3    50   ~ 0
up_motor1
Text Label 2650 4075 3    50   ~ 0
up_motor2
Text Label 2950 4075 3    50   ~ 0
up_motor3
Text Label 3250 4075 3    50   ~ 0
up_motor4
Text Label 3550 4075 3    50   ~ 0
up_motor5
Text Label 2150 4075 3    50   ~ 0
down_motor0
Text Label 2450 4075 3    50   ~ 0
down_motor1
Text Label 2750 4075 3    50   ~ 0
down_motor2
Text Label 3050 4075 3    50   ~ 0
down_motor3
Text Label 3350 4075 3    50   ~ 0
down_motor4
Text Label 3650 4075 3    50   ~ 0
down_motor5
Text Label 2250 4075 3    50   ~ 0
home_motor0
Text Label 2550 4075 3    50   ~ 0
home_motor1
Text Label 2850 4075 3    50   ~ 0
home_motor2
Text Label 3150 4075 3    50   ~ 0
home_motor3
Text Label 3450 4075 3    50   ~ 0
home_motor4
Text Label 3750 4075 3    50   ~ 0
home_motor5
Text Label 9700 1250 2    50   ~ 0
EMERGENCY
Text Label 9700 1575 2    50   ~ 0
ONOFF
Text Label 3950 4075 3    50   ~ 0
ONOFF
Text Label 3850 4075 3    50   ~ 0
EMERGENCY
$Comp
L Connector:Conn_01x23_Male J4
U 1 1 5D1BA73E
P 3150 3875
F 0 "J4" V 2985 3851 50  0000 C CNN
F 1 "Conn_01x23_Male" V 3076 3851 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x23_P2.54mm_Vertical" H 3150 3875 50  0001 C CNN
F 3 "~" H 3150 3875 50  0001 C CNN
	1    3150 3875
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5D1BA95A
P 4050 4075
F 0 "#PWR0108" H 4050 3825 50  0001 C CNN
F 1 "GND" V 4050 3875 50  0000 C CNN
F 2 "" H 4050 4075 50  0001 C CNN
F 3 "" H 4050 4075 50  0001 C CNN
	1    4050 4075
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5D1BAB89
P 4150 4075
F 0 "#PWR0109" H 4150 3925 50  0001 C CNN
F 1 "+5V" V 4150 4275 50  0000 C CNN
F 2 "" H 4150 4075 50  0001 C CNN
F 3 "" H 4150 4075 50  0001 C CNN
	1    4150 4075
	-1   0    0    1   
$EndComp
Text Label 4250 4075 3    50   ~ 0
NEOPIXEL
$Comp
L LED:SK6812MINI D1
U 1 1 5D1B926A
P 1725 2775
F 0 "D1" H 2066 2821 50  0000 L CNN
F 1 "SK6812MINI" H 1575 2350 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 1775 2475 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 1825 2400 50  0001 L TNN
	1    1725 2775
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5D1B93B6
P 1725 2475
F 0 "#PWR0112" H 1725 2325 50  0001 C CNN
F 1 "+5V" V 1725 2675 50  0000 C CNN
F 2 "" H 1725 2475 50  0001 C CNN
F 3 "" H 1725 2475 50  0001 C CNN
	1    1725 2475
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5D1B9462
P 1725 3075
F 0 "#PWR0113" H 1725 2825 50  0001 C CNN
F 1 "GND" V 1725 2875 50  0000 C CNN
F 2 "" H 1725 3075 50  0001 C CNN
F 3 "" H 1725 3075 50  0001 C CNN
	1    1725 3075
	0    1    1    0   
$EndComp
Text Label 1425 2775 2    50   ~ 0
NEOPIXEL
$Comp
L LED:SK6812MINI D2
U 1 1 5D1B9588
P 2950 2775
F 0 "D2" H 3291 2821 50  0000 L CNN
F 1 "SK6812MINI" H 2800 2350 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 3000 2475 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 3050 2400 50  0001 L TNN
	1    2950 2775
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D3
U 1 1 5D1B9ACD
P 4125 2775
F 0 "D3" H 4466 2821 50  0000 L CNN
F 1 "SK6812MINI" H 3975 2350 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 4175 2475 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 4225 2400 50  0001 L TNN
	1    4125 2775
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D4
U 1 1 5D1B9BE3
P 5175 2775
F 0 "D4" H 5516 2821 50  0000 L CNN
F 1 "SK6812MINI" H 5025 2350 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 5225 2475 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 5275 2400 50  0001 L TNN
	1    5175 2775
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D5
U 1 1 5D1B9CF3
P 6175 2775
F 0 "D5" H 6516 2821 50  0000 L CNN
F 1 "SK6812MINI" H 6025 2350 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 6225 2475 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 6275 2400 50  0001 L TNN
	1    6175 2775
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D6
U 1 1 5D1B9D9F
P 7225 2775
F 0 "D6" H 7566 2821 50  0000 L CNN
F 1 "SK6812MINI" H 7075 2350 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 7275 2475 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 7325 2400 50  0001 L TNN
	1    7225 2775
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D7
U 1 1 5D1B9E65
P 8300 2775
F 0 "D7" H 8641 2821 50  0000 L CNN
F 1 "SK6812MINI" H 8150 2350 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 8350 2475 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 8400 2400 50  0001 L TNN
	1    8300 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 2475 2950 2475
Connection ~ 1725 2475
Connection ~ 2950 2475
Wire Wire Line
	2950 2475 4125 2475
Connection ~ 4125 2475
Wire Wire Line
	4125 2475 5175 2475
Connection ~ 5175 2475
Wire Wire Line
	5175 2475 6175 2475
Connection ~ 6175 2475
Wire Wire Line
	6175 2475 7225 2475
Wire Wire Line
	7225 3075 6175 3075
Connection ~ 1725 3075
Connection ~ 2950 3075
Wire Wire Line
	2950 3075 1725 3075
Connection ~ 4125 3075
Wire Wire Line
	4125 3075 2950 3075
Connection ~ 5175 3075
Wire Wire Line
	5175 3075 4125 3075
Connection ~ 6175 3075
Wire Wire Line
	6175 3075 5175 3075
Wire Wire Line
	3250 2775 3825 2775
Wire Wire Line
	4425 2775 4875 2775
Wire Wire Line
	6475 2775 6925 2775
Wire Wire Line
	8300 2475 7225 2475
Connection ~ 7225 2475
Wire Wire Line
	8300 3075 7225 3075
Connection ~ 7225 3075
Wire Wire Line
	7525 2775 8000 2775
NoConn ~ 8600 2775
Wire Wire Line
	2025 2775 2650 2775
Wire Wire Line
	5475 2775 5875 2775
$EndSCHEMATC
