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

######MENU


menu() {
echo -ne "
What kind fo testing will be carried out?
----------------------------------------- 
  --------------------------------------- \n | $(ColorGreen '1)')Initail testing of the motherboard | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '2)')     Testing server build          | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '0)')           Exit                    | \n  ---------------------------------------
$(ColorBlue 'Choose an option :            ') "
        read a
        case $a in
          1) clear ; ./1_first_menu.sh ; menu ;;
          2) clear ; ./2_build_menu.sh ; menu ;;
          0) exit;
        esac
}
menu
