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

#dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 3200'
echo "*************************"
echo "*     MEMORY INFO        *"
echo "*************************"
echo "                         "

sleep 1 

#echo -e "${Y}Connected RAM${W}"
#echo -e "${O} installed RAM strips : ${COUNT} "
#dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 2666'
#dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 3200'
#COUNT=`dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 3200|\Configured Memory Speed: 2933|\Configured Memory Speed: 2400|\Configured Memory Speed: 2666'`
#COUNT=`dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 2933'`
#COUNT=`dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 2400'`
#COUNT=`dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 2666'`
COUNT=`dmidecode -t 17 | grep -A 18 'Memory Device' | grep -c 'Configured Memory Speed: 3200\|Configured Memory Speed: 2933\|Configured Memory Speed: 2400\|Configured Memory Speed: 2666'`
echo -e "${O} installed RAM strips : ${COUNT} "


sleep 2
echo -e "${W}  "
#./DIMMmem.sh


#if ((COUNT ==1))
if ((COUNT == 16 ))
 then
  echo -e "${G}TEST PASSED"
  echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" && echo -e "${W}  "
  echo "NOT">> /home/tester/result.sh
fi
echo -e "${W}  "&&./DIMMmem.sh
# else 
#  echo -e "${R}TEST NOT PASSED"
#fi

echo -e "${W}  "

#COUNT='dmidecode -t memory |awk '/Device/{i++}/\tSpeed:|\tSize:/{if(i<17) printf "Device "i:  $0}": |egrep "32|2933" |wc -l)
#dmidecode -t memory |awk '/Device/{i++;print "Device "i}/\t2666|\tSize|\tMT/' |egrep --color=always "No|Module|NO|Installed|$"
#if [ "${COUNT}" == "8" ]; then
#    echo -e "${G}TEST PASSED${W}"
# else
#  echo -e "${R} TEST NOT PASSED ${W}"
#fi
#done


