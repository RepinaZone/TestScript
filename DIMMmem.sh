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
Z='\e[37;4;37m'
#BLINK 
BL='\033[93;3m'
#GREEN
G='\033[4;32m'



#DIMM=`dmidecode -t memory |awk '/Device/{i++;print "Device "i}/\t2666|\3200|\2400|\tSize|\tMT/' |egrep --color=always "No|Module|NO|Installed|$"`
#DIMM=`dmidecode -t 17 |awk '/Device/{i++;print "DIMM "i}/\t2666|\3200|\2400|\tSize|\tMT/' |egrep --color=always "No|Module|NO|Installed|$"`
#echo "$DIMM"

DIMM2=`dmidecode -t 17 |awk '/Device/{i++;print "DIMM "i}/Size/{print $2 " " $3 " " $4}' | grep -iB1 "No Module Installed"`
echo "$DIMM2" > checkmem 
#echo -e "${BL} Uninstalled Modules : ${W}"
 grep -v "No Module Installed" checkmem
# then
#  echo -e "${R}TEST NOT PASSED"
#  echo "OK">> /home/tester/result.sh
# else
#  echo -e "${G} TEST PASSED" && echo -e "${W}  "
#  echo "NOT">> /home/tester/result.sh
#fi
