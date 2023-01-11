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

#echo "                                   "
#echo -e "${O} Below is the information about the server${W}"
#sleep 1

echo "                         "
echo "*************************"
echo "*   BASEBOARD INFO      *"
echo "*************************"
echo "                         "

dmidecode --type baseboard | grep "Product Name" | awk '{print $3}'

sleep 1

COUNT=`dmidecode --type baseboard | grep "Product Name" | awk '{print $3}'`
if ((COUNT == Elizium))
then
   echo -e "\e[1;32m TEST PASSED \033[0m "
   echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi


dmidecode --type baseboard | grep "Serial Number" | awk '{print $3}'

sleep 1

COUNT=`dmidecode --type baseboard | grep "Serial Number" | awk '{print $3}'`
if ((COUNT == X32160CP-002))
then
   echo -e "\e[1;32m TEST PASSED \033[0m "
   echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi


#dmidecode --type baseboard | grep  "Version" | awk '{print $2}'
#COUNT=`dmidecode --type baseboard | grep  "Version" | awk '{print $2}'
#if ((COUNT == 
#then
#   echo -e "\e[1;32m TEST PASSED \033[0m "
# else 
#   echo -e "\e[0;31m TEST NOT PASSED \033[0m "
#fi

