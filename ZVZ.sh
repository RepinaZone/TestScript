
#!/bin/bash
#COLORS
# Color  Variables
##
green='\e[32m'
red='\e[31m'
yellow='\e[33m'
blue='\e[34m'
clear='\e[0m'
fat='\e[1;0m'
ocean='\e[1;36m'

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

clear

./logotip.sh

echo -e  $fat "                                                               Developer of domestic commputing platforms             "
echo -e $fat "                                                                                                                                         https://zvezda.ltd"
echo -e $fat "                                                                                                                                         support@zvezda.ltd"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo""
echo -e $ocean "                                                                                                                                Developer of the test script" 
echo -e $ocean "                                                                                                                                    special for ZVEZDA LCC."
echo -e $ocean "                                                                                                                                 https://github.com/RepinaZone "
echo ""
echo ""
echo ""
sleep 1
echo -e $yellow "   " 
read -p "                                                                  Press Enter to start testing programm  "
echo -e $clear ""

clear

./menu.sh
