#!/bin/bash
#COLORS
# Color  Variables
##
green='\e[32m'
red='\e[31m'
yellow='\e[33m'
blue='\e[34m'
clear='\e[0m'
##Color Function
ColorGreen(){
        echo -ne $green$1$clear
}
ColorBlue(){
        echo -ne $blue$1$clear
}
ColorRed(){
        echo -ne $red$1$clear
}
ColorYellow(){
        echo -ne $yellow$1$clear
}

#######
Time(){
        echo " "
                echo -ne  $(ColorGreen 'Please, check Date and Time on system ')
		echo " " 
		./changeDT.sh
        echo " "
}

Net(){
        echo " "
                echo -ne  $(ColorGreen '_SENSORS__')
        echo " "
}

LED(){
        echo " "
                echo -ne  $(ColorGreen '_SENSORS__')
        echo " "
}

TMP(){
        echo " "
                echo -ne  $(ColorGreen '_SENSORS__')
        echo " "
}

SMP(){
        echo " "
                echo -ne  $(ColorGreen '_SENSORS__')
        echo " "
}

MEM() {
	echo ""
		echo -ne $(ColorGreen ' Check memory devices')
		./meminfo.sh
		echo ""
}

check_all() {
	echo " " 
		echo -ne $(ColorGreen' Check all parameters ')
		Time
		Net
		LED
		TMP
		SMB
echo " "
}


######MENU
smen() {
echo -ne "
Choose :
  --------------------------------------- \n | $(ColorGreen '1)')        Setting Date and Time      | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '2)')        Check RAM                  | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '3)')        Check Network              | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '4)')        Check LED on MotherBoard   | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '5)')        TPM module check           | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '6)')        SMBIOS                     | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '7)')        Check all                  | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '8)')        Back to previous           | \n  --------------------------------------- "
#  --------------------------------------- \n | $(ColorGreen '0)')              Exit                 | \n  ---------------------------------------
echo ""
echo -ne "$(ColorBlue 'Choose an option :            ') "
        read d
        case $d in
          1) clear ; Time ; smen ;;
	  2) clear ; MEM ; smen ;;
          3) clear ; Net ; smen ;;
          4) clear ; LED ; smen ;;
          5) clear ; TMP ; smen ;;
          6) clear ; SMB ; smen ;;
          8) clear ; unem ;;
	  7) check_all ; smen ;;
        esac
}
smen
