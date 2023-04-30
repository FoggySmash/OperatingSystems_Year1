#!/bin/bash

# For backing up a specified folder selected by the user
case5(){
    # Asks user for a folder to back up
    read -p "Enter the folder path you want to back up : " FolderPath

    # Allows to copy, then creates and copies to "BackupFolder"
    chmod +r $FolderPath
    cp -r $FolderPath BackupFolder

    echo " "
    echo "Backup complete."
    echo " "

    # Displays backed up contents
    tree BackupFolder

    echo " "
}

# Ends the script
case6(){
    echo "Goodbye!"
    exit 0
}

# While loop for the menu
while true; do

    # Menu text
    echo " "
    echo " * Bash commands * "
    echo " "
    echo "1. list files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"
    echo " "

    # Reads option selected from user
    read -p "Please select an option : " MenuOption

    echo " "

    # Uses option to fulfil request
    case $MenuOption in

    1) ls -l ;;         # List files
    2) df -h ;;         # Show free disk space
    3) echo $PATH ;;    # Show system path
    4) history ;;       # Show history
    5) case5 ;;         # Backup files
    6) case6 ;;         # exit
    *) echo "invalid request" ;;    # Invalid request
    esac
done