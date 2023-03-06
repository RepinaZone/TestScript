#!/bin/bash
#COLORS
# Color  Variables
##
green='\e[32m'
red='\e[31m'
yellow='\e[33m'
blue='\e[34m'
clear='\e[0m'

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


####


unem() {
echo -ne "
Choose :
  --------------------------------------- \n | $(ColorGreen '1')          System settings          | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '2')          Ipmi tools               | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '3')          Back to previous         | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '0')          Exit                     | \n  ---------------------------------------
$(ColorBlue 'Choose an option :            ') "
        read b
        case $b in
          1) clear ; ./1_1_system_menu.sh; unem ;;
          2) clear; ./1_1_ipmi_menu.sh ; unem ;;
          3) clear ; menu ;;
          0) exit 0 ;;
        esac
}
unem
