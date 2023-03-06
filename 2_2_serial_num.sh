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
SN(){
echo -ne"
  --------------------------------------- \n | $(ColorGreen '1)')      Writing FRU Chasiss          | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '2)')      Writing FRU Product          | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '3)')      Back to previous             | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '0)')      Exit                         | \n  ---------------------------------------
$(ColorBlue 'Choose an option :            ') "
        read z
        case $z in
          1) clear ; ./2a_chasiss_fru.sh ; mbuild ;;
          2) clear ; ./2a_product_fru.sh ; mbuild ;;
          3) clear ; mbuild ;;
          0) exit;;
        esac
}
SN

