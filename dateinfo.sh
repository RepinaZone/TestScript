#!/bin/bash
echo " *************************"
echo " *        DATE           *"
echo " *************************"

hwclock -w
date
DATE=`date`
if [ "$DATE" = "`date`" ]
 then 
  echo -e "\e[1;32m TEST PASSED \033[0m "
 else
  echo -e "\e[1;31m TEST NOT PASSED \033[0m "
fi
