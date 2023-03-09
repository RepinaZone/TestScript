#!/bin/bash

touch ledm_log.txt

clear

echo "ABB-FLP LED check"...
ipmitool raw 0x3a 0x6a 0x00 0x09 0x01 0xc4 0x00 0x05 0x54
read -p "Please check RED LED ON and Press ENTER to continue..."
ipmitool raw 0x3a 0x6a 0x00 0x09 0x01 0xc4 0x00 0x05 0x45
read -p "Please check BLUE LED ON and Press ENTER to continue..."
ipmitool raw 0x3a 0x6a 0x00 0x09 0x01 0xc4 0x00 0x05 0x51
read -p "Please check GREEN LED ON and Press ENTER to continue..."
ipmitool raw 0x3a 0x6a 0x00 0x09 0x01 0xc4 0x00 0x05 0x55
read -p "Please check ALL LED OFF and Press ENTER to continue..."

read -p "Does ALL Front LED active correctly?(Yes/No)" P
if [ "$P" == "Y" -o "$P" == "y"  ];then
  echo "===== Front LED Check PASS !! =====" | tee -a log/tmp.log
else
  echo -e "\e[0;31m FAIL !! \e[0m"
  echo "Front LED FIAL!!" >> ledm_log.txt
fi
