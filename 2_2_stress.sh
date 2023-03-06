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
