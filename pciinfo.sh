#!/bin/bash
echo "*************************"
echo "*      PCI INFO         *"
echo "*************************"
echo "                         "


#lspci |grep "SATA\|Huawei\|10GB\|Mollex\|Broadcom\|GEEFORCE" | awk '{print $2 " " $3 " " $4 " " $5 " "$6 " "$7 " " $8}' | uniq
#lspci |grep "SATA\|10GB\|Mollex\|Broadcom\|GEEFORCE" | awk '{print $2 " " $4 " " $5 " "$6 " "$7 " " $8 " " $10}'
#COUNT=`lspci |grep "SATA\|Huawei\|10GB\|Mollex\|Broadcom\|GEEFORCE" | awk '{print $2 " " $3 " " $4 " " $5 " "$6 " "$7 " " $8}' | uniq | wc -l`

#lspci | grep "GK208B\|1030\|Broadcom\|Adaptec" | awk '{print $2 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}'
#lspci | grep "GK208B\|GT 1030\|Broadcom\|Adaptec\|Emullex\|Melanox" | awk '{print $2 " " $3 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}' | uniq
lspci | grep "GK208B\|GT 1030\|Adaptec\|Emulex\|Mellanox" | awk '{print $2 " " $3 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}' && lspci | grep 'Broadcom' | awk '{print  $4 " " $5 " " $7 " " $9" " $10}' | uniq
#lspci | grep "GK208B\|GT 1030\|Adaptec\|Emulex\|Mellanox" | awk '{print $2 " " $3 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}' && lspci | grep 'Broadcom' | awk '{print  $4 " " $5 " " $7 " " $9" " $10}' | uniq |wc -l
#lspci | grep "GK208B\|GT 1030\|Broadcom\|Adaptec\|Emullex\|Melanox" | awk '{print $2 " " $3 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}' | uniq | wc -l
sleep 1

#COUNT=`lspci | grep "GK208B\|1030" | awk '{print $2 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}' | wc -l`
#COUNT=`lspci | grep "GK208B\|GT 1030\|Broadcom\|Adaptec\|Emulex\|Mellanox" | awk '{print $2 " " $3 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}' | wc -l `
A=`lspci | grep "GK208B\|GT 1030\|Adaptec\|Emulex\|Mellanox" | awk '{print $2 " " $3 " " $4 " " $5 " " $7 " " $8 " "$9 " "$10}' | wc -l`
B=`lspci | grep 'Broadcom' | awk '{print  $4 " " $5 " " $7 " " $9" " $10}' | uniq | wc -l`
COUNT=A+B
if ((COUNT == 6))
 then
  echo -e "\e[1;32m TEST PASSED" 
  echo "OK">> /home/tester/result.sh
 else
  echo -e "\e[1;31m TEST NOT PASSED" 
  echo "NOT">> /home/tester/result.sh
fi


#dmidecode -t slot | awk '/\tDesignation/{i++;print "Slot "i}/\tType|\tDesognation/'
#dmidecode -t slot | grep -w "Designation\|Type"
#dmidecode -t slot | grep "Type"
