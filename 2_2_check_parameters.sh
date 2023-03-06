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
CCPAR() {
echo -ne "
  --------------------------------------- \n | $(ColorGreen '1)')     Check LED on front panel      | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '2)')     Check button on front panel   | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '3)')     Check the fans                | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '4)')     Check psu                     | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '5)')     Check USB devices             | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '6)')     Check disks on backplane      | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '7)')     Back to previous              | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '0)')     Exit                          | \n  ---------------------------------------
$(ColorBlue 'Choose an option :            ') "
        read g
        case $g in
          1) clear ; ./2b_led_morda.sh ; ./2_build_menu.sh ;;
          2) clear ; ./2b_button.sh ; ./2_build_menu.sh ;;
          3) clear ; ./2b_collers.sh ; ./2_build_menu.sh ;;
          4) clear ; ./2b_psu.sh ; ./2_build_menu.sh ;;
          5) clear ; ./2b_usb.sh ; ./2_build_menu.sh ;;
          6) clear ; ./2b_backplane.sh ; ./2_build_menu.sh ;;
          7) clear ; ./2_build_menu.sh ;;
          0) exit;;
        esac
}
CCPAR
