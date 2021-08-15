#!/bin/bash
#a script to automate the process of starting an attack box
# sets up directories for the ctf or box
# kn4ve @branch-sec
# depending on which computer/vm i am on i may need to change out line 33-36 to
# represent your file directory strurure
#TO DO: Write something to detect directory structure


# sets colors for the prompt to out put

RED="\033[1;31m"
BLUE="\033[0;34m]"
GREEN="\033[0;32m]"
LBLUE="\033[1;34m]"
YELLOW="\033[1;33]"
RESET="\033[0m"

#Sets variables for user input for categories
echo oe  "{$YELLOW}[+] Helping you set up and keep organized! :) [+] {$RESET}"


read -p "Enter Target Name: " targetName
read -p "Enter $targetName 's Host (HTB, THM, etc.): " targetHost
read -p "Enter $targetName 's IP or IP Range " targetIP
#reprompt user for a number if user puts strng in ip
#TO DO: figure out how to detect whether it is an ip
#re='^[0-9] + $'
#if ![[$targetIP =~ $re]] 2>/dev/null ; then
#  read -p "$targetName 's IP must be a number " targetIP
#fi

# Create the directory structure for the target
#set variable for paths
targetDir=/Users/mattn/Targets/$targetHost/$targetName
hostDir=/Users/mattn/Targets/$targetHost
shareDir=/Users/mattn/Targets/$targetHost/$targetName/www
echo -e "{$LBLUE} [...] Creating Directories for $targetName [...] {$RESET}"

if [ ! -d hostDir ];then
  mkdir $hostDir
fi

if [ ! -d $targetDir ];then
  mkdir $targetDir
fi

if [ ! -d $shareDir ];then
  mkdir $shareDir
fi
echo -e "{$GREEN} [+] Directories Complete [+] {$RESET}"


# network section must be on the internet and running nmap
# ping the target ip to check if its up
echo -e "{$LBLUE}[...] Checking to see if $targetName is receiving pings [...] {$RESET} "

while ! ping -c5 $targetIP &>/dev/null
        do echo -e "{$RED} [X] $targetName seems to be down or blocking pings [X] {$RESET }"
        do
done
echo -e " {$GREEN} [+]$targetName is up and ready to be scanned! [+] {$RESET}"

# start an nmap scan on the ip address
#nmap -v -sS -A $targetIP -p- -T4 -oA $targetDir/nmap.txt
