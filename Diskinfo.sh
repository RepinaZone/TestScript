#!/bin/bash

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
Z='e[37;1;47m'
#BLINK 
BL='\033[33;5m'

echo "*************************"
echo "*       DISC INFO       *"
echo "*************************"
echo "                         "
sleep 1

echo -e "${Y}Temperature and size dics${W}"

sleep 1

number=0
for symbol in {a..i}
do
    disk="/dev/sd$symbol"
    let number++
    echo "Device" $number
    if ( test -b $disk )
    then
        #echo "Device" $number
        echo -e '\033[0;32m' `hddtemp $disk` '\033[0m'
    fi
done

lsblk | grep "nvme0n1"

lsblk | grep "nvme1n1"
