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
L diy_connectors:JACK_STEREO J1
U 1 1 5F9F1AC2
P 3350 2850
F 0 "J1" H 3355 3225 50  0000 C CNN
F 1 "JACK_STEREO" H 3355 3134 50  0000 C CNN
F 2 "MW_conn:SJ1-3513_3_5mm_stereo_jack" H 3350 2850 50  0001 C CNN
F 3 "" H 3350 2850 50  0001 C CNN
	1    3350 2850
	1    0    0    -1  
$EndComp
$Comp
L MW_conn:batteryInterrupter J2
U 1 1 5F9F20B4
P 5400 2900
F 0 "J2" H 5628 2996 50  0000 L CNN
F 1 "batteryInterrupter" H 5628 2905 50  0000 L CNN
F 2 "MW_conn:BatteryInterrupter" H 5400 2900 50  0001 C CNN
F 3 "" H 5400 2900 50  0001 C CNN
	1    5400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2700 5000 2700
Wire Wire Line
	3700 3000 5000 3000
NoConn ~ 3700 2900
Text Notes 5200 3250 0    50   ~ 0
Interrupter is fabricated on PCB
$EndSCHEMATC
