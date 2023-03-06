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
#GREEN
G='\e[1;32m'


#echo "*************************"
#echo "*     MEMORY INFO        *"
#echo "*************************"
#echo "                         "

COUNT=`dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 3200\|Configured Memory Speed: 2933\|Configured Memory Speed: 2400\|Configured Memory Speed: 2666'`
echo -e "${O} installed RAM strips : ${COUNT} "

echo -e "${W}  "

if ((COUNT == 16 ))
 then
  echo -e "${G}TEST PASSED"
  #echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" && echo -e "${W}  "
  #echo "NOT">> /home/tester/result.sh
fi
echo -e "${W}  "

DIMM2=`dmidecode -t 17 |awk '/Device/{i++;print "DIMM "i}/Size/{print $2 " " $3 " " $4}' | grep -iB1 "No Module Installed"`
echo "$DIMM2" > checkmem 
echo -e "${BL} Uninstalled Modules : ${W}"
grep -v "No Module Installed" checkmem
