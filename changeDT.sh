#!/bin/bash

timedatectl set-timezone Europe/Moscow

a=`date +"%Y-%m-%d %H:%M:%S"`
echo -n -e "Current Date/Time is""\e[0;32m $a\e[0m"", "

if [ "$Tmode" == "QC" ];then
  read -p "is it correct Y (Yes)/ N(No) ? " CC
  if [ "$CC" == "N" -o "$CC" == "n" ];then 
    echo "Exit testing ..."
    exit
  fi 
else
  read -p "Do you want to change Y (Yes) / N (No) ? " CC
  if [ "$CC" == "Y" -o "$CC" == "y" ];then
    read -p "Please input new date, format: YYYYMMDD  " D
    NEWD="`echo $D | cut -b 1-4`"-"`echo $D | cut -b 5-6`"-"`echo $D | cut -b 7-8`"    
    read -p "Please input new time, format: HHMM   " T
    NEWT="`echo $T | cut -b 1-2`":"`echo $T | cut -b 3-4`":"00"    
    echo -n "date -s '" > d.sh
    echo -n "$NEWD $NEWT" >> d.sh
    echo "'" >> d.sh
    chmod 777 d.sh

    ./d.sh

    echo
    sleep 1
    clock -w
    sleep 1
    a=`date +"%Y-%m-%d %H:%M:%S"`
    echo -n -e "NEW Date/Time is""\e[0;32m $a\e[0m"", "
    read -p "Press ENTER to continue..."
  fi  
  if [ -f d.sh ];then rm d.sh;fi
fi




