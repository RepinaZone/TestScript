#!/bin/bash

echo "*************************"
echo "*     NETWORK INFO      *"
echo "*************************"
echo "                         "


ip -br a | grep "UP" | awk '{print $1 "    " $3 "     " $2}'

COUNT=`ip -br a | grep "UP" | awk '{print $1 "    " $3 "     " $2}' | wc -l`
if ((COUNT >= 1))
 then
  echo -e "\e[1;32m TEST PASSED" 
  echo "OK" >> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi

