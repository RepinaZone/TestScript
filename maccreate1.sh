#!/bin/bash
#GREEN
G='\033[1;32m'
#WHITE
W='\033[0m'
#YELLOW
Y='\033[0;33m'


echo "                         "
echo "*************************"
echo "*   BASEBOARD INFO      *"
echo "*************************"
echo "                         "
echo -e '\033[0;33m Please input MAC address in format XX:XX:XX:XX:XX:XX:     ''\033[0m ' 
re="^([a-fA-F0-9]{2}:){5}[a-fA-F0-9]{2}$"
MAC_IS_VALID=false
while ! $MAC_IS_VALID; do
        read MAC
if [[ $MAC =~ $re ]] 
then
MAC_IS_VALID=true
else
echo -e '\033[1;31m FAILED! Please, try again'
echo -e '\033[0;33m Please input MAC address in format XX:XX:XX:XX:XX:XX:     ''\033[0m ' 
fi
done

#ipmitool lan set 1 macaddr $BMCMAC

echo -e "${G}TEST PASSED"
echo -e "${W}   "
echo "OK">> /home/tester/result.sh

echo -e " MAC address recorded seccessfull"
