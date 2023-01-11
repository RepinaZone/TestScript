#!/bin/bash
############Text editing colors##############
#WHITE
W='\033[0m'
#RED
R='\033[0;31m'
#BLUE
B='\033[96m'
#ORANGE
O='\033[93m'
#YELLOW
Y='\033[0;33m'
#ZAGOLOVOK
Z='\e[37;4;37m'
#BLINK 
BL='\033[93;3m'
#GREEN
G='\033[4;32m'


##########Welcome logo###########################

./logo.sh
rm result.sh
touch result.sh
chmod +x result.sh

echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"



#./dateinfo.sh

#echo -e "${Z}"
#read -p " Please press "Enter" to continue"
#echo -e "${W}"
#echo -e "${B}Continue${W}"

#############Motherboard Information###############

./boardinfo.sh

sleep 3
echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"

#############Bios Information###################
./biosinfo.sh

echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"

#############Writing a MAC address to FRU using the IPMItool utility#############

#./maccreate1.sh


#echo -e "${Z}"
#read -p " Please press "Enter" to continue"
#echo -e "${W}"
#echo -e "${B}Continue${W}"

############Information about connected PCI devices#############

./pciinfo.sh

echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"

############Information about the number of connected and missing RAM modules######################

./meminfo.sh

echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"

############Information about connected drives, their name, model, and temperature readings########

./Diskinfo.sh

echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"

##########number of connected USB devices and name########################

./usbinfo.sh

echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"

###########Network interfaces information, their status ( UP / Down ) and received IP addresses#########

./ipinfo.sh

echo -e "${Z}"
read -p " Please press "Enter" to continue"
echo -e "${W}"
echo -e "${B}Continue${W}"

##########CPU Information. Manufacturer, model name, series#############

./cpuinfo.sh

##########Here you can run stress testing, in which, in addition to the load on the processor cores,
 you can monitor the temperature indicators of sensors: disks, processors,
 temperature inside the case.##################

#echo -e "${Z}"
#read -p " Please press "Enter" to start stress test"
#echo -e "${W}"
#echo -e "${B}Continue${W}"

#timeout 600s ./stress-tm.sh 

 #echo -e "\e[1;32m TEST PASSED" 
  #echo "OK" >> /home/tester/result.sh
#sleep 10 && tmux kill-server

#clear

read -p " Press "Enter" to display the final test result "

clear

###############Here you can see the final result of the full server test (good/bad)########################

./final.sh
