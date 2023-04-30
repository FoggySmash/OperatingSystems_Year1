#!/bin/bash

caseq(){
    echo "Goodbye!"
    exit 0
}

while true; do

    echo " "
    echo "1. Disk usage"
    echo "2. Uptime"
    echo "3. Logged users"
    echo "enter "q" to quit"
    echo " "

    read -p "Please select an option : " Option

    echo " "

    case $Option in
        1) df ;;
        2) uptime ;;
        3) who ;;
        q) caseq;;
        *) echo "Invalid option." ;;
    esac 
done