#!/bin/bash
echo -n "Check TPM device ..... "
dmidecode | grep TPM > TPM.txt
a=`grep -c "TPM Device" TPM.txt`
echo $a
if [ $a == 1 ]; then 
  echo -e "\e[0;37;42m OK \e[0m" 
#	echo "TPM detected !! " >> log/tmp.log
#	cat TPM.txt >> log/tmp.log  
else
	echo -e "\e[0;37;41m FAIL !! \e[0m"
#	echo "TPM not detected !! " >> errlog.log
fi

