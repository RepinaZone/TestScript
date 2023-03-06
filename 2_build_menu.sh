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

#########

SN(){
        echo " "
                echo -ne  $(ColorGreen '_SN_')
        echo " "
}

CCPAR(){
        echo " "
                echo -ne  $(ColorGreen '_CCPAR__')
        echo " "
}

stress(){
        echo " "
                echo -ne  $(ColorGreen '_TIP STRESS_NG_')
        echo " "
}


#########
mbuild() {
echo -ne "
Choose :
  --------------------------------------- \n | $(ColorGreen '1)')    Writing Serial numbers (FRU)   | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '2)')    Checking parameters            | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '3)')    Stress test                    | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '4)')    Back to previous               | \n  ---------------------------------------
  --------------------------------------- \n | $(ColorGreen '0)')    Exit                           | \n  ---------------------------------------
$(ColorBlue 'Choose an option :            ') "
        read c
        case $c in
          1) clear ; ./2_2_serial_num.sh ; mbuild ;;
          2) clear ; ./2_2_check_parameters.sh ; mbuild ;;
          3) clear ; ./2_2_stress.sh ; mbuild;;
          4) clear ; ./menu.sh;;
          0) exit;;
        esac
}
mbuild
