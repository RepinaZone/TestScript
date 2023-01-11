#!/bin/bash

#GREEN
G='\e[1;32m'
#RED
R='\e[1;31m'
#WHITE
W='\033[0m'

echo "*************************"
echo "*       CPU INFO        *"
echo "*************************"
echo "                         "
cat /proc/cpuinfo | grep 'model name'| awk '{print $4 " " $5 " " $6 " " $7 " " $8 "  " $9 " " $10 }'|uniq
COUNT=`cat /proc/cpuinfo | grep 'model name' | wc -l`
echo -e "\e[1;93mProcessors have $COUNT cores"
#if ((COUNT == 32\|48\|64))
# then
#  echo -e "${G}TEST PASSED${W}"
#    echo "OK">> /home/tester/result.sh
# else
#  echo -e "\e[1;31m TEST NOT PASSED" 
#  echo "NOT">> /home/tester/result.sh
#fi
