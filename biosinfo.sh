#!/bin/bash
echo "*************************"
echo "*      BIOS INFO        *"
echo "*************************"
echo "                         "

sleep 1

echo -e "${Y}BIOS information${W}"

sleep 1 


dmidecode -t bios | grep Vendor | awk '{print $2}' | sed -e 's/-dev//'

sleep 1

BIOS_VENDOR=`dmidecode -t bios | grep Vendor | awk '{print $2}' | sed -e 's/-dev//'`
if [ "$BIOS_VENDOR" == "Zvezda" ]
 then
   echo -e "\e[1;32m TEST PASSED \033[0m "
  echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi

dmidecode -t bios | grep Version | awk '{print $2}' | sed -e 's/-dev//'
BIOS_VERSION=`dmidecode -t bios | grep Version | awk '{print $2}' | sed -e 's/-dev//'`

sleep 1

if [ "$BIOS_VERSION" == "Favaris" ]
 then 
  echo -e "\e[1;32m TEST PASSED \033[0m "
  echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi

sleep 1

dmidecode -t bios | grep Release | awk '{print $2" "$3}' | sed -e 's/-dev//'
BIOS_RELEASE_DATE=`dmidecode -t bios | grep Release | awk '{print $2" "$3}' | sed -e 's/-dev//'`

sleep 1

if [ "$BIOS_RELEASE_DATE" == "Date: 21/09/2022" ]
 then 
  echo -e "\e[1;32m TEST PASSED \033[0m "
   echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi
