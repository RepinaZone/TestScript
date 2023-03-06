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
############
Sens(){
        echo " "
                echo -ne  $(ColorGreen '_SENSORS__')
        echo " "
}

MOFRU(){
        echo " "
                echo -ne  $(ColorGreen '_MOTHER FRU__')
        echo " "
}

BMAC(){
        echo " "
                echo -ne  $(ColorGreen '_BMC MAC__')
        echo " "
}

MMAC(){
        echo " "
                echo -ne  $(ColorGreen '_MOTHER MAC__')
        echo " "
}


############
PMI() {
echo -ne "
  --------------------------------------- \n | $(ColorGreen '1)')     Sensors check                 | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '2)')Writing Motherboard FRU information| \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '3)')     Writing MAC address  BMC      | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '4)')  Wtiting MAC address Motherboard  | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '5)')     Back to previous              | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '0)')     Exit                          | \n  ---------------------------------------
$(ColorBlue 'Choose an option :            ') "
        read g
        case $g in
          1) clear ; Sens ;;
          2) clear ; MOFRU ;;
          3) clear ; BMAC ;;
          4) clear ; MMAC ;;
          5) clear ; unem ;;
          0) exit;;
        esac
}
PMI

