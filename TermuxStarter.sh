#!/bin/bash

cd ~

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="StartUp"
TITLE="OS Picker"
MENU="Choose one of the following OS or cancel for termux:"

OPTIONS=(1 "Ubuntu"
         2 "Debian"
         3 "Kali")
         

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            ./start-ubuntu.sh
            ;;
        2)
            ./start-debian.sh
            ;;
        3)
            ./start-kali.sh
            ;;

esac