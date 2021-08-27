#!/bin/bash
#a script to automate the process of starting an attack box
# sets up directories for the ctf or box
# kn4ve @branch-sec

# sets colors for the prompt to out put

RED="\033[1;31m"
BLUE="\033[0;34m]"
GREEN="\033[0;32m]"
LBLUE="\033[1;34m]"
YELLOW="\033[1;33]"
RESET="\033[0m"

#Sets variables for user input for categories
echo "[+] Helping you set up and keep organized! :) [+]"


read -p "Enter Target Name: " targetName
read -p "Enter $targetName 's Category: " targetCategory
read -p "Enter $targetName 's IP or IP Range " targetIP
#reprompt user for a number if user puts strng in ip
re='^[0-9] + $'
if ! [[$targetIP =~ $re]] ; then
  read -p "$targetName 's IP must be a number " targetIP
fi
