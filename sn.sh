#!/bin/bash
echo -e '\e[36;1;40m Write serial number of the server \e[0m'
#echo -e '\e[0m        '
>result.txt
sleep 1

python3 ./serial.py
M=$(cat result.txt)
echo "       "
echo "       "

echo $M
read -p " Please y(yes)/(no) if this value is true ? " QQ
if [ "$QQ" == "N" -o "$QQ" == "n" ]; then
 echo -e " Please, try again \n    "
 sleep 2 && ./sn.sh 
else
	echo "GOOD JOB! Working!"

fi


