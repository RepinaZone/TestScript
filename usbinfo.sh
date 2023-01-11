#!/bin/bash

#WHITE
W='\033[0m'
#RED
R='\033[1;31m'
#BLUE
B='\033[96m'
#ORANGE
O='\033[93m'
#YELLOW
Y='\033[0;33m'
#ZAGOLOVOK
Z='e[37;1;47m'
#BLINK 
BL='\033[33;5m'
#GREEN
G='\e[1;32m'



echo "*************************"
echo "*      USB INFO         *"
echo "*************************"
echo "                         "


echo -e "${Y}Connected USB devices${W}"

sleep 1

#lsusb |awk '{print $3 " " $7 " " $8 " " $9 " "  $10}' | egrep --color=always "USB|Keyboard|Corp|BUS|$"
#COUNT=`lsusb |awk '{print $3 " " $7 " " $8 " " $9 " "  $10}' | egrep --color=always "USB|Keyboard|Corp|BUS|$" | wc -l`
#lsusb | grep "Kingston" | awk '{print $3 " " $4 " " $7 " " $8 " " $9 " " $10 $11 " " $12 " " $13}'
#COUNT=`lsusb | grep "Kingston" | awk '{print $3 " " $4 " " $7 " " $8 " " $9 " " $10 $11 " " $12 " " $13}' | wc -l`
lsusb | grep "CASUE\|Mouse\|Keyboard\|Kingston\|Logitech"  | awk '{print $7 " " $8 " " $9 " " $10 " "$11 " " $12}'
#COUNT=`lsusb | grep "CASUE\|Mouse"  | awk '{print $7 " " $8 " " $9 " " $10 " "$11 " " $12}' | wc -l`
COUNT=`lsusb | grep "CASUE\|Mouse\|Keyboard\|Kingston\|Logitech"  | awk '{print $7 " " $8 " " $9 " " $10 " "$11 " " $12}' | wc -l`
sleep 1
 if ((COUNT == 2))
  then
   echo -e "${G} TEST PASSED"
     echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi
echo -e  "${W}"
#dmidecode -t memory |awk '/Device/{i++;print "Device "i}/\tSpeed|\tSize|\tForm/' |egrep --color=always "No|Module|NO|Installed|$"
